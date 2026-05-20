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
  Laporan Kerja Praktik ini telah disetujui dan disahkan pada tanggal ...
]

#pagebreak()

#heading(level: 1, numbering: none)[ABSTRAK]
Industri game global mengalami pertumbuhan yang signifikan seiring meningkatnya adopsi platform digital dan kebutuhan pengguna terhadap pengalaman interaktif yang personal. Pada segmen visual novel, kualitas produk ditentukan oleh kekuatan naratif, kestabilan alur percabangan, dan konsistensi tampilan teks pada antarmuka. Kondisi tersebut menuntut pengembangan perangkat lunak yang tidak hanya kreatif, tetapi juga terstruktur secara teknis agar iterasi konten dapat berlangsung cepat tanpa menurunkan kualitas pengalaman pengguna.

Kerja Praktik ini dilaksanakan di PT Unimaksima Lentera Nusantara dengan peran sebagai Unity Game Programmer pada proyek Visual Novel 101 Forgotten. Ruang lingkup kegiatan mencakup refactoring script C# dari pendekatan hardcoded ke data-driven, integrasi dan migrasi Naninovel hingga versi 2.1, pengembangan sistem lokalisasi multibahasa Indonesia-Jepang, serta modernisasi antarmuka dari Legacy Text ke TextMeshPro. Implementasi teknis juga mencakup perbaikan transisi visual novel ke mode adventure 3D, penataan routing script, dan penguatan fitur codex berbasis command kustom.

Hasil kegiatan menunjukkan peningkatan pada keterpeliharaan basis kode, stabilitas eksekusi narasi, dan kesiapan distribusi konten lintas bahasa. Perubahan arsitektur pada layer script dan lokalisasi memberikan dampak langsung terhadap efisiensi kolaborasi tim, pengurangan risiko error saat iterasi, serta peningkatan kualitas penyajian pengalaman bermain. Secara umum, kerja praktik ini menegaskan bahwa optimalisasi engineering workflow pada proyek visual novel merupakan faktor penting dalam menjaga keberlanjutan pengembangan produk.

Kata kunci: Unity, C#, Naninovel, visual novel, lokalisasi bahasa, refactoring.

#heading(level: 1, numbering: none)[KATA PENGANTAR]
Puji syukur ke hadirat Allah SWT atas rahmat dan karunia-Nya sehingga laporan Kerja Praktik ini dapat diselesaikan dengan baik. Laporan ini disusun sebagai bentuk pertanggungjawaban akademis atas pelaksanaan kerja praktik di PT Unimaksima Lentera Nusantara, sekaligus sebagai media refleksi atas proses pembelajaran pada lingkungan pengembangan game profesional.

Selama pelaksanaan kegiatan, banyak pengalaman teknis yang diperoleh, mulai dari penataan arsitektur script C#, penguatan sistem naratif berbasis Naninovel, hingga implementasi lokalisasi multibahasa pada antarmuka dan konten cerita. Keseluruhan proses tersebut memberikan pemahaman praktis mengenai pentingnya integrasi antara kebutuhan desain naratif, rekayasa perangkat lunak, dan kolaborasi lintas fungsi dalam pipeline produksi visual novel.

Ucapan terima kasih disampaikan kepada pihak perusahaan, dosen pembimbing, serta seluruh pihak yang telah memberikan arahan dan dukungan selama kegiatan berlangsung. Penulis menyadari bahwa laporan ini masih memiliki keterbatasan, sehingga kritik dan saran yang membangun sangat diharapkan demi penyempurnaan karya pada masa mendatang. Semoga laporan ini dapat memberikan manfaat bagi institusi, perusahaan, serta mahasiswa yang akan melaksanakan kerja praktik pada bidang pengembangan game.

#pagebreak()
#heading(level: 1, numbering: none)[DAFTAR ISI]
#outline(title: none, indent: auto)
#pagebreak()

// -- Halaman BAB 1 dan Seterusnya --
#set page(numbering: "1", number-align: right)
#counter(page).update(1)

= PENDAHULUAN

== Latar Belakang
Industri game berkembang sangat pesat dalam dekade terakhir, ditandai dengan peningkatan jumlah pemain, perluasan kanal distribusi digital, dan pertumbuhan kebutuhan konten interaktif yang semakin beragam. Perkembangan ini mendorong perusahaan pengembang untuk menghasilkan produk yang bukan hanya menarik secara visual, tetapi juga stabil secara teknis dan adaptif terhadap perubahan kebutuhan pengguna.

Pada konteks tersebut, visual novel menjadi salah satu genre yang menonjol karena menempatkan narasi, percabangan alur, dan kualitas penyajian teks sebagai elemen utama pengalaman bermain. Kompleksitas pengelolaan skenario, dialog, state permainan, dan transisi antarmode menuntut fondasi rekayasa perangkat lunak yang terstruktur. Jika arsitektur script tidak dirancang dengan baik, proses iterasi konten berpotensi lambat, risiko bug meningkat, dan koordinasi lintas tim menjadi kurang efisien.

Selain optimalisasi script, lokalisasi bahasa juga menjadi aspek strategis untuk memperluas jangkauan pasar visual novel. Kualitas lokalisasi tidak hanya ditentukan oleh terjemahan teks, tetapi juga oleh kesiapan sistem untuk menampilkan konten lintas bahasa secara konsisten pada berbagai komponen UI dan alur narasi. Implementasi sistem lokalisasi yang lemah dapat menimbulkan ketidaksesuaian istilah, fallback yang tidak diharapkan, hingga gangguan pengalaman pengguna.

Berdasarkan kebutuhan tersebut, pelaksanaan kerja praktik di PT Unimaksima Lentera Nusantara difokuskan pada penguatan fondasi teknis proyek visual novel melalui peran Unity Game Programmer. Kontribusi yang dilakukan meliputi refactoring script C#, integrasi dan penyesuaian Naninovel, serta pengembangan pipeline lokalisasi multibahasa yang mendukung siklus produksi konten secara berkelanjutan.

== Rumusan Masalah
1. Bagaimana penerapan refactoring script C# dapat meningkatkan keterpeliharaan kode dan efisiensi pengembangan proyek visual novel berbasis Unity?
2. Bagaimana integrasi Naninovel dapat memperkuat pengelolaan alur narasi, transisi mode permainan, dan stabilitas eksekusi script?
3. Bagaimana pengembangan sistem lokalisasi multibahasa dapat menjaga konsistensi konten UI dan dialog secara dinamis?

== Tujuan
1. Menerapkan praktik refactoring pada script C# untuk membangun basis kode yang lebih modular, rapi, dan mudah dipelihara.
2. Mengoptimalkan integrasi Naninovel untuk mendukung routing cerita, command kustom, dan sinkronisasi mode visual novel dengan mode adventure 3D.
3. Mengembangkan mekanisme lokalisasi bahasa berbasis managed text dan dokumen teks agar pembaruan konten lintas bahasa lebih sistematis.
4. Meningkatkan pemahaman terhadap alur kerja pengembangan game di lingkungan industri, khususnya pada proyek visual novel.

== Manfaat
1. Bagi mahasiswa, kegiatan ini memperkuat kompetensi teknis pemrograman Unity, manajemen sistem naratif, serta praktik lokalisasi dalam proyek nyata.
2. Bagi perusahaan, kontribusi teknis mendukung penguatan stabilitas produk, efisiensi iterasi konten, dan konsistensi pengembangan lintas tim.
3. Bagi institusi pendidikan, hasil kerja praktik menjadi rujukan keterkaitan kompetensi akademik dengan kebutuhan industri game berbasis narasi.

= GAMBARAN UMUM PERUSAHAAN

== Sejarah Singkat PT Unimaksima Lentera Nusantara
PT Unimaksima Lentera Nusantara berkembang sebagai perusahaan kreatif digital yang menempatkan pengembangan produk interaktif sebagai fokus utama kegiatan bisnis. Dalam konteks kerja praktik ini, perusahaan menunjukkan orientasi pada pengembangan game berbasis narasi yang memadukan kebutuhan desain cerita, pengelolaan aset, dan implementasi teknis dalam satu pipeline produksi.

Seiring pengembangan proyek, kebutuhan perusahaan bergerak pada penguatan skalabilitas proses produksi, terutama pada pengelolaan script, konsistensi antarmuka, dan lokalisasi konten lintas bahasa. Arah tersebut menjadi landasan penting yang menjelaskan mengapa kontribusi kerja praktik difokuskan pada refactoring sistem, integrasi engine naratif, serta standardisasi alur lokalisasi.

== Struktur Organisasi PT Unimaksima Lentera Nusantara
Struktur organisasi perusahaan pada proyek pengembangan game tersusun atas fungsi manajerial, fungsi kreatif, dan fungsi teknis yang bekerja secara terkoordinasi. Fungsi manajerial berperan dalam perencanaan target dan kontrol kualitas, fungsi kreatif menangani desain naratif serta arah artistik, sedangkan fungsi teknis memastikan implementasi fitur berjalan stabil sesuai kebutuhan produksi.

Pada alur tersebut, posisi Unity Game Programmer berada pada titik integrasi antara kebutuhan desain dan realisasi sistem di engine Unity. Peran ini menuntut komunikasi aktif dengan tim naratif, UI/UX, dan programmer lain agar perubahan konten, routing cerita, serta lokalisasi dapat diimplementasikan konsisten tanpa mengganggu stabilitas build.

= HASIL KEGIATAN KERJA PRAKTIK

== Ruang Lingkup Kegiatan
Pelaksanaan kerja praktik berlangsung pada pengembangan proyek Visual Novel 101 Forgotten dengan tanggung jawab utama pada penguatan sistem gameplay berbasis script, manajemen narasi Naninovel, dan implementasi lokalisasi konten. Kegiatan diawali dari tahap adaptasi workflow studio, pengenalan arsitektur proyek, serta pemetaan kebutuhan teknis yang memengaruhi stabilitas alur permainan dan keberlanjutan iterasi konten.

Pada fase awal, kontribusi teknis mencakup implementasi fitur gameplay seperti trigger animasi musuh, integrasi dialog Naninovel berbasis event, serta mekanisme puzzle drag-and-drop yang terhubung ke sistem progres fase. Tahap ini menjadi dasar untuk mengidentifikasi keterbatasan struktur lama, terutama pada penggunaan logika hardcoded yang menyulitkan pemeliharaan dan pengembangan lanjutan.

== Refactoring Arsitektur Script C# Berbasis Data
Penguatan fondasi sistem dilakukan melalui refactoring bertahap dari pendekatan prosedural menuju arsitektur data-driven. Sistem phase dan objective yang sebelumnya bergantung pada switch-case dirombak dengan memanfaatkan ScriptableObject relasional untuk memisahkan data objective, aturan perpindahan fase, dan pengaturan ambience. Pendekatan ini mendorong pemisahan concern antara penulisan konten dan logika permainan.

Refactoring kemudian diperkuat dengan penyederhanaan command penghubung mode visual novel dan adventure 3D, penerapan mitigasi null reference pada command global, serta standardisasi debug berbasis directive editor-only. Selain meningkatkan keterbacaan kode, perubahan ini juga mengurangi potensi crash saat perpindahan mode dan mempermudah proses pengujian. Pada tahap lanjut, pemetaan label objective dilakukan secara dinamis sehingga penambahan konten baru tidak lagi memerlukan perubahan kode yang bersifat repetitif.

== Integrasi dan Migrasi Naninovel
Kontribusi pada lapisan naratif difokuskan pada penataan routing script, penguatan command kustom, dan stabilisasi transisi antarscene. Proses ini meliputi modularisasi script narasi, pembaruan pola penamaan skenario, serta penyempurnaan command untuk memisahkan objective utama dan interaksi flavor text. Integrasi juga mencakup penyelesaian isu transisi blank screen pada perpindahan mode permainan melalui sinkronisasi state kamera dan eksekusi script.

Seiring perkembangan proyek, dilakukan migrasi mayor Naninovel dari versi 1.18 ke 2.1. Migrasi ini menuntut rekonstruksi prefab printer dialog, penyesuaian input indicator, pembaruan sintaks command, dan perbaikan kompatibilitas script path relatif. Pada periode yang sama, implementasi fitur choice handler bergambar, chapter overlay dinamis, serta penyesuaian command codex dilakukan untuk meningkatkan kualitas presentasi naratif. Perbaikan parameter parsing dan validasi unlock state turut memperkuat kestabilan eksekusi command pada skenario bercabang.

== Pengembangan Sistem Lokalisasi dan Modernisasi UI
Pengembangan lokalisasi dilaksanakan secara progresif melalui pembuatan managed text untuk UI dan karakter, pengaturan struktur direktori lokalisasi, serta penerapan asset swapping agar elemen visual dan audio menyesuaikan locale secara otomatis. Sistem ini mendukung kebutuhan bilingual Indonesia-Jepang dan mengurangi ketergantungan pada penulisan string langsung di dalam script.

Tahap modernisasi antarmuka dilakukan dengan migrasi menyeluruh dari Legacy Text ke TextMeshPro pada komponen utama seperti printer dialog, control panel, pause UI, backlog, save-load, dan puzzle UI. Proses ini disertai pembuatan shader TMP kustom untuk efek revealable, baking atlas font Jepang, konfigurasi fallback CJK, serta penyesuaian script tombol agar tetap kompatibel dengan arsitektur engine. Hasilnya, kualitas rendering teks meningkat dan isu missing glyph dapat dikurangi secara signifikan.

Pada fase lanjutan, sistem lokalisasi dimigrasikan dari duplikasi script terjemahan ke format dokumen teks standar (.txt) Naninovel 2.1. Migrasi ini diikuti penataan ulang scenario root, perbaikan metadata yang korup, serta integrasi lokalisasi pada codex panel agar seluruh elemen UI dapat bertukar bahasa secara konsisten. Dengan demikian, alur kerja translasi menjadi lebih terpusat dan lebih aman dari konflik eksekusi.

== Capaian Kegiatan dan Dampak Implementasi
Rangkaian kegiatan kerja praktik menunjukkan dampak nyata pada tiga aspek utama. Pertama, pada aspek maintainability, refactoring C# berbasis data memperbaiki struktur kode dan menurunkan beban perubahan saat penambahan konten. Kedua, pada aspek stabilitas naratif, integrasi serta migrasi Naninovel meningkatkan keandalan routing script, command execution, dan transisi antar-mode permainan. Ketiga, pada aspek kesiapan produk, sistem lokalisasi multibahasa dan modernisasi UI memperkuat konsistensi penyajian teks pada berbagai skenario penggunaan.

Selain kontribusi fitur, kegiatan juga melibatkan penyelesaian kendala workflow seperti sinkronisasi branch, resolusi konflik merge, penataan aset berukuran besar, dan perapihan konfigurasi repositori. Penguatan proses tersebut berdampak pada kelancaran kolaborasi antartim dan meningkatkan kesiapan proyek untuk tahap pengembangan berikutnya.

= KESIMPULAN DAN SARAN

== Kesimpulan
Pelaksanaan kerja praktik di PT Unimaksima Lentera Nusantara memberikan pengalaman komprehensif dalam penerapan kompetensi Unity Game Programming pada proyek visual novel industri. Kontribusi utama berupa refactoring arsitektur script C#, integrasi serta migrasi Naninovel, dan pengembangan sistem lokalisasi multibahasa terbukti saling melengkapi dalam membangun pipeline pengembangan yang lebih terstruktur.

Hasil kegiatan menunjukkan bahwa penguatan fondasi teknis tidak hanya berdampak pada stabilitas sistem internal, tetapi juga mempercepat proses iterasi konten dan meningkatkan kualitas koordinasi tim. Dengan basis kode yang lebih maintainable dan lokalisasi yang lebih sistematis, proyek menjadi lebih siap untuk pengembangan berkelanjutan dan distribusi lintas bahasa.

== Saran
Bagi instansi, disarankan untuk melanjutkan standardisasi workflow pengembangan, khususnya pada dokumentasi teknis command, pedoman penulisan script naratif, dan prosedur validasi lokalisasi lintas bahasa. Penguatan praktik code review dan quality gate antarfungsi juga penting untuk menekan risiko regresi pada fase integrasi fitur baru.

Bagi mahasiswa berikutnya, disarankan untuk mempersiapkan dasar pemrograman C#, konsep arsitektur Unity, serta pemahaman alur kerja sistem naratif sebelum memasuki masa kerja praktik. Kesiapan tersebut akan membantu proses adaptasi terhadap ritme industri dan memungkinkan kontribusi teknis yang lebih terukur sejak fase awal penugasan.
