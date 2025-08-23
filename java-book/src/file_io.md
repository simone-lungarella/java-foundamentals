# File I/O

File I/O (Input/Output) in Java is used to read from and write to files. The `java.io` package provides a set of classes for handling file operations.

## Reading a File

You can use the `BufferedReader` class to read a file line by line.

```java
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class ReadFileExample {
    public static void main(String[] args) {
        try (BufferedReader reader = new BufferedReader(new FileReader("example.txt"))) {
            String line;
            while ((line = reader.readLine()) != null) {
                System.out.println(line);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
```

## Writing to a File

You can use the `BufferedWriter` class to write to a file.

```java
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

public class WriteFileExample {
    public static void main(String[] args) {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter("output.txt"))) {
            writer.write("Hello, World!");
            writer.newLine();
            writer.write("This is a new line.");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
```
