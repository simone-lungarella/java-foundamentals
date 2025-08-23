# Control Flow in Java

Control flow statements are essential tools in Java that allow you to dictate the execution path of your code. These statements enable you to run certain blocks of code based on specific conditions and to repeat actions using loops.

## Conditional Statements

Conditional statements allow a program to make decisions. The `if-else` statement is the most common conditional structure. It executes a block of code if a specified condition is true, and a different block if it is false. You can also chain multiple conditions using `else if`.

```java
int number = 10;

if (number > 0) {
    System.out.println("The number is positive.");
} else if (number < 0) {
    System.out.println("The number is negative.");
} else {
    System.out.println("The number is zero.");
}
```

Another useful conditional statement is the `switch` statement, which is ideal for situations where you need to test a variable against a series of possible values.

```java
int day = 3;
String dayString;

switch (day) {
    case 1:  dayString = "Monday";
             break;
    case 2:  dayString = "Tuesday";
             break;
    case 3:  dayString = "Wednesday";
             break;
    default: dayString = "An other day";
             break;
}
System.out.println(dayString); // Outputs "Wednesday"
```

## Loops

Loops are used to execute a block of code repeatedly. The `for` loop is commonly used when you know in advance how many times you want to iterate.

```java
for (int i = 0; i < 5; i++) {
    System.out.println("Iteration: " + i);
}
```

The `while` loop is suitable for situations where you want to continue iterating as long as a certain condition remains true.

```java
int i = 0;
while (i < 5) {
    System.out.println("Iteration: " + i);
    i++;
}
```

A variation of the `while` loop is the `do-while` loop, which guarantees that the code block is executed at least once, as the condition is checked at the end of the iteration.

```java
int j = 0;
do {
    System.out.println("Iteration: " + j);
    j++;
} while (j < 5);
```

## Break and Continue

Within loops, you can use the `break` statement to exit the loop entirely, or the `continue` statement to skip the current iteration and proceed to the next one.

```java
for (int i = 0; i < 5; i++) {
    if (i == 2) {
        continue;  // Skip the rest of the code for i = 2
    }
    if (i == 4) {
        break;     // Exit the loop when i = 4
    }
    System.out.println(i);
}
```