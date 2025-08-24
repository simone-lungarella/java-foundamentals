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

## Q1. In Java, una classe può ereditare da un'altra classe e allo stesso tempo implementare un'interfaccia. Quale parola chiave si utilizza per indicare che una classe fornisce l'implementazione dei metodi dichiarati in un'interfaccia?


- [ ] inherits
- [ ] extends
- [ ] implements
- [ ] Import

## Q2. Quale codice useresti nel Costruttore A per chiamare il Costruttore B?

```java
public class Jedi {

  /* Costruttore A */
  Jedi(String name, String species){}

  /* Costruttore B */
  Jedi(String name, String species, boolean followsTheDarkSide){}
}
```


- [ ] super(name, species, false)
- [ ] Jedi(name, species, false)
- [ ] new Jedi(name, species, false)
- [ ] this(name, species, false)

## Q3. Quali affermazioni sulle classi `abstract` sono vere?

```
1. Possono essere istanziate.
2. Consentono a variabili e metodi di essere ereditati dalle sottoclassi.
3. Possono definire costruttori.
```


- [ ] 2 e 3
- [ ] solo 2
- [ ] 1, 2, e 3
- [ ] solo 3

## Q4. Quante volte, questo programma, stamperà `"Hello World!"`?

```java
class Main {
    public static void main(String[] args){
        for (int i = 0; i < 10; i++){
            System.out.println("Hello World!");
        }
    }
}
```


- [ ] 9 volte
- [ ] 5 volte
- [ ] un numero indefinito di volte, dipende dalla JVM
- [ ] 10 volte

## Q5. Data la stringa "strawberries" salvata in una variabile chiamata fruit, cosa restituirebbe `fruit.substring(2, 5)`?


- [ ] rawb
- [ ] awb
- [ ] traw
- [ ] raw

## Q6. Quale metodo può essere usato per creare una nuova istanza di un oggetto?


- [ ] un'altra istanza
- [ ] metodo privato
- [ ] un costruttore
- [ ] un metodo creatore

## Q7. Completa il codice per verificare se `number` è divisibile per `5`:

`boolean isDivisibleBy5 = _____;`


- [ ] `number / 5 ? true : false`
- [ ] `number % 5 != 5`
- [ ] `number % 5 == 0`
- [ ] `Math.isDivisible(number, 5)`

## Q8. Quale parola chiave (keyword) permette di chiamare il costruttore di una classe genitore?


- [ ] super
- [ ] new
- [ ] this
- [ ] parent

## Q9. Quale modificatore rende una variabile immutabile in Java?


- [ ] final
- [ ] static
- [ ] const
- [ ] nessuno, gli oggetti sono immutabili di default in Java

## Q10. Quale modificatore deve avere la variabile `PI` per poter essere accessibile direttamente tramite la classe `Math` (come nel codice seguente)?

```java
public static void main(String[] args) {
    float local = Math.PI;
    System.out.println(local);
}
```


- [ ] default
- [ ] final
- [ ] protected
- [ ] static

## Q11. Quale istruzione restituisce true se "firstName" è di tipo String?


- [ ] `"firstName".getType() == String`
- [ ] `"firstName" instanceof String`
- [ ] `"firstName".getType().equals("String")`
- [ ] `"firstName".getClass().getSimpleName() == "String"`

## Q12. Quali lettere verranno stampate all'esecuzione del seguente programma?

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
- [ ] A e D
- [ ] C e D
- [ ] A, C e D

## Q13. Come si scrive un ciclo for-each che itera su `ArrayList<Pencil> pencilCase`?


- [ ] `for (Pencil pencil : pencilCase.iterator()) {}`
- [ ] `for (pencil in pencilCase) {}`
- [ ] `for (Pencil pencil : pencilCase) {}`
- [ ] `for (pencilCase.next()) {}`

## Q14. La programmazione orientata agli oggetti è un paradigma in cui i programmi sono organizzati attorno a __ e dati, piuttosto che a __ e logica.


- [ ] oggetti; azioni
- [ ] azioni; funzioni
- [ ] funzioni; azioni
- [ ] azioni; oggetti

## Q15. Quale firma del metodo definisce la funzione chiamata?

`boolean healthyOrNot = isHealthy("avocado");`


- [ ] public void isHealthy(String avocado);
- [ ] private String isHealthy(String food);
- [ ] boolean isHealthy(String string);
- [ ] public boolean isHealthy("avocado");

## Q16. In Java, qual è l'ambito (scope) di un argomento o parametro di un metodo?

- [ ] solo all'esterno del metodo
- [ ] né all'interno né all'esterno del metodo
- [ ] sia all'interno che all'esterno del metodo
- [ ] all'interno del metodo

## Q17. Come si può ottenere il polimorfismo (polymorphism) a runtime in Java?


- [ ] overloading del metodo
- [ ] chiamata del metodo
- [ ] overrunning del metodo
- [ ] overriding del metodo

## Q18. Il sistema di runtime avvia un programma chiamando per prima quale funzione?


- [ ] main
- [ ] iterative
- [ ] begin
- [ ] start

## Q19. Qual è l'espressione più affidabile per testare se i valori di due variabili di tipo `String` sono uguali?


- [ ] string1 == string2
- [ ] string1.matches(string2)
- [ ] string1 = string2
- [ ] string1.equals(string2)

## Q20. Quale modificatore di accesso applica l'incapsulamento (encapsulation) impedendo l'accesso diretto alle proprietà di una classe dall'esterno della classe (eccetto attraverso i metodi della classe stessa)?


- [ ] (default) nessun modificatore
- [ ] public
- [ ] protected
- [ ] private
