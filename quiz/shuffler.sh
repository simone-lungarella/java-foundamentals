#!/bin/bash

# Quiz Randomizer Script
# Generates multiple randomized versions of a markdown quiz to prevent collaboration

set -e

# Default values
NUM_VERSIONS=5
SHUFFLE_QUESTIONS=true
SHUFFLE_ANSWERS=true
INPUT_FILE=""
OUTPUT_DIR="quiz_versions"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to display usage
usage() {
    echo -e "${BLUE}Quiz Randomizer - Generate multiple quiz versions${NC}"
    echo ""
    echo "Usage: $0 -i INPUT_FILE [OPTIONS]"
    echo ""
    echo "Required:"
    echo "  -i FILE     Input markdown file containing the quiz"
    echo ""
    echo "Options:"
    echo "  -n NUM      Number of versions to generate (default: 5)"
    echo "  -o DIR      Output directory (default: quiz_versions)"
    echo "  --no-shuffle-questions   Don't shuffle question order"
    echo "  --no-shuffle-answers     Don't shuffle answer choices"
    echo "  -h          Show this help message"
    echo ""
    echo "Example:"
    echo "  $0 -i quiz.md -n 10 -o my_quizzes"
    echo ""
}

# Function to shuffle lines
shuffle_lines() {
    shuf
}

# Function to extract questions from markdown
parse_quiz() {
    local file="$1"
    local temp_dir=$(mktemp -d)
    local question_num=0
    local current_file=""
    
    # Split questions into separate files, preserving everything between ## headers
    while IFS= read -r line; do
        if [[ "$line" =~ ^##[[:space:]] ]]; then
            # Start of a new question
            if [ -n "$current_file" ]; then
                # Close previous question file if it exists
                exec {fd}>&-
            fi
            ((question_num++))
            current_file="$temp_dir/question_$question_num.md"
            # Open file descriptor for writing
            exec {fd}>"$current_file"
            echo "$line" >&${fd}
        elif [ -n "$current_file" ]; then
            # We're inside a question, write everything to the current file
            echo "$line" >&${fd}
        fi
    done < "$file"
    
    # Close the last file descriptor if it's open
    if [ -n "$current_file" ]; then
        exec {fd}>&-
    fi
    
    echo "$temp_dir"
}

# Function to shuffle answers within a question
shuffle_question_answers() {
    local question_file="$1"
    local temp_file=$(mktemp)
    local answers=()
    
    # Read the file and separate question content from answers
    while IFS= read -r line; do
        if [[ "$line" =~ ^-\ \[.*\].* ]]; then
            # This is an answer choice - collect it
            answers+=("$line")
        else
            # This is question content - write it directly
            echo "$line" >> "$temp_file"
        fi
    done < "$question_file"
    
    # Add answers (shuffled or not)
    if [ "$SHUFFLE_ANSWERS" = true ] && [ ${#answers[@]} -gt 0 ]; then
        printf '%s\n' "${answers[@]}" | shuffle_lines >> "$temp_file"
    elif [ ${#answers[@]} -gt 0 ]; then
        printf '%s\n' "${answers[@]}" >> "$temp_file"
    fi
    
    cat "$temp_file"
    rm "$temp_file"
}

# Function to generate a single quiz version
generate_version() {
    local version_num="$1"
    local questions_dir="$2"
    local output_file="$3"
    
    local question_files=()
    
    # Get all question files
    for file in "$questions_dir"/question_*.md; do
        [ -f "$file" ] && question_files+=("$file")
    done
    
    # Sort question files numerically
    IFS=$'\n' question_files=($(sort -V <<< "${question_files[*]}"))
    
    # Shuffle questions if enabled
    if [ "$SHUFFLE_QUESTIONS" = true ]; then
        IFS=$'\n' question_files=($(printf '%s\n' "${question_files[@]}" | shuffle_lines))
    fi
    
    # Generate the quiz
    echo "# Valutazione" >> "$output_file"
    echo "" >> "$output_file"
    echo "## Istruzioni per la compilazione" >> "$output_file"
    echo "" >> "$output_file"
    echo "**Nome:** ________________  " >> "$output_file"
    echo "**Cognome:** ________________  " >> "$output_file"
    echo "**Data:** ________________" >> "$output_file"
    echo "" >> "$output_file"
    echo "Per completare questa valutazione, edita direttamente questo file markdown inserendo una **x** tra le parentesi quadre della risposta corretta per ogni domanda. Ad esempio:" >> "$output_file"
    echo "- [x] Questa è la risposta corretta" >> "$output_file"
    echo "- [ ] Questa è una risposta sbagliata" >> "$output_file"
    echo "" >> "$output_file"
    echo "Assicurati di inserire i tuoi dati personali negli spazi indicati sopra prima di iniziare. Salva il file una volta completato e consegnalo secondo le modalità indicate." >> "$output_file"
    echo "" >> "$output_file"
    echo "---" >> "$output_file"
    echo "" >> "$output_file"
    
    local q_num=1
    for question_file in "${question_files[@]}"; do
        # Process each question (potentially shuffling answers)
        local processed_question=$(shuffle_question_answers "$question_file")
        
        # Add question number and clean up extra blank lines
        echo "$processed_question" | sed "s/^##[[:space:]]/## Q$q_num. /" >> "$output_file"
        
        # Add single blank line between questions (except after the last one)
        if [ $q_num -lt ${#question_files[@]} ]; then
            echo "" >> "$output_file"
        fi
        
        ((q_num++))
    done
}

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        -i|--input)
            INPUT_FILE="$2"
            shift 2
            ;;
        -n|--num-versions)
            NUM_VERSIONS="$2"
            shift 2
            ;;
        -o|--output-dir)
            OUTPUT_DIR="$2"
            shift 2
            ;;
        --no-shuffle-questions)
            SHUFFLE_QUESTIONS=false
            shift
            ;;
        --no-shuffle-answers)
            SHUFFLE_ANSWERS=false
            shift
            ;;
        -h|--help)
            usage
            exit 0
            ;;
        *)
            echo -e "${RED}Unknown option: $1${NC}"
            usage
            exit 1
            ;;
    esac
done

# Validate inputs
if [ -z "$INPUT_FILE" ]; then
    echo -e "${RED}Error: Input file is required${NC}"
    usage
    exit 1
fi

if [ ! -f "$INPUT_FILE" ]; then
    echo -e "${RED}Error: Input file '$INPUT_FILE' not found${NC}"
    exit 1
fi

if ! command -v shuf &> /dev/null; then
    echo -e "${RED}Error: 'shuf' command not found. Please install it.${NC}"
    echo "On macOS: brew install coreutils"
    echo "On Ubuntu/Debian: apt-get install coreutils"
    exit 1
fi

# Validate number of versions
if ! [[ "$NUM_VERSIONS" =~ ^[1-9][0-9]*$ ]] || [ "$NUM_VERSIONS" -gt 100 ]; then
    echo -e "${RED}Error: Number of versions must be between 1 and 100${NC}"
    exit 1
fi

# Create output directory
mkdir -p "$OUTPUT_DIR"

echo -e "${BLUE}Quiz Randomizer${NC}"
echo "=================="
echo -e "Input file: ${GREEN}$INPUT_FILE${NC}"
echo -e "Output directory: ${GREEN}$OUTPUT_DIR${NC}"
echo -e "Number of versions: ${GREEN}$NUM_VERSIONS${NC}"
echo -e "Shuffle questions: ${GREEN}$SHUFFLE_QUESTIONS${NC}"
echo -e "Shuffle answers: ${GREEN}$SHUFFLE_ANSWERS${NC}"
echo ""

# Parse the original quiz
echo -e "${YELLOW}Parsing quiz...${NC}"
questions_dir=$(parse_quiz "$INPUT_FILE")
question_count=$(find "$questions_dir" -name "question_*.md" | wc -l)

if [ "$question_count" -eq 0 ]; then
    echo -e "${RED}Error: No questions found in the input file${NC}"
    echo "Make sure your quiz follows the format:"
    echo "## Question text here"
    echo "- [ ] Answer option 1"
    echo "- [x] Correct answer"
    echo "- [ ] Answer option 3"
    rm -rf "$questions_dir"
    exit 1
fi

echo -e "${GREEN}Found $question_count questions${NC}"

# Generate quiz versions
echo -e "${YELLOW}Generating $NUM_VERSIONS quiz versions...${NC}"
for ((i=1; i<=NUM_VERSIONS; i++)); do
    output_file="$OUTPUT_DIR/quiz_version_$i.md"
    generate_version "$i" "$questions_dir" "$output_file"
    echo -e "${GREEN}✓${NC} Generated version $i"
done

# Create a summary file
cat > "$OUTPUT_DIR/README.md" << EOF
# Quiz Versions Summary

Generated on: $(date)
Input file: $INPUT_FILE
Number of versions: $NUM_VERSIONS
Questions shuffled: $SHUFFLE_QUESTIONS
Answers shuffled: $SHUFFLE_ANSWERS
Total questions per quiz: $question_count

## Files Generated:
- \`quiz_version_1.md\` through \`quiz_version_$NUM_VERSIONS.md\` - Randomized quiz versions
- \`README.md\` - This summary file

## Usage:
Distribute different versions to students to prevent collaboration while maintaining the same question content.
EOF

# Cleanup
rm -rf "$questions_dir"

echo ""
echo -e "${GREEN}✅ Successfully generated $NUM_VERSIONS quiz versions!${NC}"
echo -e "Files saved in: ${GREEN}$OUTPUT_DIR/${NC}"
echo ""
echo -e "${BLUE}File list:${NC}"
ls -la "$OUTPUT_DIR"
