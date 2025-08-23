# Streams

A Stream in Java is a powerful construct that represents a sequence of objects and supports a variety of operations that can be pipelined to achieve a desired result. Streams are a declarative way to process data, allowing you to focus on what you want to achieve rather than how to do it.

## Understanding Streams

A Stream is not a data structure itself, but rather a sequence of elements that are processed in a pipeline of operations. Streams take their input from sources like Collections, Arrays, or I/O resources. They support a rich set of aggregate operations, such as `filter`, `map`, `reduce`, and `collect`, which can be chained together to form a processing pipeline. A key feature of streams is that they handle iteration automatically, allowing you to write more concise and readable code.

## Creating Streams

You can easily create a stream from an existing collection, such as a `List` or a `Set`.

```java
List<String> names = Arrays.asList("Alice", "Bob", "Charlie");
Stream<String> nameStream = names.stream();
```

## Common Stream Operations

The real power of streams lies in their operations. The `forEach` method provides a simple way to iterate over the elements of a stream.

```java
List<String> names = Arrays.asList("Alice", "Bob", "Charlie");
names.stream().forEach(System.out::println);
```

The `map` operation allows you to transform each element of a stream into a new element. For example, you could use `map` to create a new list containing the squares of a list of numbers.

```java
List<Integer> numbers = Arrays.asList(1, 2, 3, 4, 5);
List<Integer> squares = numbers.stream()
                                .map(n -> n * n)
                                .collect(Collectors.toList());
// The 'squares' list will contain [1, 4, 9, 16, 25]
```

The `filter` operation is used to select elements from a stream that satisfy a given condition. For instance, you could filter a list of names to keep only those that start with the letter 'A'.

```java
List<String> names = Arrays.asList("Alice", "Bob", "Charlie", "Anna");
List<String> aNames = names.stream()
                           .filter(name -> name.startsWith("A"))
                           .collect(Collectors.toList());
// The 'aNames' list will contain ["Alice", "Anna"]
```

Finally, the `reduce` operation combines the elements of a stream into a single result. A common use case for `reduce` is to calculate the sum of a list of numbers.

```java
List<Integer> numbers = Arrays.asList(1, 2, 3, 4, 5);
int sum = numbers.stream()
                 .reduce(0, (a, b) -> a + b);
// The 'sum' variable will hold the value 15
```
