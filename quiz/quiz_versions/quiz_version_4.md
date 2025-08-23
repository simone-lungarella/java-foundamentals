# Valutazione 1 — Java

## Istruzioni per la compilazione

**Nome:** ________________  
**Cognome:** ________________  
**Data:** ________________

Per completare questa valutazione, edita direttamente questo file markdown inserendo una **x** tra le parentesi quadre della risposta corretta per ogni domanda. Ad esempio:
- [x] Questa è la risposta corretta
- [ ] Questa è una risposta sbagliata

Assicurati di inserire i tuoi dati personali negli spazi indicati sopra prima di iniziare. Salva il file una volta completato e consegnalo secondo le modalità indicate dal docente.

---

## Q1. Quale codice useresti nel Costruttore A per chiamare il Costruttore B?

```java
public class Jedi {

  /* Costruttore A */
  Jedi(String name, String species){}

  /* Costruttore B */
  Jedi(String name, String species, boolean followsTheDarkSide){}
}
```


- [ ] new Jedi(name, species, false)
- [ ] this(name, species, false)
- [ ] Jedi(name, species, false)
- [ ] super(name, species, false)

## Q2. Quale firma del metodo definisce la funzione chiamata?

`boolean healthyOrNot = isHealthy("avocado");`


- [ ] boolean isHealthy(String string);
- [ ] public void isHealthy(String avocado);
- [ ] public boolean isHealthy("avocado");
- [ ] private String isHealthy(String food);

## Q3. Quante volte, questo programma, stamperà `"Hello World!"`?

```java
class Main {
    public static void main(String[] args){
        for (int i = 0; i < 10; i++){
            System.out.println("Hello World!");
        }
    }
}
```


- [ ] 10 times
- [ ] infinite number of times
- [ ] 9 times
- [ ] 5 times

## Q4. La programmazione orientata agli oggetti è un paradigma in cui i programmi sono organizzati attorno a \_ e dati, piuttosto che a \_ e logica.


- [ ] oggetti; azioni
- [ ] azioni; funzioni
- [ ] funzioni; azioni
- [ ] azioni; oggetti

## Q5. Istruzioni per la compilazione

**Nome:** ________________  
**Cognome:** ________________  
**Data:** ________________

Per completare questa valutazione, edita direttamente questo file markdown inserendo una **x** tra le parentesi quadre della risposta corretta per ogni domanda. Ad esempio:

Assicurati di inserire i tuoi dati personali negli spazi indicati sopra prima di iniziare. Salva il file una volta completato e consegnalo secondo le modalità indicate dal docente.

---

- [ ] Questa è una risposta sbagliata
- [x] Questa è la risposta corretta

## Q6. Quale modificatore di accesso applica l'incapsulamento impedendo l'accesso diretto alle proprietà di una classe dall'esterno della classe (eccetto attraverso i metodi della classe stessa)?


- [ ] private
- [ ] (default) nessun modificatore
- [ ] protected
- [ ] public

## Q7. Qual è l'espressione più affidabile per testare se i valori di due variabili di tipo `String` sono uguali?


- [ ] string1.equals(string2)
- [ ] string1 == string2
- [ ] string1 = string2
- [ ] string1.matches(string2)

## Q8. Quale istruzione restituisce true se "firstName" è di tipo String?


- [ ] `"firstName".getClass().getSimpleName() == "String"`
- [ ] `"firstName" instanceof String`
- [ ] `"firstName".getType().equals("String")`
- [ ] `"firstName".getType() == String`

## Q9. Come si può ottenere il polimorfismo a runtime in Java?


- [ ] overrunning del metodo
- [ ] overloading del metodo
- [ ] chiamata del metodo
- [ ] overriding del metodo

## Q10. Quale modificatore rende una variabile immutabile in Java?

- [ ] final
- [ ] const
- [ ] nessuno, gli oggetti sono immutabili per default in Java
- [ ] static

## Q11. Quale metodo può essere usato per creare una nuova istanza di un oggetto?


- [ ] un metodo creatore
- [ ] un costruttore
- [ ] un'altra istanza
- [ ] metodo privato

## Q12. Data la stringa "strawberries" salvata in una variabile chiamata fruit, cosa restituirebbe `fruit.substring(2, 5)`?


- [ ] traw
- [ ] rawb
- [ ] awb
- [ ] raw

## Q13. Quali lettere verranno stampate all'esecuzione del seguente programma?

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
- [ ] A, B e D
- [ ] C e D
- [ ] A, C e D

## Q14. Perché l'affermazione *"Una classe anonima richiede un costruttore senza argomenti"* è falsa?


- [ ] Perché puoi dichiarare il tuo costruttore parametrizzato all'interno del corpo della classe anonima.
- [ ] Perché le classi anonime non chiamano mai alcun costruttore; si basano interamente sui blocchi di inizializzazione delle istanze.
- [ ] Perché l'espressione `new SuperType(...)` invoca un costruttore della superclasse, e puoi passare qualsiasi argomento richiesto (ad es., `new Foo(42) { ... }`), quindi un costruttore senza argomenti non è necessario.
- [ ] Perché le classi anonime usano sempre il costruttore senza argomenti di `Object` indipendentemente dalla superclasse.

## Q15. Completa il codice per verificare se `number` è divisibile per `5`:

`boolean isDivisibleBy5 = _____;`


- [ ] `number % 5 != 5`
- [ ] `Math.isDivisible(number, 5)`
- [ ] `number / 5 ? true : false`
- [ ] `number % 5 == 0`

## Q16. Il sistema di runtime avvia il tuo programma chiamando per prima quale funzione?


- [ ] print
- [ ] start
- [ ] main
- [ ] iterative

## Q17. Come si scrive un ciclo for-each che itera su ArrayList\<Pencil\>pencilCase?


- [ ] `for (pencilCase.next()) {}`
- [ ] `for (Pencil pencil : pencilCase) {}`
- [ ] `for (Pencil pencil : pencilCase.iterator()) {}`
- [ ] `for (pencil in pencilCase) {}`
