#import "@preview/decasify:0.11.3": titlecase

#let lembar-pengesahan(body) = {
  set page(
    margin: (left: 4cm, top: 3cm, right: 3cm, bottom: 3cm),
    background: image("media/bg-pengesahan.jpg", width: 100%, height: 100%, fit: "cover"),
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
  dospem: "",
  nip: "",
  prodi: "",
  departemen: "",
  perusahaan: "",
  body,
) = {
  // Cover layout (first page follows sample PDF style)
  let cover-yellow-start = 6.35cm
  let cover-yellow-fill = rgb("#f6d100")
  let cover-header-width = 6.95cm
  let cover-header-height = 6.5cm

  set page(paper: "a5", margin: 0cm)
  set text(font: "Times New Roman", size: 10pt, lang: "id")
  set par(justify: false, first-line-indent: 0pt, leading: 1em, spacing: 1em)

  // -- COVER PAGE --
  // These constants mirror the first-page proportions in Contoh_Laporan_KP.pdf.
  place(top + left, dy: cover-yellow-start)[
    #rect(width: 100%, height: 100%, fill: cover-yellow-fill)
  ]
  // place(top + right)[
  //   #rect(width: cover-header-width, height: cover-header-height, fill: white)
  // ]
  place(top + left, dx: 2.7cm, dy: 1.3cm)[
    #image("media/logo-pens.png", width: 4.1cm)
  ]
  place(top + right, dx: -1.3cm, dy: 2.7cm)[
    #text(weight: "bold", size: 14pt)[KERJA PRAKTIK]
  ]

  v(8.5cm)
  align(center)[
    #text(weight: "bold", size: 12pt)[
      #upper(title) \
      DI #upper(perusahaan)
    ]
    #v(1.25cm)
    #text(weight: "bold")[Oleh:]
    #v(0.55cm)
    #text(weight: "bold")[#underline()[#name] \ NRP. #nrp]
    #v(1.0cm)
    #text(weight: "bold")[Dosen Pembimbing:]
    #v(0.55cm)
    #text(weight: "bold", lang: "en")[#titlecase()[#underline()[#dospem]] \ NIP. #nip]
    #v(0.15cm)
    // #text(weight: "bold", size: 12pt)[NIP. ______________________]
    #v(0.9cm)
    #text(weight: "bold")[
      PROGRAM STUDI #upper(prodi) \
      DEPARTEMEN #upper(departemen) \
      POLITEKNIK ELEKTRONIKA NEGERI SURABAYA \
      #datetime.today().year()
    ]
  ]

  pagebreak()

  // Paper layout for remaining pages
  set page(paper: "a5", margin: (left: 4cm, top: 3cm, right: 3cm, bottom: 3cm))
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
