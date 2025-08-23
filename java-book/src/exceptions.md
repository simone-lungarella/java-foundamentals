# Exceptions

In Java, an exception is an event that occurs during the execution of a program and disrupts its normal flow. When an error is encountered within a method, the method creates an exception object, which contains information about the error, and hands it off to the runtime system.

## Exception Handling

Java provides a robust mechanism for handling exceptions using the `try`, `catch`, and `finally` keywords. This allows you to gracefully manage errors and prevent your program from crashing.

### The `try-catch` Block

The `try` block is used to enclose a section of code that might throw an exception. If an exception occurs within the `try` block, the program looks for a corresponding `catch` block to handle it. The `catch` block contains the code that is executed to manage the exception.

```java
public class Main {
    public static void main(String[] args) {
        try {
            // This code may cause an exception
            int[] myNumbers = {1, 2, 3};
            System.out.println(myNumbers[10]); // This will throw an ArrayIndexOutOfBoundsException
        } catch (ArrayIndexOutOfBoundsException e) {
            // This code handles the exception
            System.out.println("An error occurred: the index is out of bounds.");
            System.out.println("Error message: " + e.getMessage());
        }
    }
}
```

### The `finally` Block

The `finally` block is an optional block that is always executed, regardless of whether an exception was thrown or caught. It is typically used for cleanup operations, such as closing files or releasing database connections, to ensure that resources are properly managed.

```java
public class Main {
    public static void main(String[] args) {
        try {
            int[] myNumbers = {1, 2, 3};
            System.out.println(myNumbers[10]);
        } catch (ArrayIndexOutOfBoundsException e) {
            System.out.println("An error occurred.");
        } finally {
            System.out.println("The 'try-catch' block has finished execution.");
        }
    }
}
```

## Common Exception Types

Java has a wide range of built-in exception types. Some of the most common ones you will encounter include `ArrayIndexOutOfBoundsException`, which occurs when you try to access an array with an invalid index; `NullPointerException`, which is thrown when you try to use a variable that is not pointing to any object; `ArithmeticException`, which indicates an exceptional arithmetic condition, such as dividing by zero; and `FileNotFoundException`, which is thrown when a specified file cannot be found.
