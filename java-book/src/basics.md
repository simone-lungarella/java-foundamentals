# Java Basics

This chapter introduces the fundamental building blocks of the Java language, providing a foundation for writing your first programs.

## Basic Syntax

At the core of every Java program is a **class**. The execution of a program begins in the `main` method, which serves as the entry point. It is important to be mindful of Java's syntax rules. The language is case-sensitive, meaning that `myVariable` and `MyVariable` would be treated as two distinct variables. By convention, class names should always begin with an uppercase letter, while method names should start with a lowercase letter.

## "Hello, World!" Example

The simplest program you can write in Java is the classic "Hello, World!". This program's sole purpose is to print the phrase "Hello, World!" to the console.

```java
public class HelloWorld {
    public static void main(String[] args) {
        // This line prints "Hello, World!"
        System.out.println("Hello, World!");
    }
}
```

Let's break down this example. The line `public class HelloWorld` declares a class named `HelloWorld`, and the file containing this code must be saved as `HelloWorld.java`. The `main` method, declared as `public static void main(String[] args)`, is where the program's execution starts. The statement `System.out.println("Hello, World!");` is responsible for printing the text to the console. The lines starting with `//` are single-line comments, which are ignored by the compiler.

## Java Comments

Comments are essential for explaining code and improving its readability. The Java compiler ignores them entirely. There are three types of comments in Java. Single-line comments start with `//`. Multi-line comments begin with `/*` and end with `*/`. Finally, Javadoc comments, which start with `/**` and end with `*/`, are used to generate documentation for your code.

```java
// This is a single-line comment.

/*
This is a
multi-line
comment.
*/

/**
 * This is a Javadoc comment, used for generating documentation.
 */
```
