# Language Server Protocol (LSP)

The Language Server Protocol (LSP) is a protocol developed by Microsoft that defines a common way for editors and IDEs to communicate with language servers. A language server provides language-specific features like code completion, diagnostics, and navigation.

By using LSP, a single language server can be used by multiple editors and IDEs, which means that language support can be implemented once and be available in many different tools.

## How LSP helps in development

When configured correctly, an LSP server for Java can provide a lot of powerful features in your editor of choice, like VS Code, Sublime Text, or Vim/Neovim. These features can significantly improve your development workflow.

### Code Navigation

-   **Go to Definition:** Quickly jump to the definition of a class, method, or variable.
-   **Find References:** Find all references to a symbol in the codebase.
-   **Symbol Search:** Search for symbols in the current file or the entire workspace.

### Documentation on Hover

-   **Hover:** Hovering over a symbol will show its documentation, including method signatures, parameter information, and Javadocs.

### Quick Fixes and Refactoring

-   **Diagnostics:** The LSP server analyzes your code and provides diagnostics (errors and warnings) as you type.
-   **Quick Fixes:** For many diagnostics, the LSP server can suggest quick fixes that you can apply with a single click. For example, it can automatically add a missing import statement.
-   **Refactoring:** Perform basic refactoring operations like renaming a symbol.

## LSP in VS Code

Visual Studio Code has great support for the Language Server Protocol. For Java development, the [Extension Pack for Java](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack) by Microsoft provides a rich set of features powered by an LSP server. Once installed, you will get all the features mentioned above and more, right out of the box.

The LSP integration makes the development experience in a lightweight editor like VS Code much closer to that of a full-fledged IDE like IntelliJ IDEA or Eclipse.

### Using LSP features in VS Code

Once you have the [Extension Pack for Java](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack) installed and a Java project opened, you can use the LSP features as follows:

*   **Go to Definition:** Right-click on a symbol (e.g., a method or class name) and select "Go to Definition", or `F12`.
*   **Find References:** Right-click on a symbol and select "Find All References", or `Shift+F12`.
*   **Symbol Search:** Open the Command Palette (`Ctrl+Shift+P` or `Cmd+Shift+P` on Mac) and type `@` to search for symbols in the current file, or `#` to search the workspace.
*   **Hover:** Simply move your mouse cursor over any symbol to see its documentation.
*   **Quick Fixes:** When you have an error or warning, a lightbulb icon will appear. Click on it to see the available quick fixes, or use the `Ctrl+.` (`Cmd+.` on Mac) shortcut.
*   **Refactoring:** Right-click on a symbol and select "Rename Symbol" (`F2`) to rename it across the project.
