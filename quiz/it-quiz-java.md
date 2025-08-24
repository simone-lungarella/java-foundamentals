## Data la stringa "strawberries" salvata in una variabile chiamata fruit, cosa restituirebbe `fruit.substring(2, 5)`?

- [ ] rawb
- [ ] raw
- [ ] awb
- [ ] traw

## Come si può ottenere il polimorfismo (polymorphism) a runtime in Java?

- [ ] overloading del metodo
- [ ] overrunning del metodo
- [ ] overriding del metodo
- [ ] chiamata del metodo

## Come si scrive un ciclo for-each che itera su `ArrayList<Pencil> pencilCase`?

- [ ] `for (Pencil pencil : pencilCase) {}`
- [ ] `for (pencilCase.next()) {}`
- [ ] `for (Pencil pencil : pencilCase.iterator()) {}`
- [ ] `for (pencil in pencilCase) {}`

## Quale modificatore di accesso applica l'incapsulamento (encapsulation) impedendo l'accesso diretto alle proprietà di una classe dall'esterno della classe (eccetto attraverso i metodi della classe stessa)?

- [ ] private
- [ ] protected
- [ ] (default) nessun modificatore
- [ ] public

## Completa il codice per verificare se `number` è divisibile per `5`:

`boolean isDivisibleBy5 = _____;`

- [ ] `number / 5 ? true : false`
- [ ] `number % 5 == 0`
- [ ] `number % 5 != 5`
- [ ] `Math.isDivisible(number, 5)`

## Quante volte, questo programma, stamperà `"Hello World!"`?

```java
class Main {
    public static void main(String[] args){
        for (int i = 0; i < 10; i++){
            System.out.println("Hello World!");
        }
    }
}
```

- [ ] 10 volte
- [ ] 9 volte
- [ ] 5 volte
- [ ] un numero indefinito di volte, dipende dalla JVM

## Il sistema di runtime avvia un programma chiamando per prima quale funzione?

- [ ] begin
- [ ] iterative
- [ ] start
- [ ] main

## Quale codice useresti nel Costruttore A per chiamare il Costruttore B?

```java
public class Jedi {

  /* Costruttore A */
  Jedi(String name, String species){}

  /* Costruttore B */
  Jedi(String name, String species, boolean followsTheDarkSide){}
}
```

- [ ] Jedi(name, species, false)
- [ ] new Jedi(name, species, false)
- [ ] this(name, species, false)
- [ ] super(name, species, false)

## La programmazione orientata agli oggetti è un paradigma in cui i programmi sono organizzati attorno a __ e dati, piuttosto che a __ e logica.

- [ ] funzioni; azioni
- [ ] oggetti; azioni
- [ ] azioni; funzioni
- [ ] azioni; oggetti

## Quale istruzione restituisce true se "firstName" è di tipo String?

- [ ] `"firstName".getType().equals("String")`
- [ ] `"firstName".getType() == String`
- [ ] `"firstName".getClass().getSimpleName() == "String"`
- [ ] `"firstName" instanceof String`

## Quale metodo può essere usato per creare una nuova istanza di un oggetto?

- [ ] un'altra istanza
- [ ] un metodo creatore
- [ ] un costruttore
- [ ] metodo privato

## Qual è l'espressione più affidabile per testare se i valori di due variabili di tipo `String` sono uguali?

- [ ] string1 == string2
- [ ] string1 = string2
- [ ] string1.matches(string2)
- [ ] string1.equals(string2)

## Quali lettere verranno stampate all'esecuzione del seguente programma?

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

- [ ] A, B e D
- [ ] A, C e D
- [ ] C e D
- [ ] A e D

## Quale firma del metodo definisce la funzione chiamata?

`boolean healthyOrNot = isHealthy("avocado");`

- [ ] public void isHealthy(String avocado);
- [ ] boolean isHealthy(String string);
- [ ] public boolean isHealthy("avocado");
- [ ] private String isHealthy(String food);

## Quale modificatore rende una variabile immutabile in Java?

- [ ] const
- [ ] static
- [ ] final
- [ ] nessuno, gli oggetti sono immutabili di default in Java

## Quali affermazioni sulle classi `abstract` sono vere?

```
1. Possono essere istanziate.
2. Consentono a variabili e metodi di essere ereditati dalle sottoclassi.
3. Possono definire costruttori.
```

- [ ] 1, 2, e 3
- [ ] solo 3
- [ ] 2 e 3
- [ ] solo 2

## Quale parola chiave (keyword) permette di chiamare il costruttore di una classe genitore?

- [ ] parent
- [ ] super
- [ ] this
- [ ] new

## Quale modificatore deve avere la variabile `PI` per poter essere accessibile direttamente tramite la classe `Math` (come nel codice seguente)?

```java
public static void main(String[] args) {
    float local = Math.PI;
    System.out.println(local);
}
```

- [ ] static
- [ ] protected
- [ ] final
- [ ] default

## In Java, una classe può ereditare da un'altra classe e allo stesso tempo implementare un'interfaccia. Quale parola chiave si utilizza per indicare che una classe fornisce l'implementazione dei metodi dichiarati in un'interfaccia?

- [ ] extends
- [ ] implements
- [ ] inherits
- [ ] Import

## In Java, qual è l'ambito (scope) di un argomento o parametro di un metodo?

- [ ] all'interno del metodo
- [ ] sia all'interno che all'esterno del metodo
- [ ] né all'interno né all'esterno del metodo
- [ ] solo all'esterno del metodo
