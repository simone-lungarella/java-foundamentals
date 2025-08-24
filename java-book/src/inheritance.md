# Inheritance

Inheritance is a fundamental concept in object-oriented programming that allows a new class, known as a subclass, to inherit the properties and behaviors (fields and methods) of an existing class, referred to as a superclass. This powerful mechanism is a cornerstone of code reuse, as it allows you to build upon existing, proven code.

## Superclass and Subclass

The two key components of inheritance are the **superclass** (or parent class), which is the class being inherited from, and the **subclass** (or child class), which is the class that inherits from the superclass. The relationship between them is established using the `extends` keyword.

## Example of Inheritance

To illustrate this, let's consider a `Vehicle` superclass. This class has a `brand` field and a `honk` method.

```java
public class Vehicle {
    String brand;

    public void honk() {
        System.out.println("Tuut, tuut!");
    }
}
```

Now, we can create a `Car` subclass that extends `Vehicle`. The `Car` class will automatically inherit the `brand` field and the `honk` method from its superclass.

```java
public class Car extends Vehicle {
    String modelName;

    public static void main(String[] args) {
        Car myCar = new Car();

        // The 'brand' field is inherited from the Vehicle class
        myCar.brand = "Ford";
        myCar.modelName = "Mustang";

        // The 'honk' method is also inherited from Vehicle
        myCar.honk();

        System.out.println(myCar.brand + " " + myCar.modelName);
    }
}
```

## The `super` Keyword

The `super` keyword is a special keyword in Java that provides a reference to the superclass. It can be used in two primary ways: to call a constructor of the superclass and to access members (fields or methods) of the superclass. This is particularly useful when you need to explicitly invoke the superclass's implementation of a method or constructor from within the subclass.

### Calling the Superclass Constructor

A common use of `super` is to call the constructor of the superclass from within the constructor of the subclass. This ensures that the superclass is properly initialized before the subclass.

```java
public class Vehicle {
    String brand;

    // Constructor for the Vehicle superclass
    public Vehicle(String brand) {
        this.brand = brand;
    }
}

public class Car extends Vehicle {
    String modelName;

    // Constructor for the Car subclass
    public Car(String brand, String model) {
        // Call the constructor of the superclass (Vehicle)
        super(brand);
        this.modelName = model;
    }
}
```

## The `instanceof` Operator

The `instanceof` operator is used to check whether an object is an instance of a particular class or a subclass of that class. It returns a boolean value, which is `true` if the object is an instance of the specified class or any of its subclasses, and `false` otherwise.

```java
public class Main {
    public static void main(String[] args) {
        Vehicle myCar = new Car("Ford", "Mustang");

        // Check if myCar is an instance of Car
        System.out.println(myCar instanceof Car); // true

        // Check if myCar is an instance of Vehicle
        System.out.println(myCar instanceof Vehicle); // true
    }
}
```
