// Impostazioni del documento (Layout)
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.5cm),
  header: align(right)[Esempio di Documento Typst],
  numbering: "1",
)

#set text(
  font: "Linux Libertine",
  size: 11pt,
  lang: "it"
)

// Titolo e Autore
#align(center)[
  #block(text(weight: "bold", size: 24pt)[Il mio primo documento Typst])
  #v(1em)
  #text(size: 14pt)[Autore: Nome Cognome]
  #v(2em)
]

// Sommario
#outline(title: "Indice", indent: auto)

#v(2em)

== Introduzione
Typst è un nuovo sistema di composizione basato su markup, progettato per essere un'alternativa più semplice e veloce a LaTeX. 

Ecco alcuni punti di forza:
- *Velocità*: La compilazione è istantanea.
- *Sintassi*: Chiara e leggibile, simile al Markdown.
- *Potenza*: Supporta scripting e funzioni complesse.

== Formattazione e Matematica
Puoi scrivere in *grassetto*, _corsivo_ o `monospazio`. 

La matematica è molto intuitiva. Ad esempio, la formula quadratica si scrive così:
$ x = (-b plus.minus sqrt(b^2 - 4a c)) / (2a) $

E qui una formula inline come $E = m c^2$ per mostrare come si integra nel testo.

== Tabelle
Le tabelle sono facili da definire:

#align(center)[
  #table(
    columns: (auto, auto, auto),
    inset: 10pt,
    align: horizon,
    [*Prodotto*], [*Quantità*], [*Prezzo*],
    [Manuali Typst], [5], [€ 25.00],
    [Caffè], [20], [€ 1.50],
    [Computer], [1], [€ 1200.00],
  )
]

== Conclusione
Ora che hai questo file nel tuo repository, il workflow di GitHub Actions che abbiamo configurato lo trasformerà automaticamente in un PDF pronto per il tuo sito Jekyll!