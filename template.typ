#let lembar-pengesahan(body) = {
  set page(
    margin: (left: 4cm, top: 3cm, right: 3cm, bottom: 3cm),
    background: image("media/bg-pengesahan.jpg", width: 100%, height: 100%, fit: "cover")
  )
  set text(font: "Times New Roman", size: 12pt, lang: "id")
  set par(justify: false, first-line-indent: 0pt, leading: 1em, spacing: 0.85em)

  align(center)[
    #v(0.4cm)
    #text(weight: "bold", size: 14pt)[HALAMAN PENGESAHAN]
    #text(weight: "bold", size: 14pt)[KERJA PRAKTIK]
    #v(0.8cm)
    #body
  ]
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
  v(1.2cm)
  align(center)[
    #text(weight: "bold", size: 14pt)[
      #upper(title) \
      DI #upper(perusahaan)
    ]
    
    #v(1.2cm)
    #image("media/logo-pens.png", width: 2.9cm)
    #h(0.8cm)
    #image("media/lentera_nusantara_logo.png", width: 2.9cm)
    #v(1.1cm)

    #text(weight: "bold", size: 12pt)[Oleh:]
    #v(0.2cm)
    #text(weight: "bold", size: 12pt)[#name]
    #text(weight: "bold", size: 12pt)[NRP. #nrp]

    #v(1fr)

    #text(weight: "bold", size: 12pt)[
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
