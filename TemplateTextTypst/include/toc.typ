// copied from typst discord @xkevio (and adjusted)
#let parcio-outline(title: [Contents], chapter-font: "New Computer Modern") = context {
  heading(outlined: false, numbering: none)[#title]
  let headings = query(heading.where(outlined: true))
  let h-counter = counter("h")
  let toc = ()

  for h in headings {
    if h.level > 3 {continue}
    let formatted-heading = if h.level > 1 {
      h.body
    } else {
      text(font: chapter-font)[*#h.body*]
    }

    let page = counter(page).at(h.location()).join()
    let formatted-page = if h.level == 1 {
      set text(font: chapter-font)
      strong[#page]
    } else {
      page
    }
    let formatted-counter = if h.level == 1 {
      if h.body not in ([Literatur], [References]) {
        set text(font: chapter-font)
        box[#pad(right: 0.75em)[
          #context strong[#h-counter.display("1.1")]
        ]]
      }
    } else {
      box[#pad(right: 0.75em)[
        #context h-counter.display("1.1")
      ]]
    }
    
    let h-pad = (none, 0em, 1.4em, 3.5em).at(h.level)
    
    let v-pad = if h.level == 1 [
      #if headings.first() != h [
        #v(0.5em)
      ]
    ] else [
      #v(-0.5em)
    ]

    let linked-heading = box[#pad(left: h-pad)[
      #h-counter.step(level: h.level)
      #link(h.location())[#formatted-counter#formatted-heading]
    ]]
    
    toc.push(
      v-pad + 
      linked-heading +
      box(width: 1fr)[
        #if h.level != 1 [
          #repeat[~~.]
        ]
      ] +
      box(width: 2.5em)[#align(right)[#formatted-page]]
    )
  }

  stack(dir: ttb, spacing: 1em, ..toc)
}
