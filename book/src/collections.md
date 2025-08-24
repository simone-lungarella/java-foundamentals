# Collections

The Java Collections Framework is a sophisticated hierarchy of interfaces and classes designed to help you manage and represent collections of objects. It provides a unified architecture for storing and manipulating groups of data, offering a wide range of data structures to suit different needs.

## `ArrayList`

The `ArrayList` is a dynamic, resizable array and is one of the most frequently used classes in the Collections Framework. It provides a flexible way to store and manipulate a list of elements.

```java
import java.util.ArrayList;
import java.util.Collections;

public class Main {
    public static void main(String[] args) {
        ArrayList<String> cars = new ArrayList<>();
        cars.add("Volvo");
        cars.add("BMW");
        cars.add("Ford");

        System.out.println(cars); // [Volvo, BMW, Ford]

        // You can access elements by their index
        System.out.println(cars.get(0)); // Retrieves "Volvo"

        // Elements can be modified
        cars.set(0, "Opel");

        // Elements can be removed
        cars.remove(0);

        // The size of the list can be retrieved
        System.out.println(cars.size()); // Outputs 2

        // You can iterate through the list
        for (String car : cars) {
            System.out.println(car);
        }

        // The list can be sorted
        Collections.sort(cars);
        System.out.println(cars);
    }
}
```

## `HashMap`

A `HashMap` is a data structure that stores items in key-value pairs. This allows for efficient retrieval of a value if you know its corresponding key.

```java
import java.util.HashMap;

public class Main {
    public static void main(String[] args) {
        HashMap<String, String> capitalCities = new HashMap<>();

        // Add key-value pairs to the map
        capitalCities.put("England", "London");
        capitalCities.put("Germany", "Berlin");
        capitalCities.put("Norway", "Oslo");

        System.out.println(capitalCities);

        // Access an item by its key
        System.out.println(capitalCities.get("England")); // Outputs "London"

        // Remove an item by its key
        capitalCities.remove("England");

        // You can loop through the keys of the map
        for (String country : capitalCities.keySet()) {
            System.out.println("The capital of " + country + " is " + capitalCities.get(country));
        }
    }
}
```

## `HashSet`

A `HashSet` is a collection that stores only unique items. It is very efficient for checking if an item is present in the set.

```java
import java.util.HashSet;

public class Main {
    public static void main(String[] args) {
        HashSet<String> cars = new HashSet<>();
        cars.add("Volvo");
        cars.add("BMW");
        cars.add("Ford");
        cars.add("BMW"); // This duplicate entry will be ignored

        System.out.println(cars); // [Volvo, BMW, Ford]

        // Check if an item exists in the set
        System.out.println(cars.contains("Volvo")); // true

        // Remove an item from the set
        cars.remove("Volvo");
    }
}
```
