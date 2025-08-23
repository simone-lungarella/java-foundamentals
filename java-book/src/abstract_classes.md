# Abstract Classes

In Java, an abstract class is a class that cannot be instantiated on its own and must be subclassed. It serves as a blueprint for other classes, providing a common interface and shared implementation. Abstract classes are declared with the `abstract` keyword.

## Abstract Methods

An abstract class can contain abstract methods, which are methods that are declared without an implementation. Subclasses are required to provide an implementation for these methods.

```java
public abstract class Animal {
    // Abstract method (does not have a body)
    public abstract void makeSound();

    // Regular method
    public void sleep() {
        System.out.println("Zzz");
    }
}
```

## Subclassing an Abstract Class

To use an abstract class, you must create a subclass that extends it. The subclass must provide an implementation for all of the abstract methods in the parent class.

```java
public class Dog extends Animal {
    public void makeSound() {
        System.out.println("Woof");
    }
}
```
