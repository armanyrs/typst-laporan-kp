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
  // Cover layout (first page follows sample PDF style)
  set page(paper: "a5", margin: 0cm)
  set text(font: "Times New Roman", size: 12pt, lang: "id")
  set par(justify: false, first-line-indent: 0pt, leading: 1em, spacing: 1em)

  // -- COVER PAGE --
  place(top + left, dy: 4.5cm)[
    rect(width: 100%, height: 100%, fill: rgb("#f6d100"))
  ]
  place(top + right)[
    rect(width: 4.9cm, height: 4.6cm, fill: white)
  ]
  place(top + left, dx: 1.9cm, dy: 0.9cm)[
    image("media/logo-pens.png", width: 2.9cm)
  ]
  place(top + right, dx: -0.9cm, dy: 1.9cm)[
    text(weight: "bold", size: 14pt)[KERJA PRAKTEK]
  ]

  v(6.0cm)
  align(center)[
    #text(weight: "bold", size: 13pt)[
      #upper(title) \
      DI #upper(perusahaan)
    ]
    #v(1.25cm)
    #text(weight: "bold", size: 11pt)[Oleh :]
    #v(0.55cm)
    #text(weight: "bold", size: 11pt)[#name NRP.#nrp]
    #v(1.0cm)
    #text(weight: "bold", size: 11pt)[Dosen Pembimbing :]
    #v(0.55cm)
    #text(weight: "bold", size: 11pt)[........................................]
    #v(0.15cm)
    #text(weight: "bold", size: 11pt)[NIP. .....................................]
    #v(0.9cm)
    #text(weight: "bold", size: 11pt)[
      PROGRAM STUDI #upper(prodi) \
      DEPARTEMEN #upper(departemen) \
      POLITEKNIK ELEKTRONIKA NEGERI SURABAYA \
      #datetime.today().year()
    ]
  ]

  pagebreak()

  // Paper layout for remaining pages
  set page(paper: "a4", margin: (left: 4cm, top: 3cm, right: 3cm, bottom: 3cm))
  set par(justify: true, first-line-indent: 0.5in, leading: 1em, spacing: 1.5em)

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
