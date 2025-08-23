# Threads

Threads allow a program to perform multiple tasks concurrently. In Java, you can create threads by extending the `Thread` class or implementing the `Runnable` interface.

## Extending the Thread Class

You can create a new thread by creating a subclass of `Thread` and overriding the `run()` method.

```java
public class MyThread extends Thread {
    public void run() {
        System.out.println("This code is running in a thread");
    }

    public static void main(String[] args) {
        MyThread t1 = new MyThread();
        t1.start();
    }
}
```

## Implementing the Runnable Interface

The preferred way to create a thread is to implement the `Runnable` interface. This allows your class to extend other classes.

```java
public class MyRunnable implements Runnable {
    public void run() {
        System.out.println("This code is running in a thread");
    }

    public static void main(String[] args) {
        Thread t1 = new Thread(new MyRunnable());
        t1.start();
    }
}
```
