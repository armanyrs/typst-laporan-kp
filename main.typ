#import "template.typ": laporan, lembar-pengesahan

#show: doc => laporan(
  title: "Laporan Kerja Praktik",
  name: "Armany Rizqullah Saputra",
  nrp: "5323600029",
  prodi: "Teknologi Rekayasa Multimedia",
  departemen: "Teknologi Multimedia Kreatif",
  perusahaan: "PT Unimaksima Lentera Nusantara, Bandung",
  doc,
)

// -- Halaman Sebelum BAB 1 --
#set page(numbering: "i", number-align: center)
#counter(page).update(1)

#lembar-pengesahan[
  #align(center)[
    #text(weight: "bold", size: 14pt)[LEMBAR PENGESAHAN]
  ]
  #v(2em)
  // Isi lembar pengesahan bisa disesuaikan di sini
  Laporan Kerja Praktik ini telah disetujui dan disahkan pada tanggal ...
]

#pagebreak()

#heading(level: 1, numbering: none)[ABSTRAK]
Ini adalah bagian abstrak dari laporan kerja praktik.

#heading(level: 1, numbering: none)[KATA PENGANTAR]
Puji syukur kami panjatkan...

#pagebreak()
#heading(level: 1, numbering: none)[DAFTAR ISI]
#outline(title: none, indent: auto)
#pagebreak()

// -- Halaman BAB 1 dan Seterusnya --
#set page(numbering: "1", number-align: right)
#counter(page).update(1)

= PENDAHULUAN

== Latar Belakang
Kerja praktik ini dilaksanakan untuk memenuhi persyaratan kelulusan...

== Perumusan Masalah
1. Bagaimana cara menerapkan...
2. Apa saja kendala yang...

== Tujuan
Tujuan dari kerja praktik ini adalah...

= GAMBARAN UMUM PERUSAHAAN

== Profil Perusahaan
PT Unimaksima Lentera Nusantara bergerak di bidang...

== Struktur Organisasi
Berikut adalah struktur organisasi dari perusahaan...

= HASIL KEGIATAN KERJA PRAKTIK

== Pelaksanaan Kegiatan
Kegiatan kerja praktik dilaksanakan selama...

== Hasil yang Dicapai
Selama pelaksanaan KP, telah berhasil dikembangkan...

= KESIMPULAN DAN SARAN

== Kesimpulan
Dari pelaksanaan kerja praktik, dapat disimpulkan bahwa...

== Saran
Untuk kegiatan kerja praktik selanjutnya, disarankan...
