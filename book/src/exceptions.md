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

## Try With Resources

`finally` blocks are often used to handle cleanup operations. For example, it's common to close a resource, but this can lead to verbose and nested code, especially when the cleanup operation itself can throw an exception.

The `try-with-resources` statement, introduced in Java 7, simplifies this process by ensuring that each resource is closed at the end of the statement. A resource is an object that must be closed after the program is finished with it, such as a file or a database connection.

Any object that implements the `java.lang.AutoCloseable` interface can be used as a resource.

Here is an example of using `try-with-resources` to read from a file:

```java
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class Main {
    public static void main(String[] args) {
        try (BufferedReader br = new BufferedReader(new FileReader("file.txt"))) {
            String line;
            while ((line = br.readLine()) != null) {
                System.out.println(line);
            }
        } catch (IOException e) {
            System.out.println("An I/O error occurred: " + e.getMessage());
        }
    }
}
```

In this example, the `BufferedReader` is declared within the `try` statement. It is automatically closed when the `try` block is exited, whether normally or due to an exception. This makes the code more concise and readable, and it prevents resource leaks.

## Common Exception Types

Java has a wide range of built-in exception types. Some of the most common ones you will encounter include `ArrayIndexOutOfBoundsException`, which occurs when you try to access an array with an invalid index; `NullPointerException`, which is thrown when you try to use a variable that is not pointing to any object; `ArithmeticException`, which indicates an exceptional arithmetic condition, such as dividing by zero; and `FileNotFoundException`, which is thrown when a specified file cannot be found.

> Custom exceptions can be created to handle domain-specific errors related to the software written.
