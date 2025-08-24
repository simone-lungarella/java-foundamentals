# Methods

In Java, a method is a block of code designed to perform a specific task. Methods are declared within a class and are executed when they are called, or invoked. They are a cornerstone of well-structured and reusable code.

## Defining a Method

A method definition includes several components. It starts with an access modifier, such as `public` or `private`, which controls the method's visibility. This is followed by the return type, which specifies the data type of the value the method will return. If the method does not return any value, the `void` keyword is used. The method name is a unique identifier for the method. Optionally, a method can accept a list of input values, known as parameters. The code to be executed is contained within the method body.

```java
public class MyClass {

    public void greet(String name) {
        // Method body
        System.out.println("Hello, " + name);
    }
}
```

## Calling a Method

To execute a method, you typically need to create an object of the class to which the method belongs, unless the method is declared as `static`. Once you have an object, you can call the method on it.

```java
public class Main {
    public static void main(String[] args) {
        MyClass myObject = new MyClass(); // Create an instance of MyClass
        myObject.greet("George");         // Call the greet method
    }
}
```

## Parameters

Parameters are variables that allow you to pass input values to a method. This makes methods more flexible and reusable. For example, a method to add two numbers would accept two integer parameters.

```java
public int add(int a, int b) {
    return a + b; // Returns the sum of the two parameters
}

// To call this method:
int sum = add(5, 10); // The variable 'sum' will be assigned the value 15
```

## Pass by Value vs. Pass by Reference

When passing arguments to methods, it's important to understand that Java is strictly a **pass-by-value** language. This means that when a method is called, a copy of the value of each argument is passed to the method's parameters.

- **For primitive types** (like `int`, `double`, `boolean`), the value itself is copied. Any changes made to the parameter inside the method will not affect the original variable outside the method.

- **For object types**, the value being passed is the reference to the object, not the object itself. This reference is also passed by value, meaning a copy of the reference is created. As a result, the method can modify the object's internal state, and these changes will be reflected outside the method. However, if the method reassigns the parameter to a new object, this will not affect the original object reference.


## Return Values

Methods can return a value to the caller using the `return` keyword. The data type of the returned value must match the method's declared return type. If a method is declared with a `void` return type, it does not return a value and the `return` keyword is used only to exit the method.

```java
// This method returns a String
public String getGreeting() {
    return "Hello, World!";
}

// This method does not return a value
public void printMessage() {
    System.out.println("This is a message.");
}
```
