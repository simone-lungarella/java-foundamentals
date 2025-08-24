# Classes and Objects

Classes and objects are the foundational concepts of Object-Oriented Programming (OOP). A **class** can be thought of as a blueprint for creating objects. It defines a set of properties, known as fields, and behaviors, known as methods, that will be common to all objects of that type. An **object**, in turn, is a specific instance of a class.

## Defining a Class

To define a class, you use the `class` keyword. For example, here is a simple class that serves as a template for creating `Dog` objects. It includes fields for the dog's breed, age, and color, as well as a method for the behavior of barking.

```java
public class Dog {
    // Fields (properties) of the Dog class
    String breed;
    int age;
    String color;

    // Method (behavior) of the Dog class
    void bark() {
        System.out.println("Woof!");
    }
}
```

## Creating an Object

Once a class is defined, you can create objects, or instances, of that class using the `new` keyword. After creating an object, you can access its fields and methods. For example, you can create a `Dog` object and then set its breed, age, and color, and then call its `bark` method.

```java
public class Main {
    public static void main(String[] args) {
        // Create a new Dog object
        Dog myDog = new Dog();

        // Access and set the fields of the myDog object
        myDog.breed = "Golden Retriever";
        myDog.age = 3;
        myDog.color = "Golden";

        // Call the bark method on the myDog object
        myDog.bark(); // This will print "Woof!" to the console
    }
}
```

## Constructors

A constructor is a special type of method that is automatically called when an object is created. Its primary purpose is to initialize the object's fields. A constructor must have the same name as the class and cannot have a return type.

```java
public class Dog {
    String breed;
    int age;

    // This is the constructor for the Dog class
    public Dog(String dogBreed, int dogAge) {
        breed = dogBreed;
        age = dogAge;
    }

    public static void main(String[] args) {
        // Create a new Dog object using the constructor
        Dog anotherDog = new Dog("Labrador", 5);

        // Access the fields of the anotherDog object
        System.out.println(anotherDog.breed); // Prints "Labrador"
        System.out.println(anotherDog.age);   // Prints "5"
    }
}
```
