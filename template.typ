#let lembar-pengesahan(body) = {
  set page(
    margin: (left: 4cm, top: 3cm, right: 3cm, bottom: 3cm),
    background: image("media/bg-pengesahan.jpg", width: 100%, height: 100%, fit: "cover")
  )
  body
}

#let laporan(
  title: "LAPORAN KERJA PRAKTIK",
  name: "",
  nrp: "",
  prodi: "",
  departemen: "",
  perusahaan: "",
  body,
) = {
  // Paper layout
  set page(paper: "a4", margin: (left: 4cm, top: 3cm, right: 3cm, bottom: 3cm))
  set text(font: "Times New Roman", size: 12pt, lang: "id")

  // Paragraph settings: justified, 1.5 spacing
  set par(justify: true, first-line-indent: 0.5in, leading: 1em, spacing: 1.5em)

  // -- COVER PAGE --
  v(2cm)
  align(center)[
    #text(weight: "bold", size: 16pt)[
      #upper(title) \
      DI #upper(perusahaan)
    ]
    
    #v(2cm)
    #image("media/logo-pens.png", width: 5cm)
    #v(2cm)

    #text(weight: "bold", size: 14pt)[
      Oleh: \
      #name \
      NRP. #nrp
    ]

    #v(1fr)

    #text(weight: "bold", size: 14pt)[
      PROGRAM STUDI #upper(prodi) \
      DEPARTEMEN #upper(departemen) \
      POLITEKNIK ELEKTRONIKA NEGERI SURABAYA \
      #datetime.today().year()
    ]
  ]

  pagebreak()

  // -- BODY CONTENT --
  
  // Set heading numbering for chapters
  set heading(numbering: "1.1")

  // heading 1 (BAB)
  show heading.where(level: 1): it => {
    set par(spacing: 0pt, first-line-indent: 0pt)
    pagebreak(weak: true)
    align(center)[
      #v(24pt)
      #text(weight: "bold", size: 14pt)[
        #if it.numbering != none [
          BAB #counter(heading).display() \
        ]
        #it.body
      ]
      #v(24pt)
    ]
  }

  // heading 2 (Sub-bab)
  show heading.where(level: 2): it => {
    set text(size: 12pt, weight: "bold")
    set par(spacing: 0pt, first-line-indent: 0pt)
    v(18pt)
    [#it \ ]
  }

  body
}
