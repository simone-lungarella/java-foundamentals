# Getting Started

This chapter will guide you through setting up a streamlined Java development environment using Visual Studio Code (VS Code). By the end of this section, you will have a fully functional Java Development Kit (JDK), a VS Code installation, and the necessary extensions for a productive coding experience, including compiling and debugging.

## 1. Install Visual Studio Code

The first step is to install Visual Studio Code. You can download it from the official website at [https://code.visualstudio.com/](https://code.visualstudio.com/). Follow the installation instructions tailored to your operating system.

- For Windows, this involves running the downloaded `.exe` installer.
- On macOS, you will drag the VS Code application into your `Applications` folder.
- For Linux users, VS Code is available through most distribution package managers.

## 2. Install the Java Development Kit (JDK)

To compile and run Java code, you need a Java Development Kit (JDK). You have the choice between Oracle JDK and OpenJDK, which is an open-source alternative favored by most developers. We recommend the OpenJDK builds from Adoptium, available at [https://adoptium.net/](https://adoptium.net/).

Alternatively, you can find the Oracle JDK at [https://www.oracle.com/java/technologies/downloads/](https://www.oracle.com/java/technologies/downloads/).

The installation process varies by operating system.

Follow the provider instructions to install the JDK on your operating system.

To confirm that the JDK was installed correctly, open a terminal and execute the command `java -version`. You should see output that displays the JDK version:

```bash
openjdk version "21.0.8" 2025-07-15
OpenJDK Runtime Environment (Red_Hat-21.0.8.0.9-1) (build 21.0.8+9)
OpenJDK 64-Bit Server VM (Red_Hat-21.0.8.0.9-1) (build 21.0.8+9, mixed mode, sharing)
```

## 3. Set up Java in VS Code

With both VS Code and the JDK installed, the next step is to configure VS Code for Java development by adding extensions. 

The most important is the **Extension Pack for Java** by Microsoft. This pack provides comprehensive support for Java, including language support, debugging, testing, and integration with build tools like Maven and Gradle. To install it, open the Extensions view in VS Code (with `Ctrl+Shift+X` or `Cmd+Shift+X`), search for "Extension Pack for Java", and click "Install".

## 4. Create a Simple Java Program

To verify that your setup is working, let's create a simple "Hello, World!" program. In VS Code, create a new folder named `hello-java` and, within it, a file named `HelloWorld.java`. Add the following code to the file:

```java
public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello, World!");
    }
}
```

You can run this program directly in VS Code by pressing `Ctrl+F5`.

Alternatively, you can open a terminal within the `hello-java` folder and run the commands `javac HelloWorld.java` to compile the code, followed by `java HelloWorld` to execute it. In either case, you should see the output "Hello, World!" printed to the console.
