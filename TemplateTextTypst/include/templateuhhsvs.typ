// --------------------------------------------------------------------------------
// Template for theses, seminar works etc.
// --------------------------------------------------------------------------------
// Working group "Sicherheit in verteilten Systemen" (SVS)
// https://svs.informatik.uni-hamburg.de/
// Version: 2025-05-28
// --------------------------------------------------------------------------------
// Include this via #import "include/templateuhhsvs.typ": *
// --------------------------------------------------------------------------------

// ----- Customize bibliography files here
#let bibfile = "../ref.bib"
#let bibstyle = "mieee.csl"

// ----- Windows and MacOS users: No need to install fonts. 
//       Linux users: Please consider downloading the TeX Gyre fonts.
//       TeX Gyre Termes and TeX Gyre Heros are free replacements for
//       Times and Helvetica. OTF files are available at
//       https://www.gust.org.pl/projects/e-foundry/tex-gyre

#let body-font = (
  "TeX Gyre Termes", // Free replacement for Times
  "Times", // Installed on macOS
  "Times New Roman", // Installed on Windows
)
#let sans-font = (
  "TeX Gyre Heros", // Free replacement for Helvetica
  "Helvetica", // Installed on macOS
  "Arial", // Installed on Windows
)

// ----- Builtin default fonts of typst for all platforms
// Main font: ("Libertinus Serif") --> used for normal Text: #text([Text])
// Mono font: ("DejaVu Sans Mono") --> used for verbatim Text: #raw("Text")
// Sans font: () --> Typst unfortunately comes w/o a builtin sans font.

// ----- Imports
#import "toc.typ": parcio-outline
#import "@preview/dashy-todo:0.0.3": todo as stodo
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import "@preview/i-figured:0.2.4"
#import "@preview/algo:0.3.6": algo, i, d, comment
#import "@preview/ctheorems:1.1.3": *
#import "@preview/alexandria:0.2.0": *

// ----- Definitions and Theorems
#show: thmrules

#let theorem = thmbox("theorem", "Theorem", fill: none, stroke: 1pt + gray, base_level: 1)
#let corollary = thmplain( "corollary", "Corollary", base: "theorem", titlefmt: strong, base_level: 0)
#let definition = thmbox("definition", "Definition", inset: (x: 1.2em, top: 0em), base_level: 1)
#let lemma = thmbox("lemma", "Lemma", fill: none, inset: (x: 1.2em, top: 0em), base_level: 1)

#let example = thmplain("example", "Example").with(numbering: none)
#let hypo = thmbox("hypo", "Hypothesis", fill: none, inset: (x: 0.5em, top: 0em), base_level: 0).with(numbering: "H.1")
#let cond = thmbox("cond", "Condition", fill: none, inset: (x: 0.5em, top: 0em), base_level: 0).with(numbering: "C.1")
#let proof = thmproof("proof", "Proof", inset: (x: 0em, bottom: 0.5em), separator: [.#h(0.1em)])

// ----- Text shortcuts
#let ie = "i.\u{202F}e."
#let eg = "e.\u{202F}g."
#let zb = "z.\u{202F}B."

// ----- Stroke definitions for tables
#let sgray = (0.5pt + gray) // useful for `stroke: sgray` in tables
#let hlinegray = table.hline(stroke: (0.5pt + gray)) // horizontal line in tables

// ----- Form for Rump Session
#let rumpSessionQuestionaire(width: 9cm, fontsize: 0.5em) = [
  #box(width: width, text(font: sans-font, size: fontsize)[
    #let sq = square(stroke: 0.5pt, height: 0.75em)
    #set table(stroke: none)
    #set table(
      align: (x, y) => (
        if x > 1 { center }
        else { left }
      )
    )
    #table(columns: (1fr, auto, auto, auto, auto), inset: 4pt,
      table.cell(colspan: 5, [*Vortrag Nr./Titel:* #h(1fr) Rump Session]),
      [], [j], [], [], [n],
      [*Struktur:* Ich konnte einen „roten Faden“ erkennen.                         ], [#sq], [#sq], [#sq], [#sq],
      [*Auftreten:* Die/der Vortragende ist selbstsicher aufgetreten.               ], [#sq], [#sq], [#sq], [#sq],
      [*Kompetenz:* Die/der Vortragende kennt sich mit dem Thema aus.               ], [#sq], [#sq], [#sq], [#sq],
      [*Didaktik:* Ich habe alles verstanden, was gesagt wurde.                     ], [#sq], [#sq], [#sq], [#sq],
      [*Niveau:* Ich kann die Kernideen des Vortrags mit eigenen Worten wiedergeben.], [#sq], [#sq], [#sq], [#sq],
      table.cell(colspan: 5, box(height: 6em)[*Anmerkungen:*]),
    )
  ])
]

// ----- Ensure all author fields are defined
#let author(name: "John Doe", matrikelnr: none, studies: none, affiliation: none, email: none) = {
  return (name: name, matrikelnr: matrikelnr, studies: studies, affiliation: affiliation, email: email)
}

// ----- Can be used in text to reference to the page of a label
#let pageref(label) = context locate(label).position().page

// ----- We define a global variable draft-state to hold the value of the local draft variable. draft-state is used to decide whether or not Todos are visible.
#let draft-state = state("draft-state", false)
#let todo(body, position: auto) = context {
  let draft = state("draft-state").get()
  if draft != none and draft {
    text(font: sans-font, size: 8pt, weight: "regular", stodo(position: position, body))
  }
}

// ----- Support for long and short captions and headlines
//       See https://forum.typst.app/t/how-to-have-different-text-shown-in-figure-caption-and-in-outline/2349/2
//       Long caption in text/headlines; Short caption in outlines.
//       Examples: #figure(rect(), caption: flex-caption([This is long caption],[This is short]))
//                 #heading(level: 1, flex-caption([Long headline],[Short]))
#let short-captions = state("short-captions", false)
#let flex-caption(long, short) = context if short-captions.get() { short } else { long }

// ----- Add line numbers and vertical line to raw text block
#let code_counter = counter("code")
#let code(body) = {
  set text(size: 1.2em)
  // ----- Add line numbers to raw text
  let content = ()
  let i = 1
  for line in body.text.split("\n") {
    if body.lang == none {
      // ----- Example w/o line numbers: 
      //       ```
      //       verbatim text
      //       ```
      content.push("")
    } else {
      // ----- Example with line numbers: 
      //       ```sh
      //       pwd
      //       ls -l a
      //       ```
      content.push(raw(str(i)))
    }
    content.push(raw(line, lang: body.lang, block: false))
    i += 1
  }
  // ----- Add vertical line to raw text block
  box(stroke: (left: 2pt + gray), inset: (left: 2pt, y: 3pt), outset: (left: -1pt), width: 0.8fr, fill: luma(245))[
    #set align(left)
    #table(
      columns: (auto, 1fr),
      inset: 3pt,
      stroke: none,
      align: (top + right, left),
      ..content
    )
  ]
}

// ----- Function for typesetting a titlepage
#let svs-titlepage(title: "", subtitle: none, draft: true, authors: (), logo: none, date: none, type: "template", lang: "de", betreuer: none, gutachter1: "N.N.", gutachter2: "N.N.") = {
  // ----- Titlepage has no page number
  pagebreak(weak: true)
  set page(numbering: none)

  // ----- Define draft status stamp
  let stamp = place(right, dx: 1cm, dy: 0cm, rotate(20deg, rect(stroke: 1.5pt + red, inset: 8pt, radius: 8pt, text(size: 1.5em, fill: red, align(center, raw("Entwurf vom\n"+datetime.today().display("[day].[month].[year]")))))))
  
  // ----- Titlepage can contain a logo if you pass one with `logo: "logo.png"`.
  if logo != none {
    align(left, image(logo, width: 6.8cm))
  }

  // ----- Template has special titlepage
  if type == "template" {
    subtitle = [
      am Arbeitsbereich Sicherheit in Verteilten Systemen (SVS)
      #v(2em)
      #authors.map(it => it.name).join(", ")
      #v(2em)
      #date.display("[day].[month].[year]")
    ]
    authors = ()
    date = none
    stamp = none
  }

  // Add draft status stamp
  if draft { stamp }
  
  // ----- Start with normal titlepage
  set align(center)
  v(1.5fr)
  if type == "seminar" {
    text(size: 1.6em, "Seminararbeit")
  }
  else if type == "projekt" {
    text(size: 1.6em, "Projektbericht")
  }
  else if type == "bachelor" {
    text(size: 1.6em, "Bachelorarbeit")
  }
  else if type == "master" {
    text(size: 1.6em, "Masterarbeit")
  }
  v(1.0fr)

  // ----- The title of the work
  text(font: sans-font, size: 1.6em, weight: "bold", title)
  
  // ----- The subtitle
  v(0.6em, weak: false)
  if subtitle != none {
    text(size: 1.5em, subtitle)
  }
  v(1.0fr)

  // ----- Author information
  if authors != () {
    text(1.5em)[vorgelegt von]
    pad(
      top: 1.3em,
      bottom: 0.8em,
      grid(
        columns: (1fr,) * calc.min(2, authors.len()),
        gutter: 1em,
        ..authors.map(author => align(center, text(1.5em)[
          #author.name 
          #v(-1.3em)
          #if author.matrikelnr != none {linebreak(); "Matrikelnummer " + author.matrikelnr}
          #v(-1.3em)
          #if author.studies != none {linebreak(); "Studiengang " + author.studies}
          #v(1.8em)
        ])),
      ),
    ) 
  }
  v(1.0fr)

  // ----- Datum
  if date != none {
    text(1.6em, [eingereicht am #date.display("[day].[month].[year]")])
  }
  v(1fr)

  // ----- Supervisor information
  if type == "bachelor" or type == "master" {
    pad(
      top: 1.3em,
      bottom: 0.8em,
      text(1.5em)[#if betreuer != none {[Betreuer: #betreuer \ #v(0em)]}
        Erstgutachter: #gutachter1 \
        #v(0em)
        Zweitgutachter: #gutachter2]
    )
  }
}

// ----- Function for typesetting a abstractpage
#let svs-abstractpage(abstract, title: "Zusammenfassung") = {
  if abstract != [] {
    pagebreak(weak: true)
    heading(outlined: false, numbering: none)[#title]
    [#abstract]
  }
}

// ----- Start your text with `#show: templateuhhsvs.with(..)`
#let templateuhhsvs(
  body, 
  title: "", 
  subtitle: none, 
  draft: true, 
  abstract: [], 
  task: [], 
  versicherung: [], 
  authors: (author(name: "Eva Musterfrau", matrikelnr: none, studies: none)), 
  date: none, 
  type: "template", 
  no-chapter-pagebreaks: false, 
  betreuer: none, 
  gutachter1: "N.N.", 
  gutachter2: "N.N.", 
  logo: "UHH-Logo_2010_RGB_web.svg",
  lang: "de", 
  sources: (), 
) = {
  // ----- Set the document's basic properties
  set document(author: authors.map(a => a.name), title: title)
  set page(paper: "a4")
  set page(margin: (left: 25.4mm, right: 25.4mm, top: 25.4mm, bottom: 25.4mm))
  set heading(numbering: "1.1")
  set text(font: body-font, size: 12pt, lang: lang)
  set par(leading: 0.55em, first-line-indent: 0em, spacing: 1em, justify: true)
  set list(indent: 1.5em)
  set enum(indent: 1.5em)

  // ----- Make headings with more space and sans-font
  show heading: set block(above: 2.3em, below: 1.8em)
  show heading: set block(above: 1.8em, below: 1.0em) if type == "paper"
  show heading: set text(font: sans-font)
  // show heading: set text(navy)

  // ----- Make bibliography (not) justified
  // show bibliography: set par(justify: false) // --> works well
  // Remark: Unfortunately, `show bibliographyx: set par(justify:false)` does not work. We will change it downstairs in front of `bibliographyx(bibfile, ...)` with `set par(justify: false)`.

  // ----- Set date to today if none is given
  if date == none { date = datetime.today() }

  // ----- Update the value of the global variable draft-state
  draft-state.update(draft)

  // ----- Activate short captions for outline command
  //       Remark: There is no need in this template for our Tables of xxx, 
  //       as we activate and deactivate short captions via
  //       short-captions.update(true) and short-captions.update(false)
  show outline: it => {
    short-captions.update(true)
    it
    short-captions.update(false)
  }

  // ----- Figure caption: add more space
  set figure(gap: 1em)

  // ----- Redefine the figure command for support of @fig:xxx, @tbl:xxx and @lst:xxx
  show figure: i-figured.show-figure
  show heading: i-figured.reset-counters.with(level: 1, extra-kinds: ("protocol","diagram",algo))

  // ----- Needed for adding line numbers, vertical line and background to raw text block
  show raw.where(block: true): it => code(it)

  // ----- List of terms with term in sans-font
  set terms(spacing: 1em)
  show terms: it => pad(left: it.indent + it.hanging-indent, stack(
    ..it.children.map(item => {
      // set par(leading: 1em) // 2025-05-21: removed by hf
      h(-it.hanging-indent)
      text(font: sans-font, weight: "bold", item.term)
      it.separator
      item.description
    }),
    spacing: if it.tight { 
      par.leading 
    } else if it.spacing == auto {
      1.2em // block.below doesn't work yet
    } else { 
      it.spacing 
    },
  ))

  // ----- Footnote separator line: make it a bit longer
  set footnote.entry(separator: line(length: 40%, stroke: 0.75pt), indent: 0em)

  // ----- Footnote numbering: Not superscript
  show footnote.entry: it => {
    let loc = it.note.location()
    numbering("1. ", ..counter(footnote).at(loc))
    it.note.body
  }

  // ----- Equations and theorems
  show math.equation: set text(weight: 400)
  show: thmrules.with(qed-symbol: $square$)

  // ----- Heading `==== Paragraph` is displayed as `Paragraph. ` w/o linebreak
  show heading.where(level: 4): it => {
    set text(font: sans-font, size: 0.9em)
    it.body
    "."
    h(0.5em)
  }

  // ----- Vertical line between chapter number and chapter name
  show heading.where(level: 1): it => {
    if no-chapter-pagebreaks or type == "kurz" or type == "literatur" or type == "paper" {it}
    else {
      // ----- Chapter w/o number
      if it.numbering == none {
        set text(font: sans-font)
        // ----- Determine the y-position on page
        let py =  it.location().position().y
        // [#py] // Value on top of the page: 72pt
        if py <= 100pt {
          // ----- First headline with space above
          block(below: 1.8em, [#v(4em) #it.body])
        }else{
          // ----- Running headlines with smaller above
          block(below: 1.8em, [#v(0em) #it.body])
        }
      } else {
        // ----- Chapters with numbers receive a vertical line and space above
        pagebreak(weak: true)
        set text(font: sans-font)
        v(4em) // Add vertical space
        let sym = box(height:1em, width: 1em, inset: (x: 0.5em))[#line(angle: 90deg, length: 1.4em, stroke: 2pt + luma(200))] // Add vertical line
        block(below: 1.8em,
          grid(columns: (auto,  auto, auto), align: top, 
            counter(heading).display(), v(-0.3em) + sym, it.body))
      }
    }
  }

  // ----- Some strings
  let tsk = "Aufgabenstellung"
  let zus = "Zusammenfassung"
  let toc = "Inhaltsverzeichnis"
  let tab = "Tabellenverzeichnis"
  let abb = "Abbildungsverzeichnis"
  let lst = "Verzeichnis der Listings"
  let ref = "Literatur"
  let tdo = "Liste der To-dos"+todo[Im finalen Text `draft: false` setzen] // „To-dos“ ist wirklich die richtige Schreibweise, siehe https://www.duden.de/rechtschreibung/To_do.
  if lang == "en" {
    tsk = "Task"
    zus = "Abstract"
    toc = "Contents"
    tab = "List of Tables"
    abb = "List of Figures"
    lst = "List of Listings"
    ref = "References"
    tdo = "List of Todos"+todo[Set `draft: false` in final version]
  }

  // ----- Start typesetting for different types of documents
  if type == "kurz" or type == "literatur" {
    set page(numbering: "1", number-align: center) if type == "kurz" or type == "paper"
    set heading(numbering: none, outlined: false)
    // ----- Start Header
    text(font: sans-font, size: .95em, weight: "bold", "Thema: ")
    title
    parbreak()
    text(font: sans-font, size: .95em, weight: "bold", "Bearbeitet von: ")
    authors.map(it => it.name).join(", ")
    parbreak()
    text(font: sans-font, size: .95em, weight: "bold", "Datum: ")
    date.display("[day].[month].[year]")
    parbreak()
    // ----- Ausgabe der Literaturliste
    if type == "literatur" {
      [== Literaturliste]
      context {
        // ----- Bei Aufruf aus dem Hinweisdokument müssen wir den folgenden Fehler abfangen: 
        //       error: multiple bibliographies are not yet supported. 
        //       Wir schauen nach dem Label sec.bibliography, das (nur) im Hinweisdokument definiert ist.
        if query(<sec.bibliography>) == () {
          // ----- Aufruf kommt aus „echter“ Literaturliste
          bibliography(bibfile, title: none, style: bibstyle)
          set cite(form: none)
          for source in sources { cite(source) }
        }else{
          // ----- Aufruf kommt aus dem Hinweisdokument
          show: alexandria(prefix: "l-", read: path => read(path))
          for source in sources { cite(label("l-"+str(source)), form: none) }
          // set par(justify: false) // see notes above on bibliography (not) justified
          bibliographyx(bibfile, prefix: "l-", title: none, style: bibstyle)
        }
      }
      v(1em)
    }
    // ----- Ausgabe des body
    body
  } else if type == "paper" {
    // ----- Header
    align(center, text(font: sans-font, size: 1.6em, weight: "bold", title))
    align(center, text(size: 1.2em, authors.map(author => { 
        author.name 
        let foo = ()
        if author.affiliation != none { foo.push(author.affiliation) }
        if author.email != none { foo.push(author.email) }
        if foo != () { footnote(foo.join(", ")) }
      }).join(", ")))
    align(center, text(size: 1.2em, date.display("[day].[month].[year]")))
    // ----- Abstract
    if abstract != [] {
      set text(size: 0.9em)
      v(1em)
      [#h(1fr) #box(width: 90%, [*#zus.* #h(.5em) #abstract]) #h(1fr)]
    }
    // ----- Ausgabe des body
    body
    // ----- bibliography
    [#bibliography(bibfile, title: ref, style: bibstyle)<sec.bibliography>]
  }else{

    // ----- Start of thesis template with titlepage
    svs-titlepage(title: title, subtitle: subtitle, draft: draft, authors: authors, logo: logo, date: date, type: type, gutachter1: gutachter1, gutachter2: gutachter2, betreuer: betreuer, lang: lang)

    // ----- Define draft status stamp
    let stamp = place(right, dx: 2cm, dy: 1cm, rotate(rect(stroke: 1.5pt + red, inset: 8pt, radius: 8pt, text(size: 0.8em, fill: red, align(center, raw("Entwurf vom\n"+datetime.today().display("[day].[month].[year]")))))))

    // ----- Definitions for remaining text
    set page(
      numbering: "1",
      number-align: center,
      header:  if draft and type != "template" { stamp }
    )
    set par(justify: true)
    set align(left)
    
    // ----- Task description
    if task != [] {
      svs-abstractpage(task, title: tsk)
    } 

    // ----- Abstract
    if abstract != [] {
      svs-abstractpage(abstract, title: zus)
    }

    // ----- Now typeset the Tables of xxx
    pagebreak(weak: true)
    short-captions.update(true) // Activate short captions
    parcio-outline(title: toc, chapter-font: sans-font) // Table of Contents
    short-captions.update(false) // Deactivate short captions

    // ----- Verzeichnis der Todos nur im Draft-Modus zeigen
    if draft {
      i-figured.outline(target-kind: "todo", title: tdo)
    }

    // --------------------------------------------------------------------------------
    // ----- Bei Bedarf können einige der nachfolgenden Befehle auskommentiert werden.
    //       Es können in den Abbildungen auch eigene Typen mit `kind` angegeben werden.
    // --------------------------------------------------------------------------------
    // short-captions.update(true) // Activate short captions
    // i-figured.outline(target-kind: table, title: tab)
    // i-figured.outline(target-kind: image, title: abb)
    // i-figured.outline(target-kind: raw,   title: lst)
    // short-captions.update(false) // Deactivate short captions

    // ----- Ausgabe des body
    pagebreak(weak: true)
    body

    // ----- References
    pagebreak(weak: true)
    [#bibliography(bibfile, title: ref, style: bibstyle)<sec.bibliography>]

    // ----- Eidesstattliche Versicherung
    if type == "template" or type == "bachelor" or type == "master" {
      if versicherung != [] {
        let verssig = [
          #v(1em)
          Hamburg, den #date.display("[day].[month].[year]")
          #v(4em)
          #grid(
            columns: (1fr,) * calc.min(2, authors.len()), 
            gutter: 1em, 
            ..authors.map(author => [ 
              #line(length: 14em, stroke: 0.5pt) 
              #author.name 
              #v(6em)
            ]),
          )
        ]
        svs-abstractpage([#versicherung #verssig], title: "Eidesstattliche Versicherung")
      }
    }

    if type == "template" {
      let bluebox(txt, dx: 0cm, dy: 5cm) = arguments(header: place(left, dx: dx, dy: dy, rect(stroke: 1.5pt + blue, inset: 8pt, radius: 8pt, text(size: 1.5em, fill: blue, align(center, raw(txt))))))
      
      set page(..bluebox("Muster des Deckblatts mit Typ „bachelor“", dx: 0cm, dy: 6cm))
      svs-titlepage(title: title, subtitle: subtitle, draft: true, authors: ((name: "Hannes Federrath", matrikelnr: "1234567", studies: "Informatik"),), logo: logo, date: date, type: "bachelor", gutachter1: "Prof. Dr.-Ing. Hannes Federrath", gutachter2: gutachter2, betreuer: "Erika Musterfrau, M. Sc.", lang: lang)

      set page(..bluebox("Muster des Deckblatts mit Typ „seminar“", dx: 0cm, dy: 6cm))
      svs-titlepage(title: title, subtitle: subtitle, draft: true, authors: authors, logo: logo, date: date, type: "seminar", gutachter1: "Prof. Dr.-Ing. Hannes Federrath", gutachter2: gutachter2, betreuer: "Erika Musterfrau, M. Sc.", lang: lang)

      set page(..bluebox("Muster der Literaturliste", dx: 7cm, dy: 4.5cm))
      include("../literaturliste.typ")

      set page(..bluebox("Muster der Wiss. Kurzzusammenfassung", dx: 4cm, dy: 4.5cm))
      include("../kurzzusammenfassung.typ")

      // ----- Wegen der Einbindung der Literaturliste und Kurzzusammenfassung müssen wir noch einmal die Metadaten (Titel, Autoren) für das Hinweisdokument neu setzen
      set document(author: authors.map(a => a.name), title: title)

      // ----- Formulare Rump Session mit Beschnittmarkierungen
      pagebreak(weak: true)
      set page(header: none, footer: none)
      set page(margin: (left: 0mm, right: 0mm, top: 0mm, bottom: 0mm))
      let cells = ()
      let w = 4 // gewünschte Anzahl Spalten + 2
      let h = 7 // gewünschte Anzahl Zeilen + 2
      for x in range(w) { cells.push([]) }
      for x in range(h - 2) {
        cells.push([])
        for y in range(w - 2) { cells.push(table.cell(stroke: white, rumpSessionQuestionaire(width: 9.5cm))) }
        cells.push([])
      }
      for x in range(w) { cells.push([]) }
      table(inset: (x, y) => if x == 2 and y == 1 { (x: 1em, y: 0em ) } else if x == 2 { (x: 1em, y: 1em ) } else if y == 1 { (x: -1em, y: 0em ) } else { (x: -1em, y: 1em ) }, stroke: (x, y) => if not (x in (0, w - 2, w - 1) and y in (0, h - 2, h - 1)) { (right: sgray, bottom: sgray) }, columns: (2em, 1fr, 1fr, 2em), rows: (2em, 0.9fr, 1fr, 1fr, 1fr, 0.9fr, 2em), ..cells)
    }
  }
}
