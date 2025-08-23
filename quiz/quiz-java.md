# Assessment 1 — Java

## Given the string "strawberries" saved in a variable called fruit, what would `fruit.substring(2, 5)` return?

- [ ] rawb
- [ ] raw
- [ ] awb
- [ ] traw

## How can you achieve runtime polymorphism in Java?

- [ ] method overloading
- [ ] method overrunning
- [ ] method overriding
- [ ] method calling

## How do you write a for-each loop that will iterate over ArrayList\<Pencil\>pencilCase?

- [ ] `for (Pencil pencil : pencilCase) {}`
- [ ] `for (pencilCase.next()) {}`
- [ ] `for (Pencil pencil : pencilCase.iterator()) {}`
- [ ] `for (pencil in pencilCase) {}`

## Which access modifier enforces encapsulation by preventing direct access to a class's properties from outside the class (except through methods within the class itself)?

- [ ] private
- [ ] protected
- [ ] (default) no-modifier
- [ ] public

## Fill in the blank to complete the code that checks if `number` is divisible by `5`:

`boolean isDivisibleBy5 = _____;`

- [ ] `number / 5 ? true : false`
- [ ] `number % 5 == 0`
- [ ] `number % 5 != 5`
- [ ] `Math.isDivisible(number, 5)`

## How many times will this code print `"Hello World!"`?

```java
class Main {
    public static void main(String[] args){
        for (int i = 0; i < 10; i++){
            System.out.println("Hello World!");
        }
    }
}
```

## The runtime system starts your program by calling which function first?

- [ ] print
- [ ] iterative
- [ ] start
- [ ] main

## What code would you use in Constructor A to call Constructor B?

```java
public class Jedi {

  /* Constructor A */
  Jedi(String name, String species){}

  /* Constructor B */
  Jedi(String name, String species, boolean followsTheDarkSide){}
}
```

- [ ] Jedi(name, species, false)
- [ ] new Jedi(name, species, false)
- [ ] this(name, species, false)
- [ ] super(name, species, false)

## Why is the statement *“An anonymous class requires a zero-argument constructor”* false?

- [ ] Because the `new SuperType(...)` expression invokes a constructor of the superclass, and you can pass any required arguments (e.g., `new Foo(42) { ... }`), so a zero-arg constructor isn’t required.
- [ ] Because anonymous classes always use `Object`’s no-arg constructor regardless of the superclass.
- [ ] Because you can declare your own parameterized constructor inside the anonymous class body.
- [ ] Because anonymous classes never call any constructor; they rely entirely on instance initializer blocks.

## Object-oriented programming is a paradigm where programs are organized around \_ and data, rather than \_ and logic.

- [ ] functions; actions
- [ ] objects; actions
- [ ] actions; functions
- [ ] actions; objects

## What statement returns true if "firstName" is of type String?

- [ ] `"firstName".getType().equals("String")`
- [ ] `"firstName".getType() == String`
- [ ] `"firstName".getClass().getSimpleName() == "String"`
- [ ] `"firstName" instanceof String`

## What method can be used to create a new instance of an object?

- [ ] another instance
- [ ] creator method
- [ ] constructor
- [ ] private method

## Which is the most reliable expression for testing whether the values of two string variables are the same?

- [ ] string1 == string2
- [ ] string1 = string2
- [ ] string1.matches(string2)
- [ ] string1.equals(string2)

## Which letters will print when this code is run?

```java
public static void main(String[] args) {
    try {
        System.out.println("A");
        badMethod();
        System.out.println("B");
    } catch (Exception ex) {
        System.out.println("C");
    } finally {
        System.out.println("D");
    }
}
public static void badMethod() {
    throw new Error();
}
```

- [ ] A, B, and D
- [ ] A, C, and D
- [ ] C and D
- [ ] A and D

## What method signature will work with this code?

`boolean healthyOrNot = isHealthy("avocado");`

- [ ] public void isHealthy(String avocado);
- [ ] boolean isHealthy(String string);
- [ ] public boolean isHealthy("avocado");
- [ ] private String isHealthy(String food);

## Which modifier makes a variable immutable in Java?

- [ ] const
- [ ] static
- [ ] final
- [ ] none, objects are immutable by default in Java

