// --------------------------------------------------------------------------------
// Template for seminar literatur list
// --------------------------------------------------------------------------------
#import "include/templateuhhsvs.typ": *

#show: templateuhhsvs.with(type: "literatur",

  // ----- Seminar topic
  title: "Privacy Enhancing Technologies zum Schutz von Kommunikationsbeziehungen",

  // ----- Student names
  authors: (
    author(name: "Eva Musterfrau"),
    author(name: "Heinz Mustermann"),
  ),

  // ----- Please add literature to ref.bib and provide their shortcuts here: 
  sources: (
    <Chau81>,
    <Chau88>,
    <GoRS99>,
    <Pfit90>,
    <WaMS2008>,
  )
)

Diese Quellen wurden ausgewählt, weil @Chau81 ...
