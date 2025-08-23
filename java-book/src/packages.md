# Packages

In Java, packages are used to group related classes and interfaces into a single namespace. They are analogous to folders in a file directory and are a crucial mechanism for organizing code, preventing naming conflicts, and improving code maintainability.

## Creating a Package

To place a class within a package, you use the `package` keyword at the very beginning of your Java source file. The package name typically follows a hierarchical naming pattern. For example, to create a package named `com.example.myapp`, you would have a corresponding directory structure `src/com/example/myapp`, and the Java files within that directory would start with the `package com.example.myapp;` declaration.

```java
// This file would be located at src/com/example/myapp/MyClass.java
package com.example.myapp;

public class MyClass {
    // ...
}
```

## Using a Class from Another Package

To use a class that resides in a different package, you must first import it using the `import` keyword. You have the option to import a single, specific class or all the classes within a package.

### Importing a Single Class

To import a specific class, you provide its fully qualified name in the `import` statement.

```java
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner myScanner = new Scanner(System.in);
        // ...
    }
}
```

### Importing an Entire Package

If you need to use multiple classes from the same package, you can import all of them at once using the `*` wildcard.

```java
import java.util.*;

public class Main {
    public static void main(String[] args) {
        ArrayList<String> list = new ArrayList<>();
        Scanner myScanner = new Scanner(System.in);
        // ...
    }
}
```

## Built-in Packages

Java provides a rich standard library organized into numerous built-in packages. Some of the most frequently used packages include `java.lang`, which contains fundamental classes and is automatically imported into every Java program; `java.util`, which provides the collections framework and other utility classes; `java.io` for input and output operations; `java.net` for networking; and `java.awt` for creating graphical user interfaces.
