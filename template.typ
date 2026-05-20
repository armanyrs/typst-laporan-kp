#let laporan(
  title: "Laporan Kerja Praktik",
  name: "",
  nrp: "",
  prodi: "",
  departemen: "",
  perusahaan: "",
  doc,
) = {
  set page(paper: "a4")
  set text(font: "Times New Roman", size: 12pt)
  set par(justify: true, leading: 0.65em)
  set heading(numbering: "1.")
  doc
}

#let lembar-pengesahan(body) = body
