# Enums

In Java, an enum is a special data type that represents a fixed set of constant values. Enums are useful when you have a variable that can only take one of a small set of possible values, such as the days of the week or the seasons of the year.

## Defining an Enum

To define an enum, you use the `enum` keyword. The enum values are listed in uppercase letters.

```java
public enum Day {
    SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY
}
```

## Using an Enum

You can use an enum in a `switch` statement to execute different code for each enum value.

```java
public class EnumExample {
    public static void main(String[] args) {
        Day today = Day.WEDNESDAY;

        switch (today) {
            case MONDAY:
                System.out.println("Mondays are bad.");
                break;
            case FRIDAY:
                System.out.println("Fridays are better.");
                break;
            case SATURDAY: case SUNDAY:
                System.out.println("Weekends are best.");
                break;
            default:
                System.out.println("Midweek days are so-so.");
                break;
        }
    }
}
```
