# Variables in Java

In Java, variables are fundamental containers used for storing data. Every variable must have a declared type, which dictates the kind of values it can hold.

## Primitive Types

Java provides eight primitive data types, which are the most basic building blocks for data manipulation. These include `byte`, `short`, `int`, and `long` for integer values of increasing size. For decimal numbers, Java offers `float` and `double`. The `char` type is used for single Unicode characters, and the `boolean` type can only hold the values `true` or `false`.

Here are a few examples of declaring and initializing variables with primitive types:

```java
int age = 25;
double price = 19.99;
boolean isJavaFun = true;
char grade = 'A';
```

## Reference Types

In addition to primitive types, Java has reference types, which are used to refer to objects. The most common reference type is `String`, which is used for sequences of characters. Unlike primitive types, reference types are typically created with the `new` keyword, although `String` has special support that allows for simpler initialization.

```java
String name = "Simone";
```

## Declaring and Initializing

A variable can be declared first and then assigned a value later in the program. For instance, you can declare an integer variable `number` and then initialize it with the value `42` on a separate line. Alternatively, it is often more convenient to declare and initialize a variable in a single step.

```java
// Declaration and initialization in two steps
int number;
number = 42;

// Declaration and initialization in one step
int anotherNumber = 42;
```

## Type Casting

There are times when you need to convert a value from one data type to another. This process is known as type casting. A "widening" conversion, where you convert to a larger data type (e.g., from `int` to `double`), is considered safe and is performed automatically by Java. However, a "narrowing" conversion, where you might lose information (e.g., from `double` to `int`), requires an explicit cast to inform the compiler that you are aware of the potential data loss.

```java
// Widening conversion (automatic)
int x = 10;
double y = x;  // The int value is safely converted to a double

// Narrowing conversion (explicit cast required)
double a = 9.78;
int b = (int) a;  // The double is truncated to an int, resulting in b = 9
```