# Java Development Fundamentals
## Getting Started with Java, Maven & Git

Welcome to your development journey!

---

# What We'll Cover Today

- Java Basics & Why It Matters
- Maven: Your Build Tool Friend
- Git: Version Control Essentials
- Putting It All Together
- Next Steps

---

# Java: The Foundation

## What is Java?
- Popular programming language
- "Write once, run anywhere"
- Used by millions of developers worldwide
- Powers everything from mobile apps to enterprise systems

## Key Concepts
- **Classes & Objects** - Building blocks of your code
- **Methods** - Functions that do specific tasks
- **Packages** - Organize your code

---

# Your First Java Program

```java
public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello, World!");
    }
}
```

## What's happening here?
- `public class` - Creates a new class
- `main` method - Entry point of your program
- `System.out.println` - Prints text to console

---

# Maven: Your Build Assistant

## What is Maven?
- Build automation tool for Java projects
- Manages dependencies (external libraries)
- Standardizes project structure
- Makes compilation and packaging easy

## Why Use Maven?
- No more manual JAR management
- Consistent project structure
- Easy to share projects with others

---

# Maven Project Structure

```
my-project/
├── pom.xml
└── src/
    ├── main/
    │   └── java/
    └── test/
        └── java/
```

## Key Files
- `pom.xml` - Project configuration
- `src/main/java/` - Your source code
- `src/test/java/` - Your tests

---

# Essential Maven Commands

```bash
# Create new project
mvn archetype:generate

# Compile your code
mvn compile

# Run tests
mvn test

# Build JAR file
mvn package

# Clean build artifacts
mvn clean
```

---

# Git: Your Time Machine

## What is Git?
- Version control system
- Tracks changes in your code
- Allows collaboration with others
- Never lose your work again!

## Core Concepts
- **Repository** - Your project folder
- **Commit** - Save a snapshot of your changes
- **Branch** - Parallel development line
- **Remote** - Code stored on server (like GitHub)

---

# Basic Git Workflow

```bash
# Initialize repository
git init

# Add files to staging
git add .

# Commit changes
git commit -m "Your message here"

# Check status
git status

# View history
git log
```

---

# Git Best Practices

## Commit Messages
- Be clear and descriptive
- Use present tense: "Add login feature"
- Keep it under 50 characters for the title

## When to Commit
- After completing a small feature
- Before trying something risky
- At the end of each work session

---

# Putting It All Together

## Typical Development Workflow
1. Create Maven project
2. Initialize Git repository
3. Write code
4. Test with `mvn test`
5. Commit changes to Git
6. Build with `mvn package`
7. Repeat!

---

# Common Beginner Mistakes

## Java
- Forgetting semicolons `;`
- Case sensitivity issues
- Not handling exceptions

## Maven
- Wrong directory structure
- Forgetting to update `pom.xml`
- Not running `mvn clean` when things break

## Git
- Not committing regularly
- Vague commit messages
- Working directly on main branch

---

# Your Development Environment

## Essential Tools
- **IDE**: IntelliJ IDEA, Eclipse, or VS Code
- **JDK**: Java Development Kit (version 11 or later)
- **Maven**: Usually bundled with IDE
- **Git**: Command line or GUI client

## Pro Tip
Start with an IDE that has everything integrated!

---

# Next Steps

## Practice Projects
1. Calculator application
2. To-do list manager
3. Simple web service with Spring Boot

## Learning Resources
- Oracle Java Tutorials
- Maven Getting Started Guide
- Git documentation and tutorials
- Stack Overflow (your best friend!)

## Remember
- Practice daily
- Don't be afraid to break things
- Ask questions
- Read error messages carefully

---

# Questions?

## Remember
- Every expert was once a beginner
- Google and Stack Overflow are your friends
- Practice makes perfect
- Don't hesitate to ask for help!

**Happy coding!** 🚀
