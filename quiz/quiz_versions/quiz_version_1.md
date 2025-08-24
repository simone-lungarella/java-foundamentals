# Valutazione 1 — Java

## Istruzioni per la compilazione

**Nome:** ________________  
**Cognome:** ________________  
**Data:** ________________

Per completare questa valutazione, edita direttamente questo file markdown inserendo una **x** tra le parentesi quadre della risposta corretta per ogni domanda. Ad esempio:
- [x] Questa è la risposta corretta
- [ ] Questa è una risposta sbagliata

Assicurati di inserire i tuoi dati personali negli spazi indicati sopra prima di iniziare. Salva il file una volta completato e consegnalo secondo le modalità indicate.

---

## Q1. Quale modificatore rende una variabile immutabile in Java?


- [ ] nessuno, gli oggetti sono immutabili di default in Java
- [ ] static
- [ ] final
- [ ] const

## Q2. La programmazione orientata agli oggetti è un paradigma in cui i programmi sono organizzati attorno a __ e dati, piuttosto che a __ e logica.


- [ ] azioni; oggetti
- [ ] oggetti; azioni
- [ ] azioni; funzioni
- [ ] funzioni; azioni

## Q3. Quale metodo può essere usato per creare una nuova istanza di un oggetto?


- [ ] metodo privato
- [ ] un'altra istanza
- [ ] un costruttore
- [ ] un metodo creatore

## Q4. Quali affermazioni sulle classi `abstract` sono vere?

```
1. Possono essere istanziate.
2. Consentono a variabili e metodi di essere ereditati dalle sottoclassi.
3. Possono definire costruttori.
```


- [ ] 2 e 3
- [ ] solo 3
- [ ] solo 2
- [ ] 1, 2, e 3

## Q5. In Java, qual è l'ambito (scope) di un argomento o parametro di un metodo?

- [ ] all'interno del metodo
- [ ] né all'interno né all'esterno del metodo
- [ ] sia all'interno che all'esterno del metodo
- [ ] solo all'esterno del metodo

## Q6. Completa il codice per verificare se `number` è divisibile per `5`:

`boolean isDivisibleBy5 = _____;`


- [ ] `number % 5 == 0`
- [ ] `number % 5 != 5`
- [ ] `number / 5 ? true : false`
- [ ] `Math.isDivisible(number, 5)`

## Q7. Qual è l'espressione più affidabile per testare se i valori di due variabili di tipo `String` sono uguali?


- [ ] string1.matches(string2)
- [ ] string1 == string2
- [ ] string1.equals(string2)
- [ ] string1 = string2

## Q8. Quali lettere verranno stampate all'esecuzione del seguente programma?

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


- [ ] C e D
- [ ] A, B e D
- [ ] A e D
- [ ] A, C e D

## Q9. Quale istruzione restituisce true se "firstName" è di tipo String?


- [ ] `"firstName".getClass().getSimpleName() == "String"`
- [ ] `"firstName" instanceof String`
- [ ] `"firstName".getType() == String`
- [ ] `"firstName".getType().equals("String")`

## Q10. Quale parola chiave (keyword) permette di chiamare il costruttore di una classe genitore?


- [ ] this
- [ ] parent
- [ ] super
- [ ] new

## Q11. Come si scrive un ciclo for-each che itera su `ArrayList<Pencil> pencilCase`?


- [ ] `for (Pencil pencil : pencilCase) {}`
- [ ] `for (pencil in pencilCase) {}`
- [ ] `for (Pencil pencil : pencilCase.iterator()) {}`
- [ ] `for (pencilCase.next()) {}`

## Q12. Il sistema di runtime avvia un programma chiamando per prima quale funzione?


- [ ] start
- [ ] begin
- [ ] iterative
- [ ] main

## Q13. Quante volte, questo programma, stamperà `"Hello World!"`?

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

## Q14. Quale modificatore di accesso applica l'incapsulamento (encapsulation) impedendo l'accesso diretto alle proprietà di una classe dall'esterno della classe (eccetto attraverso i metodi della classe stessa)?


- [ ] protected
- [ ] public
- [ ] private
- [ ] (default) nessun modificatore

## Q15. Quale firma del metodo definisce la funzione chiamata?

`boolean healthyOrNot = isHealthy("avocado");`


- [ ] public void isHealthy(String avocado);
- [ ] boolean isHealthy(String string);
- [ ] public boolean isHealthy("avocado");
- [ ] private String isHealthy(String food);

## Q16. Come si può ottenere il polimorfismo (polymorphism) a runtime in Java?


- [ ] overloading del metodo
- [ ] overrunning del metodo
- [ ] overriding del metodo
- [ ] chiamata del metodo

## Q17. Quale codice useresti nel Costruttore A per chiamare il Costruttore B?

```java
public class Jedi {

  /* Costruttore A */
  Jedi(String name, String species){}

  /* Costruttore B */
  Jedi(String name, String species, boolean followsTheDarkSide){}
}
```


- [ ] super(name, species, false)
- [ ] new Jedi(name, species, false)
- [ ] Jedi(name, species, false)
- [ ] this(name, species, false)

## Q18. In Java, una classe può ereditare da un'altra classe e allo stesso tempo implementare un'interfaccia. Quale parola chiave si utilizza per indicare che una classe fornisce l'implementazione dei metodi dichiarati in un'interfaccia?


- [ ] implements
- [ ] Import
- [ ] inherits
- [ ] extends

## Q19. Data la stringa "strawberries" salvata in una variabile chiamata fruit, cosa restituirebbe `fruit.substring(2, 5)`?


- [ ] traw
- [ ] rawb
- [ ] raw
- [ ] awb

## Q20. Quale modificatore deve avere la variabile `PI` per poter essere accessibile direttamente tramite la classe `Math` (come nel codice seguente)?

```java
public static void main(String[] args) {
    float local = Math.PI;
    System.out.println(local);
}
```


- [ ] final
- [ ] default
- [ ] protected
- [ ] static
