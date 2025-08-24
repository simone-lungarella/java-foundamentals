# Object-Oriented Programming Wrap-up

This section covered the core principles of Object-Oriented Programming (OOP) in Java. You learned about:

*   **Inheritance:** How to create new classes that inherit properties and methods from existing classes.
*   **Interfaces:** How to define contracts that classes can implement.
*   **Abstract Classes:** How to create classes that cannot be instantiated and must be subclassed.
*   **Packages:** How to organize your classes into packages.

## Exercise

Write a Java program that models a simple zoo.

**Requirements:**

1.  Create an `Animal` interface with a `speak()` method.
2.  Create an abstract class `Mammal` that implements the `Animal` interface. The `Mammal` class should have a `name` property.
3.  Create two concrete classes, `Dog` and `Cat`, that extend the `Mammal` class. Implement the `speak()` method in each class to print "Woof!" for the dog and "Meow!" for the cat.
4.  Create a `Zoo` class that has a list of `Animal`s. Add a method to the `Zoo` class to add new animals to the list.
5.  Create a `Main` class with a `main` method to test your classes. In the `main` method, create a `Zoo` instance, add a `Dog` and a `Cat` to it, and then iterate through the animals in the zoo and call their `speak()` method.
