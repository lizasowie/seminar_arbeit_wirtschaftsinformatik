// --------------------------------------------------------------------------------
// Template for theses, seminar works etc.
// --------------------------------------------------------------------------------
// Working group "Sicherheit in verteilten Systemen" (SVS)
// https://svs.informatik.uni-hamburg.de/
// --------------------------------------------------------------------------------
// Take a look at `templateuhhsvs.typ` to customize the template.
// --------------------------------------------------------------------------------
#import "include/templateuhhsvs.typ": *

#show: templateuhhsvs.with(
// --------------------------------------------------------------------------------
// ----- Type of template:
// --------------------------------------------------------------------------------
//  SVS layout for theses: "bachelor", "master", "projekt", "seminar", "template"
//  A simple paper layout: "paper" (considers abstract, ignores task and versicherung)
//  Specials for seminars: "kurz", "literatur" (use with kurzzusammenfassung.typ and literaturliste.typ)
type: "template",

// --------------------------------------------------------------------------------
// ----- Title of work
// --------------------------------------------------------------------------------
title: "Hinweise für das Erscheinungsbild von Seminar-, Studien-, Bachelor- und Masterarbeiten",

// --------------------------------------------------------------------------------
// ----- Names of authors
// --------------------------------------------------------------------------------
//  For `type: "paper"` the author information can contain affiliation and email:
//  author(name: "John Doe", affiliation: "Company", email: "mail@example.com"),
authors: (
  author(name: "Maya Herrscher", matrikelnr: "1234567", studies: "Informatik"),
  author(name: "Hannes Federrath", matrikelnr: "1234567", studies: "Informatik"),
),

// --------------------------------------------------------------------------------
// ----- Date of delivery (today or fixed date)
// --------------------------------------------------------------------------------
date: datetime.today(), 
// date: datetime(year: 2025, month: 5, day: 16), // fixed date

// --------------------------------------------------------------------------------
// ----- Some definitions for draft, lang etc.
// --------------------------------------------------------------------------------
draft: true, // Set to false for a finished work
lang: "de", // "de", "en"

// --------------------------------------------------------------------------------
// ----- Set to true for no pagebrak between Chapters; useful for short works 
// --------------------------------------------------------------------------------
//  Alternatively consider `type: "paper"` (see above)
no-chapter-pagebreaks: false, 

// --------------------------------------------------------------------------------
// ----- Aufgabenstellung bitte hier einfügen; Ausblenden mit `task: [],`
// --------------------------------------------------------------------------------
task: [
Soweit eine ausformulierte Aufgabenstellung vorliegt, diese bitte hier einfügen. Bei Abschlussarbeiten gibt es fast immer eine ausformuierte Aufgabenstellung. #todo[Betreuerin bzw. Betreuer wegen Aufgabenstellung fragen]
],

// --------------------------------------------------------------------------------
// ----- Zusammenfassung bitte hier einfügen; Ausblenden mit `abstract: [],`
// --------------------------------------------------------------------------------
abstract: [
Für die eilige Leserin bzw. den eiligen Leser sollen auf etwa einer halben, maximal einer Seite die wichtigsten Inhalte, Erkenntnisse, Neuerungen bzw. Ergebnisse der Arbeit beschrieben werden.

Durch eine solche Zusammenfassung (im Engl. auch Abstract genannt) am Anfang der Arbeit wird die Arbeit deutlich aufgewertet. Hier sollte vermittelt werden, warum man die Arbeit lesen  sollte.
],

// --------------------------------------------------------------------------------
// ----- Eidesstattliche Versicherung hier einfügen; Ausblenden mit `versicherung: [],`
// --------------------------------------------------------------------------------
versicherung: [ 
Hiermit versichere ich an Eides statt, dass ich die vorliegende Arbeit selbstständig verfasst und keine anderen als die angegebenen Hilfsmittel – insbesondere keine im Quellenverzeichnis nicht benannten Internet-Quellen – benutzt habe. Alle Stellen, die wörtlich oder sinngemäß aus Veröffentlichungen entnommen wurden, sind als solche kenntlich gemacht. Ich versichere weiterhin, dass ich die Arbeit vorher nicht in einem anderen Prüfungsverfahren eingereicht habe und die eingereichte schriftliche Fassung der auf dem elektronischen Speichermedium entspricht.
#todo[Aktuell gültige eidesstattliche Versicherung einfügen]
],
) // Ende von `show: project.with`

// --------------------------------------------------------------------------------
// ----- Liste der manuellen Trennungen
// --------------------------------------------------------------------------------
#show "Vorbemerkung": [Vor-?be-?mer-?kung]
#show "Videoclip": [Video-?clip]

// --------------------------------------------------------------------------------
// ----- Ab hier folgt der Haupttext
// --------------------------------------------------------------------------------

= Vorbemerkung

Um auf die wiederholten Fragen von Studierenden nach dem Umfang, formalen Aufbau und Erscheinungsbild, das bei Seminar-, Studien-, Bachelor- und Masterarbeiten erwartet wird, einheitlich zu antworten, wird dieses Dokument bereitgestellt.

Diese Hinweise haben Empfehlungscharakter. Bei Unklarheiten geben die Mitarbeiterinnen und Mitarbeiter der Arbeitsgruppe gerne weitere Auskünfte. Als Muster steht auch eine große Anzahl abgeschlossener Arbeiten zur Ansicht zur Verfügung.

= Inhalt <sec.inhalt>

Eine Seminar-, Studien-, Bachelor- und Masterarbeit ist eine längere wissenschaftliche Abhandlung, mit der die Studierenden zeigen sollen, dass sie in einem vorgegebenen Zeitrahmen in der Lage sind, wissenschaftlich zu arbeiten. Gelegentlich werden im Rahmen des Studiums auch synonyme Begriffe wie Abschlussarbeit, Hausarbeit oder Projektbericht verwendet. Die hier niedergeschriebenen Empfehlungen gelten für alle genannten Dokumentarten gleichermaßen. 

== Anforderungen an eine Arbeit <sec.anforderungen>

Eine Seminar-, Studien-, Bachelor- und Masterarbeit trägt inhaltlich normalerweise zu einem aktuell am Arbeitsbereich bearbeiteten Forschungsthema bzw. -projekt bei oder leistet einen Beitrag in der Lehre (#zb Erstellung eines Lehrmittels).

Normalerweise besteht eine Arbeit aus einem darstellenden und einem konstruktiven Teil. Im darstellenden Teil wird gezeigt, dass mit wissenschaftlicher Literatur umgegangen, Wichtiges von Unwichtigem getrennt werden kann und die relevanten Aspekte etwaiger Vorarbeiten erfasst und dargestellt werden können. Im konstruktiven Teil werden dann eigene Lösungen erarbeitet und bewertet.

Um den inhaltlichen und sprachlichen Stil einer wissenschaftlichen Arbeit zu treffen, ist es sehr empfehlenswert, beim Lesen wissenschaftlicher Publikationen auf deren „Klang“ @Tolk2003 zu achten. Die Ich-Form bzw. die Wir-Form sollte im Übrigen vermieden werden.

== Aufbau der Arbeit <sec.aufbau>

Eine wissenschaftliche Arbeit sollte -- wie nahezu jede schriftliche Arbeit -- aus einer Einleitung, einem Hauptteil und einem Schluss bestehen. Der Einleitung ist ein Deckblatt, eine Zusammenfassung und ein Inhaltsverzeichnis voranzustellen. Tabellen- und Abbildungsverzeichnisse sind optional.

Als Muster kann dieses Dokument herangezogen werden.

In der Einleitung wird die Problemstellung und deren Relevanz geschildert. Außerdem werden die Methoden genannt, mit der die Problemstellung bearbeitet wird.

Der Hauptteil sollte mit einem Kapitel zum Stand der Wissenschaft bzgl. des zu bearbeitenden Problems beginnen und das eigene Problem einordnen. Soweit erforderlich, können in einem weiteren Kapitel Grundlagen gelegt werden, #zb Grundverfahren beschrieben werden, die in den folgenden Kapiteln benutzt, ausgebaut oder verändert werden.

Der Schluss fasst die Ergebnisse noch einmal zusammen, bewertet die eigenen Ergebnisse kritisch und benennt die offenen Fragen. Es ist völlig normal, dass im Verlauf der Bearbeitung neue Problemstellungen und Forschungsfragen entstehen, die dann wieder der Ausgangspunkt für weitere Arbeiten sein können.

Ein Literaturverzeichnis am Ende ist obligatorisch. Man sollte sich stets auf die besten Quellen stützen. In abnehmender Qualität:

+  Fachbücher, Standards,
+  Wiss. Zeitschriftenartikel, Survey-Artikel,
+  Konferenzbeiträge,
+  Technical Reports, graue Literatur,
+  Online-Material, Arbeitspapiere, Firmenmaterial, Ausarbeitungen.

Im Internet können zur Feststellung der Qualität und Recherche von Publikationen

-  Google Scholar (https://scholar.google.com),
-  Computer Science Bibliography (https://dblp.uni-trier.de/) und die
-  CiteSeerX (https://citeseerx.ist.psu.edu/)
  
herangezogen werden.

Bei Bedarf kann auch ein Index und Abkürzungsverzeichnis beigefügt werden. Bei Seminar-, Studien-, Bachelor- und Masterarbeiten ist dies jedoch normalerweise wegen des überschaubaren Umfangs nicht sinnvoll.

Bei umfangreichen Quelltexten (mehr als 2 Seiten) sollten diese nicht im Fließtext wiedergegeben werden, sondern im Anhang oder (mit Verweis in der schriftlichen Arbeit) auf dem beigelegten Datenträger erscheinen. Dies gilt auch für andere den Lesefluss störende Informationen größeren Umfangs.

Für Prüfungsarbeiten wie Bachelor- und Masterarbeiten ist wichtig: Eigenhändig unterschriebene Selbständigkeitserklärung am Anfang oder Ende des Textes nicht vergessen (siehe Muster am Ende dieser Hinweise). Bei Seminararbeiten kann diese entfallen.

= Form <sec.form>

Abgesehen von inhaltlichen Anforderungen kann eine klare, gut strukturierte Form den Gesamteindruck der schriftlichen Ausarbeitung steigern. Obwohl die Form keine neuen Inhalte einführt, kann sie sich doch stark auf das Leseverständnis und die Informationsaufnahme der Lesenden auswirken. 

== Umfang der schriftlichen Ausarbeitung <sec.umfang>

Generell gilt: Je weniger Text, umso besser. Auf klare Formulierungen ist in jedem Fall zu achten. Für Studien-, Bachelor- und Masterarbeiten ist der Richtwert 40--50 Seiten. 20~Seiten sind zu wenig, 100 sind zu viel. Bei Seminararbeiten genügen 10--15 Seiten (maximal 10 Seiten Text zzgl. Deckblatt, Literaturverzeichnis und ggf. Anhang, insgesamt nicht mehr als 15 Seiten).

Insbesondere für Bachelor- und Masterarbeiten gilt: Wo immer möglich, sollte auf andere relevante Veröffentlichungen verwiesen werden, anstatt deren Inhalt noch einmal wiederzugeben. Für alle Aussagen und Darstellungen, die aus Veröffentlichungen stammen, sind Quellenangaben zu machen. 

Bei Inhalten aus fremden Quellen, die paraphrasiert oder wörtlich übernommen werden, ist die Quellenangabe an der Textstelle zu machen. Es genügt nicht, die Quelle ins Literaturverzeichnis aufzunehmen. Wörtliche Übernahmen von längeren Wortgruppen und ganzen Sätzen sind in Anführungszeichen zu setzen.

Die sprachliche Leistungsfähigkeit von generativen KI-Programmen wie etwa ChatGPT kann dazu verleiten, Zusammenfassungen fremder Texte einer KI zu überlassen. Der Einsatz solcher Hilfsmittel zur Erstellung eigener wissenschaftlicher Texte muss klar gekennzeichnet sein. Auch hier gilt: Die Quellenangabe ist an der Textstelle zu machen.

Viele Studierende haben zu Beginn der Bearbeitung Sorge, dass sie womöglich nicht auf die „übliche“ Seitenzahl kommen. Diese Sorge ist meist unbegründet. Es sollte möglichst früh mit dem Schreiben begonnen werden: Dokumentieren Sie, was Sie gelesen und neu erarbeitet haben.

== Gestaltung

Wissenschaftliche Arbeiten, die am Arbeitsbereich betreut werden, sollen mit LaTeX oder Typst im Stil des vorliegenden Dokumentes gesetzt sein. Ausnahmen von dieser Regel (etwa die Verwendung von Open Office oder Word) können in Absprache mit der Betreuerin bzw. dem Betreuer getroffen werden.

Als Hauptschriftart sollte eine mit Serifen verwendet werden, #zb #text(font: "Times")[Times] oder #text(font: "Times New Roman")[Times New Roman]. Bitte verwenden Sie keine #text(font: "Helvetica")[Helvetica] oder #text(font: "Arial")[Arial], da diese Schriften bei längeren Texten schwerer lesbar sind. In Überschriften ist eine serifenlose Schrift jedoch in #text(font: sans-font)[*Bold*] erlaubt.

Die Schriftgröße sollte 12pt (wie dieser Text), zur Not auch 11pt sein. Eine Größe von 10pt ist zu klein! Als Zeilenabstand sollten möglichst 15pt oder 14pt verwendet werden. 1,5-zeilig entspricht etwa 18pt und ist zuviel. Bei LaTeX oder Typst sind keine benutzerdefinierten Abstände nötig. Der Text ist im Blocksatz zu setzen. Als Papierformat wird DIN A4 mit ca. 2,5cm Rand verwendet.

Es sollten möglichst nicht mehr als drei Gliederungsebenen verwendet werden. Die Nummerierung einer Überschrift erfolgt stets _ohne_ nachgestellten Punkt. Weiterhin sollte eine Überschrift nie allein für sich stehen, sondern von einem Text begleitet werden. Folgt auf eine Hauptüberschrift direkt eine Unterüberschrift, könnte zwischen den beiden Überschriften beispielsweise eine Einführung zum jeweiligen thematischen Abschnitt oder ein Überblick über die darauffolgenden Unterabschnitte gegeben werden. In diesem Dokument sind dies beispielsweise zwischen den Überschriften zu @sec.form[Kapitel] und @sec.umfang zwei Sätze, die das Kapitel einleiten.

Innerhalb eines Kapitels sollte eine Untergliederung immer dann verwendet werden, wenn es deutlich mehr als zwei Seiten Text umfasst. Bei der Untergliederung ist zu beachten, dass stets wenigstens zwei Unterabschnitte vorhanden sein sollten. Das @sec.inhalt[Kapitel] dieses Textes hat beispielsweise die Unterabschnitte~@sec.anforderungen[] und @sec.aufbau[], und es wäre eigenartig, wenn ein Kapitel~x nur den Unterabschnitt~x.1 hätte und kein weiterer folgen würde. Dann ist es besser, auf eine Untergliederung zu verzichten.  

Eine Kopfzeile kann verwendet werden, muss aber nicht. Hier wird oft unnötig Zeit verschwendet. 

Bitte benutzen Sie nur einen Absatztyp (wie in diesem Dokument; wird in Typst durch mindestens eine Leerzeile zwischen den Absätzen erzeugt). Es ist weit verbreitet, Gedanken, die irgendwie zusammenhängen, aber aus Sicht des Autors noch keinen neuen Absatz rechtfertigen, auf einer neuen Zeile zu beginnen -- in Typst meist durch \\ erzeugt. \
Dies ist zu vermeiden, weil es das Textbild uneinheitlich und unruhig macht. Man soll zwar keine Negativbeispiele bringen, aber der Zeilenwechsel vor dem vorherigen Satz ist eines.

Dieses Dokument wurde mit Typst erstellt und steht übrigens auch im Quelltext (Dateiname `hinweiseabschlussarbeit.typ`) zur Verfügung und kann für eigene Zwecke weiterverwendet werden. Der Befehl zum Erzeugen eines PDFs aus dem Typst-Dokument `main.typ` lautet etwa:

```
typst compile main.typ
// oder
typst watch main.typ
```

Unter https://typst.app/docs finden sich die Dokumentation und Befehlsreferenz zu Typst. Unter https://github.com/typst/typst finden sich Installationshinweise für verschiedene Plattformen. 

Neben Typst können wir auch LaTeX zum Schreiben empfehlen. Hierfür gibt es ein gleichartig aussehendes Template. Weiterführende Literatur zum Schreiben wissenschaftlicher Arbeiten mit LaTeX findet sich beispielsweise in @Schl2013.

Für detaillierte Informationen zu typographischen Regeln sowie Beispiele der korrekten Umsetzung dieser Regeln sei auf die kompakte und sehr hilfreiche Arbeit „typokurz -- Einige wichtige typographische Regeln“ von Christoph Bier verwiesen @Bier2009.

Häufig werden die Regeln zum Setzen von Text in Anführungszeichen missachtet. Im Deutschen sollten nur die „Gänsefüßchen“ (links nach unten und rechts nach oben geschwungen) verwendet werden. Genaues Hinschauen ermöglicht hier die korrekte Verwendung: Weder „dies” noch \"das\" noch “jenes” ist korrekt.

Bei der Kommasetzung bietet es sich an, noch einmal die Regeln unter https://www.duden.de/sprachwissen/rechtschreibregeln/komma anzuschauen. Sehr häufig werden notwendige Kommas weggelassen, etwa beim erweiterten Infinitiv mit zu (genauer: bei satzwertigen Infinitivgruppen, vgl. Duden, Regel D117). Dagegen werden Kommas leider immer wieder dort gesetzt, wo sie nicht hingehören, #zb werden keine Kommas vor „etc.“ und „sowie“ gesetzt.

Beim Verwenden von zusammengesetzten Substantiven und anderen Aneinanderreihungen, wie sie in informatischen Texten sehr häufig vorkommen, gilt im Deutschen die Regel, dass diese üblicherweise mit einem Bindestrich verbunden werden. Man schreibt etwa DES-Verschlüsselung, IP-Adresse und Public-Key-Verfahren. Näheres zum Nachlesen findet sich in den deutschen Rechtschreibregeln. Eine E-Mail ist eine elektronisch übermittelte Nachricht, während Email ein Keramiküberzug ist. Man schreibt im Deutschen selten „Netzwerk“, wenn man ein Kommunikationsnetz oder Rechnernetz meint. Als Kurzform für das Englische _computer network_ verwendet man den Begriff Netz.

Wenn es möglich ist, ein zusammengesetztes Wort ohne Bindestrich zu schreiben, dann sollte davon Gebrauch gemacht werden. So sollte beispielsweise besser „IT-Sicherheitsmanagement“ anstelle von „IT-Sicherheits-Management“ geschrieben werden.

Zwar mögen solche Formfragen aus Sicht des wissenschaftlichen Gehalts eines Textes eher nachrangig sein, allerdings verhilft eine saubere, fehlerfreie und konsistente Form zu einem positiven Gesamteindruck. Dagegen kann eine hohe Rate an Rechtschreib- und Interpunktionsfehlern einen inhaltlich guten Text eigentlich nur schwächen. 

Weniger kann übrigens manchmal mehr und Besseres bewirken. Spiegel Online berichtete in @textwahrnehmung beispielsweise, dass einfache, klare Sprache und eine gut lesbare Standardschrift die Textwahrnehmung verbessern kann: „Schreib so einfach und deutlich wie möglich, dann hält man dich eher für intelligent.“

Eine interessante Regel für klares Schreiben ist die „Daumenregel“, die durchaus wörtlich zu nehmen ist: Wenn ein Satz durch Weglassen (mit dem Daumen Verdecken) eines Wortes oder einer Wortgruppe noch immer den gewünschten Sinn ergibt, dann sollte dieses Wort bzw. die Wortgruppe gestrichen werden. Diese Regel kann auch auf ganze Sätze oder gar Abschnitte erweitert werden.

Darüber hinaus sollten beim Schreiben unbestimmte Aussagen vermieden werden. Wenn etwa in einem Text die Rede davon ist, dass es „verschiedene Verfahren zur Angriffserkennung gibt“, dann ist es für die positive Wahrnehmung der entsprechenden Textstelle hilfreich, entweder eine Quellenangabe zu machen, bei der diese verschiedenen Verfahren zur Angriffserkennung genannt und näher erläutert werden, oder kurz und unmittelbar die konkreten Verfahren zu nennen, um die Leserinnen und Leser nicht im Unklaren zu lassen. Wenn öfter von „unterschiedlichen“, „verschiedenen“ oder „mehreren“ Dingen geschrieben wird, sollte ernsthaft die Anwendung der vorangegangenen Daumenregel in Betracht gezogen werden. 

Tipps und Textbausteine sowie die Grundlagen des wissenschaftlichen Schreibens sind in @Küh21 sehr ansprechend und mit zahlreichen Beispielen und Gegenbeispielen zu finden.

== Abbildungen, Tabellen und Listings

Abbildungen sollten möglichst schlicht, in schwarzweiß und als Strichzeichnungen gestaltet sein. Wenn schon Farben verwendet werden, dann bitte in _allen_ Abbildungen das gleiche Farbschema verwenden. Farben sind nur dann sinnvoll, wenn sie einen Sachverhalt deutlich unterstreichen oder veranschaulichen. Es ist zu beachten, dass die Aussagekraft auch in einem Schwarzweiß-Ausdruck erhalten bleiben muss.

Die Auflösung muss ausreichend groß gewählt werden, damit im fertigen Dokument weder Pixel noch Treppen oder Unschärfe erkennbar sind. Deshalb möglichst Vektorgrafiken verwenden.

Gleitobjekte (sog. Floats) wie Abbildungen und Tabellen müssen eine Unterschrift erhalten. Auf diese muss zudem im Text eindeutig verwiesen werden, da durch das automatische Setzen unter Umständen nicht ersichtlich ist, zu welchem Textabschnitt eine Abbildung gehört. Wie das aussehen kann, ist anhand von @fig:bsp ersichtlich.

#figure(
  // see https://typst.app/universe/package/fletcher/
  diagram(
    spacing: (0em, 1.5em),
    cell-size: (4em, 1em),
  {
  node((0.5,0), "Klartext M", name: <m>)
  node((0,1), "L", stroke: .5pt, shape: rect, width: 5em, name: <l0>)
  node((1,1), "R", stroke: .5pt, shape: rect, width: 5em, name: <r0>)
  node(enclose: ((0,1), (1,1)), inset: 0pt, name: <a>)
  edge((0.5,0), (0.5,1), "-|>", snap-to: (<m>,<a>))

  edge((1,1), (1,2), "-|>", snap-to: (<r0>, auto))
  edge((1,2), (1,3), "-|>")
  edge((1,3), (1,4), "-|>", snap-to: (<xor1>, <l1>))

  edge((0,1), (0,3), (0.86,3), "-|>", corner-radius: none, snap-to: (<l0>, <xor1>))
  edge((1,1.5), (0.1,1.5), (0.1,4), "-|>", corner-radius: none, snap-to: (auto, <r1>))

  node((0,4), "R", stroke: .5pt, shape: rect, width: 5em, name: <r1>)
  node((1,4), "L'", stroke: .5pt, shape: rect, width: 5em, name: <l1>)
  node(enclose: ((0,4), (1,4)), inset: 0pt, name: <b>)
  node((0.5,5), "Chiffretext C", name: <c>)
  edge((0.5,4), (0.5,5), "-|>", snap-to: (<b>,<c>))

  node((1,2), "F", stroke: .5pt, shape: rect, width: 4em)
  node((4,2), "F", stroke: .5pt, shape: rect, width: 4em)
  edge((1,2), (4,2), "<|-|>", label: "Schlüssel K", label-side: center)

  // node((1,3), text(size: 23pt, $xor$), inset: -8pt, name: <xor1>)
  node((1,3), text(size: 8pt, "+"), stroke: .5pt, radius: 10pt, name: <xor1>)
  // node((4,3), text(size: 25pt, $xor$), inset: -8pt, name: <xor2>)
  node((4,3), text(size: 8pt, "+"), stroke: .5pt, radius: 10pt, name: <xor2>)

  node((4.5,0), "Chiffretext C", name: <c1>)
  node((4,1), "R", stroke: .5pt, shape: rect, width: 5em, name: <r2>)
  node((5,1), "L'", stroke: .5pt, shape: rect, width: 5em, name: <l2>)
  node(enclose: ((4,1), (5,1)), inset: 0pt, name: <d>)
  edge((4.5,0), (4.5,1), "-|>", snap-to: (<c1>,<d>))

  edge((4,1), (4,2), "-|>", snap-to: (<r2>, auto))
  edge((4,2), (4,3), "-|>")
  edge((4,3), (4,4), "-|>", snap-to: (<xor2>, <l3>))

  edge((5,1), (5,3), (4.14,3), "-|>", corner-radius: none, snap-to: (<l2>, <xor2>))
  edge((4,1.5), (4.9,1.5), (4.9,4), "-|>", corner-radius: none, snap-to: (auto, <r3>))

  node((4.5,5), "Klartext M", name: <m1>)
  node((4,4), "L'", stroke: .5pt, shape: rect, width: 5em, name: <l3>)
  node((5,4), "R", stroke: .5pt, shape: rect, width: 5em, name: <r3>)
  node(enclose: ((4,4), (5,1)), inset: 0pt, name: <e>)
  edge((4.5,4), (4.5,5), "-|>", snap-to: (<e>,<m1>))
  }
  ),
kind: image,
caption: [Beispiel für eine Abbildung]) <bsp>

Ein Abbildungsverzeichnis ist nicht unbedingt erforderlich, kann aber bei einer Vielzahl von verwendeten Abbildungen für Übersichtlichkeit sorgen.

Längere Listings sollten wie Abbildungen in einer Float-Umgebung untergebracht werden, d.h. eine Über- bzw. Unterschrift haben. Ein Beispiel zeigt @lst:ggt.

#figure(caption: flex-caption([Berechnung des größten gemeinsamen Teilers zweier ganzer Zahlen a und b],[Berechnung des größten gemeinsamen Teilers]),
placement: auto)[```c
int getGGTOf(int a, int b) {
    // requires ((a > 0) && (b > 0)); ensures return > 0;
    int h;
    while (b != 0) {
        h = b;
        b = a % b; // % is the modulo operator. This line is long enough to show how line breaks are handled.
        a = h;
    }
    return a;
}
```]<ggt>

== Literaturverzeichnis <sec.literaturhowto>

Nachfolgend werden einige Hinweise für die Angaben im Literatur- bzw. Quellenverzeichnis gegeben. Es ist wichtig, dass alle für den jeweiligen Quellentyp relevanten Informationen angegeben werden. Zudem sollte darauf geachtet werden, dass die Quellenangaben stets einheitlich erfolgen, also beispielsweise die Autoren konsequent zuerst mit Vorname und dann mit Nachname genannt werden. In den folgenden Syntaxbeschreibungen sind optionale Angaben in eckigen Klammern angegeben.

/ Zitierweise für Fachbücher: \
  _Syntax:_ Vorname Nachname. Buchtitel. [Auflage,] Erscheinungsort: Verlag, Jahr. \
  _Beispiele:_ @Beut2009 @ScWe2007 @Pfit90

/ Zitierweise für Zeitschriften: \
  _Syntax:_ Vorname Nachname. Artikeltitel. Zeitschrift Jahrgang/Volume (Jahr), Seiten. \
  _Beispiele:_ @Kili2006 @Lamp1981 @ThKZ2002 @Chau81 @Chau88

/ Zitierweise für Konferenzbeiträge: \
  _Syntax:_ Vorname Nachname. Beitragstitel. [Herausgeber/Editoren.]
  Konferenzband. [Volume. Buchserie.] Ort{[: Verlag]}, Datum, Seiten. \
  _Beispiele:_ @InBr2009 @WWPK2010 @HSFN2009 @GoRS99 @WaMS2008

/ Zitierweise für Onlinequellen: \
  _Syntax:_ Vorname Nachname. Titel. [Quelle.] Datum. URL (Zugriffszeitpunkt). \
  _Beispiele:_ @CCC2009 @Heise2011 @textwahrnehmung

Die Literatur sollte im Text durch alphanumerische Kürzel mit Erscheinungsjahr in eckigen Klammern angegeben werden.

In diesem Dokument wurde für die Erzeugung des Literaturverzeichnisses ebenfalls Typst verwendet. Im Literaturverzeichnis auf Seite~#pageref(<sec.bibliography>) können Beispiele angeschaut werden. Solange die Angaben zu einer Quelle vollständig sind, erzeugt Typst automatisch eine korrekte Quellenangabe, die allerdings je nach verwendetem `bibliography style` (hier: eigener Stil angelehnt an LaTeXs alphabetic) von den o.a. Hinweisen abweichen kann, was in Ordnung ist, solange die Angaben vollständig und einheitlich sind.

Teilweise wird in den Seminaren die Erstellung einer Literaturliste mit den fünf wichtigsten und besten Quellen gefordert. Hierfür existiert ebenfalls eine Vorlage für Typst.

== Wikipedia als Quellenangabe

Grundsätzlich sollte bei der Literaturarbeit darauf geachtet werden, dass die Originalquelle referenziert wird. Referenzen auf Wikipedia und Sekundärliteratur sollten daher möglichst vermieden werden.

Im wissenschaftlichen Kontext kann aber etwa aus didaktischen Gründen eine Referenz auf Inhalte aus Wikipedia, Lehrbücher und Sekundärliteratur trotzdem sinnvoll sein. Bei der Referenz auf einen Eintrag der Wikipedia ist es wichtig, auf eine spezielle Version des Dokuments (in der Regel die zum Abrufzeitpunkt aktuellste) zu verweisen. Dies wird innerhalb von Wikipedia mittels der sog. _oldid_ realisiert. Ein Beispiel hierfür ist @Wiki.

Werden generative KI-Programme wie etwa ChatGPT#footnote[https://openai.com/chatgpt, Abruf am 14.07.2023] oder GitHub Copilot#footnote[https://github.com/features/copilot/, Abruf am 14.07.2023] innerhalb einer wissenschaftlichen Arbeit dazu verwendet, #zb Programmschnippsel oder Text zu erzeugen, sind diese mit einer Quellenangabe klar als solche zu kennzeichnen. Es wird empfohlen, sowohl die Anfragen an als auch die Ausgaben von generativer KI in der eigenen Materialsammlung zu sichern, um später ggf. noch genau nachvollziehen zu können, was die Eigenleistung im Zusammenhang mit solchen Hilfsmitteln war.

== Angabe von Literaturreferenzen im Fließtext <sec.literaturfliesstext>

Beispiele für die korrekte Angabe von Referenzen im Fließtext finden sich an vielen Stellen in diesem Dokument. Im Fließtext sollen Quellenangaben immer möglichst dicht an der jeweiligen Paraphrasierung genannt werden. Die nachfolgenden Satzbeispiele zeigen, wie so etwas gehen kann:

Sowohl das Mix-Netz von #cite(<Chau81>, form: "prose") als auch das DC-Netz @Chau88 bilden die Grundlage vieler moderner Verfahren zum Schutz vor Beobachtung im Internet.
In @Beut2009[S.~13] wird ein Algorithmus zur statistischen Analyse der Cäsar-Chriffre angegeben. Soll bei einer Quellenangabe auch eine konkrete Seitenangabe gemacht werden, gelingt dies in Typst mit `@XYZ[S.~13]`#todo[Angabe \@XYZ durch das richtige Kürzel aus der `.bib`-Datei ersetzen.], siehe das Beispiel zuvor.

Gelegentlich sieht man auch die Quellenangabe am Ende eines Satzes. Wenn diese Form der Quellenangabe genutzt wird, dann bitte die Quellenangabe _vor_ das Satzzeichen setzen, wie in diesem Satz @XYZ. Danach kann es im Absatz mit weiteren Aussagen weitergehen, die sich auf andere Quellen beziehen können.

Die Übernahme längerer paraphrasierter Passagen aus bereits veröffentlichten Texten ist eher unerwünscht. Gelegentlich sieht man die Quellenangabe bei solchen aus mehreren Sätzen bestehenden paraphrasierten Passagen am Ende des Absatzes, wie hier in diesem Absatz demonstriert. Dann sollten sich innerhalb dieses Absatzes nur Aussagen finden, die sich auf diese eine Quelle beziehen, die dann _nach_ das letzte Satzzeichen des Absatzes gestellt wird. @XYZ

Bei Übernahme längerer paraphrasierter Inhalte sollte anstelle der nach dem letzten Satzzeichen gestellten Quellenangabe besser der jeweilige Absatz bzw. der jeweilige Abschnitt zu Beginn im Fließtext explizit darauf hinweisen, dass sich die nachfolgenden Bemerkungen auf die Quelle @XYZ beziehen. Eine wörtliche Übernahme aus Fremdtexten ist aber auch dann nicht erlaubt, abgesehen von kurzen Zitaten, die stets in Gänsefüßchen zu setzen sind.

== Vor der Abgabe

Vor der Abgabe sollten die Funktionen zur Rechtschreibprüfung und Silbentrennung genutzt werden. Dafür können beispielsweise spezielle Entwicklungsumgebungen verwendet werden, die für jedes gängige Betriebssystem verfügbar sind. 

Zusätzlich lohnt es sich, den Text vor Abgabe von jemandem lesen zu lassen (Freund, Freundin, Bekannte, Haustier), damit er auch sprachlich noch einmal überprüft wurde. Zudem ist auf die korrekte Kommasetzung zu achten.

Bachelor- und Masterarbeiten müssen nicht mehr gedruckt eingereicht werden. Stattdessen muss die Arbeit als PDF-Datei über einen Link vom Studienbüro abgegeben werden. Eine etwa im Prüfungssekretariat abgegebene CD erreicht uns gewöhnlich nicht. Falls Quellcodes und Programme erstellt wurden, sollte vor Abgabe mit der Betreuerin oder dem Betreuer besprochen werden, in welcher Weise diese abzugeben sind. 

= Betreuung und Bewertung der Arbeit

Für die Betreuung der Arbeit steht die bzw. der mit der Ausgabe der Aufgabenstellung genannte Betreuerin oder Betreuer zur Verfügung. Bitte nutzen Sie die Kontaktmöglichkeiten im Rahmen der Sprechstunden und nach Vereinbarung für regelmäßige Gespräche (mindestens etwa alle 2--3 Wochen). Sinnvollerweise sollte Sie jeweils darauf vorbereitet sein, einen kurzen mündlichen Bericht über den Stand der Bearbeitung zu geben. Während der Vorlesungszeit finden möglicherweise regelmäßige Treffen aller Bearbeiterinnen und Bearbeiter von Abschlussarbeiten statt, zu denen ggf. kurzfristig eingeladen wird. Jedes Gesprächsangebot sollte wahrgenommen werden!

== Schriftlicher Teil

Folgende *Meilensteine* sollten bereits zu Beginn der Bearbeitung des Themas im Kalender vermerkt werden:

Bei *Arbeiten mit etwa 3-monatiger Bearbeitungszeit* soll *nach 1,5 Monaten* die *Abgabe eines ersten Textentwurfs* bei der Betreuerin bzw. beim Betreuer erfolgen.#todo[Fragen an Betreuerin bzw. Betreuer ggf. in einem `#todo[xyz]` notieren] 
Wenn mit der Zweitbetreuerin bzw. dem Zweitbetreuer (bzw. Zweitgutachterin oder -gutachter, soweit vorhanden) nichts anderes vereinbart ist, sollte ihr bzw. ihm zu diesem Zeitpunkt ein Zwischenbericht geliefert werden und ggf. nachgefragt werden werden, ob der aktuelle Textentwurf zur Kommentierung überlassen werden soll.

Bei *Arbeiten mit etwa 6-monatiger Bearbeitungszeit* soll *nach 2 Monaten* ein etwa 12-seitiger Textentwurf inkl. Gliederungsentwurf vorliegen und *nach weiteren 2 Monaten* ein erster vollständiger Textentwurf.

Die Textentwürfe werden von uns gelesen, kommentiert und zurückgegeben. Die Meilensteine dienen der Fortschrittskontrolle und sind für die endgültige Bewertung der Arbeit bedeutungslos; Fehler dürfen sorgenfrei gemacht werden.

== Allgemeines zur Bewertung

Typische Kontrollfragen zur Beurteilung einer Arbeit sind:

- Wurde die Fragestellung auf hohem Niveau bearbeitet?
- Handelt es sich um eine kreative Herangehensweise bzw. Lösung?
- Sind die Annahmen und getroffenen Voraussetzungen realistisch, oder wurden unzulässige Vereinfachungen vorgenommen?
- Sind alle Aussagen klar und verständlich formuliert?
- Wurde die Literatur zur Kenntnis genommen?
- Falls Programme entwickelt wurden: Sind die Quellcodes dokumentiert, die Module und Schnittstellen beschrieben? Gibt es eine Programmbeschreibung?
- Wie ist die äußere Form (Layout, Rechtschreibung, Grammatik)?
- Ist der Umfang angemessen?

George H. Heilmeier hat in einen nach ihm benannten Heilmeier-Katechismus #footnote[https://www.darpa.mil/work-with-us/heilmeier-catechism, Abruf am 03.11.2023] einige Fragen formuliert, die Orientierung sowohl bei der Erstellung einer Arbeit als auch bei ihrer Bewertung geben können.
Sie werden hier in einer leicht angepassten deutschen Übersetzung #footnote[siehe auch https://de.wikipedia.org/wiki/George_H._Heilmeier, Abruf am 03.11.2023] wiedergegeben:

- Was hast Du vor? Beschreibe Dein Vorhaben, möglichst ohne viele Fachbegriffe zu verwenden.
- Wie wird es bislang gemacht und was sind die Grenzen der derzeitigen Verfahren oder Methoden?
- Was ist neu an Deinem Ansatz und warum denkst Du, dass er erfolgreich sein wird?
- Wen kümmert’s? Wenn Du erfolgreich bist, was für einen Unterschied wird Deine Lösung machen?
- Was sind die Risiken und was die Vorteile Deiner Lösung?
- Wie viel wird sie kosten und wie lange wird die Umsetzung dauern?
- Woran kann man im Verlauf des Projekts und zu dessen Ende den Erfolg messen?

== Punktesystem zur Beurteilung der schriftlichen Ausarbeitung

Bei der Bewertung der schriftlichen Ausarbeitung wird ein Punkteschema verwendet, das sich an @faui2 orientiert, welches ursprünglich am Lehrstuhl für Informatik 2 (Programmiersysteme) der Friedrich-Alexander Universität Erlangen-Nürnberg entwickelt wurde. Die folgende Übersicht ist eine gekürzte und angepasste Übernahme von @faui2.

==== Allgemeine Hinweise
Die Arbeit wird unter fünf Aspekten einzeln bewertet, die jedoch nicht gleichgewichtig sind. Das verschiedene Gewicht wird dadurch berücksichtigt, dass für die einzelnen Aspekte verschieden hohe Punktzahlen zur Verfügung stehen (siehe @tbl:punktzahl).

#figure(caption: [Maximale Punktzahlen pro Aspekt],
  table(columns: 2, align: (left, left), stroke: none,           hlinegray,
    [0--6  Punkte], [Schwierigkeitsgrad],                        hlinegray,
    [0--8  Punkte], [Schöpferische Originalität],                hlinegray,
    [0--10 Punkte], [wissenschaftliche Arbeitstechnik],          hlinegray,
    [0--4  Punkte], [Stil],                                      hlinegray,
    [0--3  Punkte], [Äußere Form],                               hlinegray,
    table.cell(colspan: 2, [0--31 Punkte insgesamt erreichbar]), hlinegray,
  )
) <punktzahl>

==== Notenstufen
Arbeiten, bei denen für wissenschaftliche Arbeitstechnik weniger als 4~Punkte oder für die wissenschaftliche Arbeitstechnik, den Stil und die Form zusammen weniger als 8~Punkte vergeben wurden, erhalten die Note~5 (nicht ausreichend, nicht bestanden). Alle anderen Arbeiten werden nach @tbl:noten benotet.

#set table(stroke: sgray)
#figure(caption: [Punkte- und Notenverteilung],
  table(columns: 11, 
    [Punkte],
    [31--29], [28--27],  [26--25], [24--23], [22--21],  [20--19], [18--17], [16--15],  [14--13], [12--11],
    table.cell(rowspan: 2, [Noten]),
    [1,0],    [1,3],     [1,7],    [2,0],    [2,3],     [2,7],    [3,0],    [3,3],     [3,7],    [4,0],
    table.cell(colspan: 2, [sehr gut]),
    table.cell(colspan: 3, [gut]),
    table.cell(colspan: 3, [befriedigend]),
    table.cell(colspan: 2, [ausreichend]),
  )
) <noten>

==== 1. Schwierigkeitsgrad (0--6)
Bei der Beurteilung des Schwierigkeitsgrades ist davon auszugehen, ob die Problemstellung mit der durchschnittlichen Ausgangsqualifikation der Bearbeitungsgruppe gelöst werden kann (4~Punkte). Die Beurteilung des Schwierigkeitsgrades einer Arbeit kann erst nach Abschluss erfolgen und umfasst die Prüfung, ob die vorgelegte Fassung die genannten Merkmale auch tatsächlich enthält.

==== 2. Schöpferische Originalität (0--8)
Bei der Beurteilung der schöpferischen Originalität ist nicht nur davon auszugehen, inwieweit die Bearbeiterin bzw. der Bearbeiter der Anleitung und Führung durch die Betreuerin bzw. den Betreuer bedarf. Es ist vielmehr selbstverständlich, dass die Bearbeiterin bzw. der Bearbeiter Initiative entwickelt, d.h. aus eigenem Antrieb Schwierigkeiten aufgreift und mit der Betreuerin bzw. dem Betreuer diskutiert (4~Punkte).

==== 3. Wissenschaftliche Arbeitstechnik (0--10)
Bei der Beurteilung der wissenschaftlichen Arbeitstechnik ist nicht nur vom Grad der Fehlerfreiheit (formale Richtigkeit der Aussagen und eventueller Programme) auszugehen, die vielmehr als selbstverständlich vorausgesetzt werden muss. Daneben fällt sehr stark das Ausmaß der Selbstkontrolle ins Gewicht, das sich bei formalen Aussagen in der Beweisgründlichkeit, bei Programmen in ausführlichen Tests zeigt. Bezüglich der Programmrichtigkeit darf davon ausgegangen werden, dass bei hinreichend modularem Programmaufbau eine durchdachte (Begründung!) Menge von Testprogrammen genügt (5~Punkte).

==== 4. Stil (0--4)
Bei der Beurteilung des Stils ist von der sprachlichen Ausdrucksfähigkeit auszugehen, die sich der Leserin bzw. dem Leser in der vorgelegten Arbeit bietet. Diese zeigt sich insbesondere in der Klarheit und Kürze des Ausdrucks: Auch schwierige Probleme müssen verständlich dargelegt, triviale Zusammenhänge nicht hinter einem formalen Apparat verborgen sein. Die Gedankenführung muss eindeutig sein (2~Punkte).

==== 5. Äußere Form (0--3)
Bei der Beurteilung der äußeren Form fällt neben der Sorgfalt der Ausführung, insbesondere der Zeichnungen und Tabellen, die Klarheit der Gliederung und des
Inhaltsverzeichnisses ins Gewicht (2~Punkte).

== Referat

Oft müssen die Ergebnisse der Arbeit in einem Referat vorgestellt werden. Generell gilt: Ein Referat soll die Zuhörerschaft gezielt informieren. Bei der Vorbereitung des Referats sollte deshalb Klarheit darüber bestehen, wieviele Zuhörerinnen und Zuhörer voraussichtlich teilnehmen werden, welches Vorwissen sie haben und mit welchen Erwartungen sie zu dem Referat gekommen sind.

Übersichtliche Folien sind für die bzw. den Vortragenden und die Zuhörerinnen und Zuhörer eine große Unterstützung. Die Folien sollten nummeriert sein, nicht mehr als 4--8 Stichpunkte enthalten, keinen Fließtext und aussagekräftige Abbildungen. Bei Farbfolien sollte man sich auf drei bis vier Farben beschränken, die durchgehend durch die Präsentation verwendet werden. Ansonsten wirken die Folien bunt und unruhig. Schriften ohne oder mit unauffälligen Serifen (#zb Helvetica, Calibri oder Verdana) in 18--20pt eignen sich sehr gut für Vortragsfolien. Es existieren am Arbeitsbereich Templates für Folien, die möglichst verwendet werden sollten.

Als Daumenregel gilt: Folienanzahl $approx$ Vortragszeit / 3 Minuten.

Während des gesamten Vortrags sollte man ins Publikum schauen und nicht zur Wand oder in den Laptop.

Auch das Referat wird nach festgelegten Kriterien beurteilt: 

#figure(outlined: false, [ 
#set align(left)
#set list(marker: none)
- #box(fill: luma(235), inset: 3pt, width: 1fr)[*Vortragsstil*]
  #set list(marker: square(height: 0.75em))
  - Sicheres Auftreten
  - Kontakt zum Zuhörer
  - Deutliche Sprechweise
  - Angemessenes Tempo
  - Freies Sprechen
  - Einhalten der Zeit
- #box(fill: luma(235), inset: 3pt, width: 1fr)[*Inhalt*]
  #set list(marker: square(height: 0.75em))
  - Verständlichkeit des Inhalts
  - Prägnanz
  - Konzept/Gliederung
  - Beispiele
  - Angemessene Detailtiefe
- #box(fill: luma(235), inset: 3pt, width: 1fr)[*Folien/Demo*]
  #set list(marker: square(height: 0.75em))
  - Vertrautheit mit Folien/Demo
  - Verständlichkeit der Folien/Demo
  - Qualität der Abbildungen
  - Nachvollziehbarkeit der Demo (falls vorhanden)
])

Manchmal verwenden wir auch ein kleines Feedback-Formular „Rump-Session“ (@fig:rumpsession) auf Papier, das an die Zuhörenden ausgegeben wird und später ausgefüllt an die Vortragenden ausgehändigt wird.

#figure(kind: image, 
  caption: flex-caption([Das Papier-Formular „Rump-Session“ für Feedback zum Vortrag wird an das Publikum ausgeteilt, anonym ausgefüllt und anschließend an die Vortragenden zurückgegeben.], [Papier-Formular „Rump-Session“]),
  box(stroke: sgray, rumpSessionQuestionaire(width: auto, fontsize: 0.8em))
) <rumpsession>

Ein Kolloquium zur Abschlussarbeit kann auch vor Abgabe der schriftlichen Ausarbeitung stattfinden. Der Vorteil ist, dass ggf. noch Tipps gegeben werden, die in die schriftliche Ausarbeitung einfließen können. Bitte sprechen Sie Ihre Betreuerin bzw. Ihren Betreuer an, wenn Sie Interesse an einem vorgezogenen Kolloquiumstermin haben.

// = Schlussbemerkungen
#heading(level: 1, flex-caption([Diese Überschrift ist zur Demonstration von `flex-caption` besonders lang und das Kapitel enthält die Schlussbemerkungen],[Schlussbemerkungen]))
// Durch den vorangegangenen Befehl wird im Inhaltsverzeichnis nur das kurze Wort „Schlussbemerkungen“ stehen, weil die Überschrift viel zu lang wäre und die Optik und Übersichtlichkeit des Inhaltsverzeichnis stören würde.

Im Internet sind zahlreiche Erfahrungsberichte von (renommierten) Wissenschaftlerinnen und Wissenschaftlern zu finden, die auch bei der Bearbeitung einer Seminar- oder Abschlussarbeit hilfreich sein können. Hier einige wenige Empfehlungen:

- Randy Pausch Lecture: Time Management. \ http://www.youtube.com/watch?v=oTugjssqOT0
- Richard Hamming: You and Your Research. \ http://www.cs.virginia.edu/~robins/YouAndYourResearch.html
- Nick Feamster: Writing Tips for Academics. \ http://greatresearch.org/2013/10/11/storytelling-101-writing-tips-for-academics/

Eine besondere Empfehlung ist der Duden-Ratgeber „Wie schreibt man wissenschaftliche Arbeiten?“ von Ulrike Pospiech @Posp2012, der Informationen und Beispiele zu allen wichtigen Themen bezüglich wissenschaftlicher Texte enthält.

Wissenschaftliches Arbeiten und Schreiben will gelernt sein. Dafür dienen während des Studiums u.a. die Seminararbeiten. Die Abschlussarbeit soll dann zeigen, welche methodischen und fachlichen Fähigkeiten während des Studiums erworben wurden. 

Das Bearbeiten von wissenschaftlichen Fragestellungen während des Studiums schult zudem auch die Entschlussfähigkeit. Wenn Sie sich etwa zwischen zwei Darstellungsvarianten eines Problems entscheiden sollen, warten Sie nicht zu lange damit und grübeln Sie bitte nicht zuviel, sonst landen Sie in einem Deadlock. Dieses Phänomen ist als das Buridansche Paradoxon (auch: Buridans Esel, Grasbüschelproblem) @BuridansAss bekannt.

Vielleicht sind auch die Angebote der Schreibberatung#footnote[https://www.hul.uni-hamburg.de/schreibzentrum/schreibberatung.html] oder der psychologischen Beratung#footnote[https://www.uni-hamburg.de/campuscenter/beratung/beratungsangebote/psychologische-beratung.html] für Sie hilfreich, wenn Sie merken, dass Sie ohne Hilfe nicht gut weiterkommen. Die Universität Hamburg verfügt über zahlreiche Hilfs- und Beratungsangebote#footnote[https://www.uni-hamburg.de/campuscenter/beratung/beratungsangebote.html], die auch für Sie nützlich sein können.


Neben einem guten Zeitmanagement, Disziplin und Bereitschaft zur Literaturrecherche ist die Kommunikation mit der Betreuerin bzw. dem Betreuer ein Schlüssel zur erfolgreichen Bearbeitung des Themas.
