# Generics

Generics in Java allow you to create classes, interfaces, and methods that can work with any data type. This provides compile-time type safety and reduces the need for type casting.

## Generic Class

You can create a generic class by specifying a type parameter in angle brackets (`<>`).

```java
public class Box<T> {
    private T t;

    public void set(T t) {
        this.t = t;
    }

    public T get() {
        return t;
    }
}
```

## Using a Generic Class

When you create an instance of a generic class, you specify the actual type that the generic type will be replaced with.

```java
public class Main {
    public static void main(String[] args) {
        Box<Integer> integerBox = new Box<Integer>();
        integerBox.set(10);
        Integer someInteger = integerBox.get();
        System.out.println(someInteger);

        Box<String> stringBox = new Box<String>();
        stringBox.set("Hello World");
        String someString = stringBox.get();
        System.out.println(someString);
    }
}
```
