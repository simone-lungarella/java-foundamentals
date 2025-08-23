# Interfaces

In Java, an interface is a reference type that is similar to a class but is a collection of abstract methods. An interface defines a "contract" that other classes can agree to follow. When a class implements an interface, it must provide an implementation for all the methods defined in that interface.

## Defining an Interface

An interface is defined using the `interface` keyword. The methods declared in an interface are abstract by default, meaning they do not have a body. Similarly, any attributes declared in an interface are automatically `public`, `static`, and `final`.

```java
interface Animal {
    // These methods are implicitly public and abstract
    void emitSound();
    void sleep();
}
```

## Implementing an Interface

A class can implement an interface using the `implements` keyword. When a class implements an interface, it must provide a concrete implementation for all the methods declared in that interface. This ensures that the class adheres to the contract defined by the interface.

```java
// The Pig class implements the Animal interface
class Pig implements Animal {
    // Provide an implementation for the emitSound method
    public void emitSound() {
        System.out.println("The pig says: wee wee");
    }

    // Provide an implementation for the sleep method
    public void sleep() {
        System.out.println("Zzz");
    }
}

class Main {
    public static void main(String[] args) {
        Pig myPig = new Pig();
        myPig.emitSound();
        myPig.sleep();
    }
}
```

## Key Differences Between an Interface and a Class

Interfaces and classes have some fundamental differences. An interface cannot be instantiated, meaning you cannot create an object of an interface type. Also, as mentioned, the methods in an interface do not have a body. A key advantage of interfaces is that a class can implement multiple interfaces, whereas it can only extend a single superclass.

## Why Use Interfaces?

Interfaces are a powerful feature in Java for several reasons. They are a key mechanism for achieving abstraction, by separating the definition of a method from its implementation. They also provide a way to achieve a form of multiple inheritance, as a class can implement any number of interfaces. Finally, interfaces help in achieving loose coupling, making your code more modular and easier to maintain.
