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

## Q1. Quali affermazioni sulle classi `abstract` sono vere?

```
1. Possono essere istanziate.
2. Consentono a variabili e metodi di essere ereditati dalle sottoclassi.
3. Possono definire costruttori.
```


- [ ] 2 e 3
- [ ] solo 3
- [ ] 1, 2, e 3
- [ ] solo 2

## Q2. Quale istruzione restituisce true se "firstName" è di tipo String?


- [ ] `"firstName".getType() == String`
- [ ] `"firstName" instanceof String`
- [ ] `"firstName".getType().equals("String")`
- [ ] `"firstName".getClass().getSimpleName() == "String"`

## Q3. Quale modificatore deve avere la variabile `PI` per poter essere accessibile direttamente tramite la classe `Math` (come nel codice seguente)?

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

## Q4. Quale codice useresti nel Costruttore A per chiamare il Costruttore B?

```java
public class Jedi {

  /* Costruttore A */
  Jedi(String name, String species){}

  /* Costruttore B */
  Jedi(String name, String species, boolean followsTheDarkSide){}
}
```


- [ ] this(name, species, false)
- [ ] super(name, species, false)
- [ ] Jedi(name, species, false)
- [ ] new Jedi(name, species, false)

## Q5. Quale firma del metodo definisce la funzione chiamata?

`boolean healthyOrNot = isHealthy("avocado");`


- [ ] boolean isHealthy(String string);
- [ ] public void isHealthy(String avocado);
- [ ] private String isHealthy(String food);
- [ ] public boolean isHealthy("avocado");

## Q6. Quale parola chiave (keyword) permette di chiamare il costruttore di una classe genitore?


- [ ] super
- [ ] parent
- [ ] this
- [ ] new

## Q7. Quale modificatore rende una variabile immutabile in Java?


- [ ] const
- [ ] static
- [ ] final
- [ ] nessuno, gli oggetti sono immutabili di default in Java

## Q8. Qual è l'espressione più affidabile per testare se i valori di due variabili di tipo `String` sono uguali?


- [ ] string1.equals(string2)
- [ ] string1 = string2
- [ ] string1.matches(string2)
- [ ] string1 == string2

## Q9. La programmazione orientata agli oggetti è un paradigma in cui i programmi sono organizzati attorno a __ e dati, piuttosto che a __ e logica.


- [ ] azioni; funzioni
- [ ] funzioni; azioni
- [ ] azioni; oggetti
- [ ] oggetti; azioni

## Q10. Quali lettere verranno stampate all'esecuzione del seguente programma?

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


- [ ] A e D
- [ ] A, C e D
- [ ] A, B e D
- [ ] C e D

## Q11. Come si scrive un ciclo for-each che itera su `ArrayList<Pencil> pencilCase`?


- [ ] `for (Pencil pencil : pencilCase.iterator()) {}`
- [ ] `for (Pencil pencil : pencilCase) {}`
- [ ] `for (pencilCase.next()) {}`
- [ ] `for (pencil in pencilCase) {}`

## Q12. Quale modificatore di accesso applica l'incapsulamento (encapsulation) impedendo l'accesso diretto alle proprietà di una classe dall'esterno della classe (eccetto attraverso i metodi della classe stessa)?


- [ ] public
- [ ] protected
- [ ] private
- [ ] (default) nessun modificatore

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


- [ ] 5 volte
- [ ] un numero indefinito di volte, dipende dalla JVM
- [ ] 10 volte
- [ ] 9 volte

## Q14. In Java, una classe può ereditare da un'altra classe e allo stesso tempo implementare un'interfaccia. Quale parola chiave si utilizza per indicare che una classe fornisce l'implementazione dei metodi dichiarati in un'interfaccia?


- [ ] inherits
- [ ] Import
- [ ] extends
- [ ] implements

## Q15. Il sistema di runtime avvia un programma chiamando per prima quale funzione?


- [ ] start
- [ ] begin
- [ ] main
- [ ] iterative

## Q16. Completa il codice per verificare se `number` è divisibile per `5`:

`boolean isDivisibleBy5 = _____;`


- [ ] `number % 5 == 0`
- [ ] `number / 5 ? true : false`
- [ ] `number % 5 != 5`
- [ ] `Math.isDivisible(number, 5)`

## Q17. Quale metodo può essere usato per creare una nuova istanza di un oggetto?


- [ ] un costruttore
- [ ] un metodo creatore
- [ ] un'altra istanza
- [ ] metodo privato

## Q18. Data la stringa "strawberries" salvata in una variabile chiamata fruit, cosa restituirebbe `fruit.substring(2, 5)`?


- [ ] traw
- [ ] awb
- [ ] rawb
- [ ] raw

## Q19. In Java, qual è l'ambito (scope) di un argomento o parametro di un metodo?

- [ ] solo all'esterno del metodo
- [ ] né all'interno né all'esterno del metodo
- [ ] all'interno del metodo
- [ ] sia all'interno che all'esterno del metodo

## Q20. Come si può ottenere il polimorfismo (polymorphism) a runtime in Java?


- [ ] chiamata del metodo
- [ ] overriding del metodo
- [ ] overrunning del metodo
- [ ] overloading del metodo
