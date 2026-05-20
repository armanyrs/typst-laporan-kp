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
Industri game berkembang sangat pesat seiring meningkatnya kebutuhan pasar terhadap pengalaman bermain yang imersif, personal, dan mudah diakses lintas bahasa. Pada ranah visual novel, kualitas pengalaman pengguna sangat dipengaruhi oleh stabilitas alur cerita bercabang, efisiensi eksekusi script, serta konsistensi penyajian dialog pada berbagai konteks antarmuka.

Laporan Kerja Praktik ini membahas kontribusi teknis pada pengembangan proyek visual novel di PT Unimaksima Lentera Nusantara melalui peran sebagai Unity Game Programmer. Fokus kegiatan meliputi refactoring kode C# untuk meningkatkan keterbacaan dan maintainability, integrasi Naninovel agar alur naratif lebih terstruktur, serta pengembangan sistem lokalisasi bahasa untuk mendukung distribusi konten kepada audiens yang lebih luas.

Hasil implementasi menunjukkan peningkatan pada konsistensi arsitektur script, kemudahan kolaborasi lintas tim, dan kesiapan proyek dalam menghadapi kebutuhan iterasi konten yang cepat. Secara keseluruhan, kegiatan kerja praktik memperlihatkan bahwa optimalisasi teknis pada lapisan script dan lokalisasi berkontribusi langsung terhadap kualitas produk visual novel serta efisiensi proses produksi.

Kata kunci: Unity, C#, Naninovel, visual novel, lokalisasi bahasa, refactoring.

#heading(level: 1, numbering: none)[KATA PENGANTAR]
Puji syukur ke hadirat Allah SWT atas rahmat dan karunia-Nya sehingga laporan Kerja Praktik ini dapat diselesaikan dengan baik. Laporan ini disusun sebagai bentuk pertanggungjawaban akademis atas pelaksanaan Kerja Praktik pada PT Unimaksima Lentera Nusantara, sekaligus sebagai sarana refleksi atas proses pembelajaran yang diperoleh melalui penerapan langsung kompetensi rekayasa perangkat lunak game di lingkungan industri.

Penyusunan laporan ini tidak terlepas dari dukungan berbagai pihak. Oleh karena itu, penulis menyampaikan terima kasih kepada pihak perusahaan, dosen pembimbing, serta seluruh pihak yang telah memberikan arahan, masukan, dan dukungan selama proses Kerja Praktik berlangsung. Penulis juga menyadari bahwa laporan ini masih memiliki keterbatasan, sehingga kritik dan saran yang membangun sangat diharapkan untuk penyempurnaan pada masa mendatang.

Semoga laporan ini dapat memberikan manfaat bagi pengembangan kerja sama antara institusi pendidikan dan industri, serta menjadi referensi awal bagi mahasiswa yang akan melaksanakan Kerja Praktik pada bidang pengembangan game dan visual novel.

#pagebreak()
#heading(level: 1, numbering: none)[DAFTAR ISI]
#outline(title: none, indent: auto)
#pagebreak()

// -- Halaman BAB 1 dan Seterusnya --
#set page(numbering: "1", number-align: right)
#counter(page).update(1)

= PENDAHULUAN

== Latar Belakang
Industri game global menunjukkan pertumbuhan yang konsisten, didorong oleh peningkatan adopsi perangkat digital, perkembangan model bisnis distribusi daring, serta kebutuhan konten interaktif yang semakin beragam.

Di dalam ekosistem tersebut, visual novel menjadi salah satu bentuk karya yang menekankan kekuatan narasi, percabangan alur, dan kedalaman interaksi pengguna. Karakteristik ini menuntut proses pengembangan yang tidak hanya kreatif, tetapi juga terstruktur secara teknis agar pengalaman bermain tetap stabil pada setiap skenario cerita.

Dalam pengembangan visual novel berbasis Unity, kualitas implementasi script berpengaruh langsung pada performa, kemudahan pemeliharaan, dan kecepatan iterasi konten. Ketika struktur kode tidak konsisten, tim akan menghadapi hambatan pada proses debugging, pengembangan fitur baru, dan sinkronisasi antaranggota. Oleh sebab itu, refactoring dan standardisasi script C# menjadi langkah penting untuk menjaga keberlanjutan proyek, terutama pada fase pengembangan yang melibatkan perubahan kebutuhan secara dinamis.

Selain optimalisasi script, lokalisasi bahasa juga menjadi aspek strategis dalam perluasan jangkauan produk game. Visual novel sangat bergantung pada kualitas penyampaian teks; kesalahan pemetaan dialog, inkonsistensi istilah, atau keterbatasan dukungan multi-bahasa dapat menurunkan kualitas pengalaman pengguna. Implementasi sistem lokalisasi yang baik harus mampu mengelola aset teks secara terpusat, mendukung pembaruan konten secara efisien, serta menjaga konsistensi naratif pada tiap bahasa target.

Berdasarkan kebutuhan tersebut, Kerja Praktik di PT Unimaksima Lentera Nusantara dilaksanakan dengan fokus pada penguatan fondasi teknis proyek visual novel melalui peran sebagai Unity Game Programmer. Kegiatan meliputi perapihan arsitektur script C#, integrasi Naninovel sebagai kerangka pengelolaan narasi, serta pengembangan alur lokalisasi yang mendukung proses produksi konten secara berkelanjutan.

== Rumusan Masalah
1. Bagaimana proses refactoring script C# dapat meningkatkan keterbacaan kode, konsistensi arsitektur, dan efisiensi pemeliharaan proyek visual novel berbasis Unity?
2. Bagaimana integrasi Naninovel dapat mendukung pengelolaan alur narasi bercabang agar lebih terstruktur dan mudah dikembangkan?
3. Bagaimana perancangan sistem lokalisasi bahasa dapat memastikan konsistensi konten serta mempermudah pembaruan teks lintas bahasa pada proyek visual novel?

== Tujuan
Tujuan pelaksanaan Kerja Praktik ini adalah:

1. Menerapkan praktik refactoring pada script C# untuk membangun basis kode yang lebih modular, rapi, dan mudah dipelihara.
2. Mengintegrasikan Naninovel ke dalam proyek Unity sebagai fondasi pengelolaan alur cerita, dialog, dan transisi adegan.
3. Mengembangkan mekanisme lokalisasi bahasa yang mendukung pengelolaan aset teks secara konsisten dan terukur.
4. Meningkatkan pemahaman terhadap alur kerja pengembangan game di lingkungan industri, khususnya pada proyek visual novel.

== Manfaat
Pelaksanaan Kerja Praktik ini diharapkan memberikan manfaat sebagai berikut:

1. Bagi penulis, kegiatan ini menjadi sarana penguatan kompetensi teknis dan profesional pada pengembangan game berbasis Unity.
2. Bagi perusahaan, kontribusi teknis yang diberikan dapat mendukung peningkatan kualitas pipeline pengembangan narasi dan lokalisasi.
3. Bagi institusi pendidikan, hasil kegiatan dapat menjadi masukan terkait kesesuaian kompetensi akademik dengan kebutuhan industri kreatif digital.

= GAMBARAN UMUM PERUSAHAAN

== Sejarah Singkat PT Unimaksima Lentera Nusantara
PT Unimaksima Lentera Nusantara berkembang sebagai perusahaan kreatif digital yang menempatkan pengembangan game sebagai salah satu fokus utamanya. Perjalanan perusahaan diawali dari inisiatif membangun produk interaktif yang menggabungkan kekuatan cerita dan teknologi, kemudian bertumbuh melalui penguatan tim pengembang, peningkatan kapasitas produksi, serta penyesuaian strategi produk terhadap dinamika pasar industri game.

Dalam fase pengembangannya, perusahaan menunjukkan orientasi pada kualitas pipeline produksi, terutama pada pengelolaan konten naratif dan kesiapan teknis produk untuk proses iterasi. Arah ini menjadi landasan penting bagi pelaksanaan Kerja Praktik karena kebutuhan optimalisasi script dan lokalisasi tidak berdiri sendiri, melainkan merupakan bagian dari strategi perusahaan untuk menjaga kualitas dan skalabilitas pengembangan visual novel.

== Struktur Organisasi PT Unimaksima Lentera Nusantara
Struktur organisasi PT Unimaksima Lentera Nusantara secara umum tersusun dari fungsi manajerial, fungsi kreatif, dan fungsi teknis yang saling terhubung dalam siklus produksi game. Fungsi manajerial berperan dalam penetapan prioritas proyek dan pengendalian kualitas, fungsi kreatif menangani desain naratif serta pengalaman pemain, sedangkan fungsi teknis memastikan implementasi sistem berjalan stabil dan efisien.

Pada alur kerja tersebut, peran Unity Game Programmer berada pada simpul koordinasi antara kebutuhan desain dan implementasi perangkat lunak. Posisi ini menuntut kemampuan menerjemahkan kebutuhan naratif ke dalam struktur script yang maintainable, sekaligus menjaga kompatibilitas sistem seperti Naninovel dan modul lokalisasi agar proses produksi konten dapat berlangsung konsisten lintas tim.

= HASIL KEGIATAN KERJA PRAKTIK

== Lingkup Kegiatan dan Peran Teknis
Selama pelaksanaan Kerja Praktik pada periode Januari sampai Mei 2026, penulis ditempatkan pada pengembangan proyek visual novel dengan tanggung jawab utama pada pengelolaan script Unity, integrasi Naninovel, serta penguatan pipeline lokalisasi.

Ruang lingkup pekerjaan mencakup pengembangan fitur gameplay awal (seperti sistem trigger animasi musuh dan drag-and-drop puzzle), perbaikan arsitektur fase serta objective, migrasi komponen UI ke TextMeshPro, hingga sinkronisasi alur visual novel dengan mode adventure 3D. Aktivitas teknis tersebut tidak dikerjakan sebagai daftar tugas terpisah, melainkan sebagai rangkaian perbaikan berkelanjutan untuk meningkatkan stabilitas proyek dan kemudahan iterasi konten.

Pendekatan kerja dimulai dari identifikasi bottleneck pada struktur kode dan alur pemrosesan narasi. Hasil identifikasi tersebut kemudian diterjemahkan ke dalam prioritas perbaikan yang menitikberatkan pada keterbacaan kode, pemisahan tanggung jawab modul, dan kestabilan interaksi antarsistem. Dengan pendekatan ini, kontribusi teknis yang diberikan memiliki dampak langsung pada efisiensi produksi dan kesiapan proyek untuk tahap pengembangan berikutnya.

== Refactoring Script C# pada Proyek Unity
Refactoring dilakukan bertahap dari level fitur menuju level arsitektur. Pada tahap awal, pemisahan script cerita ke unit ACT, objective, easter egg, dan interactive dilakukan agar alur narasi lebih modular dan mudah ditelusuri. Pada tahap berikutnya, sistem perpindahan phase dan objective yang semula berbasis hardcoded switch-case dirombak menjadi pendekatan data-driven menggunakan ScriptableObject relasional (antara data objective dan state phase) sehingga pengelolaan data dapat dipusatkan.

Perbaikan juga dilakukan pada level maintainability melalui penerapan pola kerja MVC berbasis label, penggunaan directive debug khusus editor, serta standardisasi penamaan file dan command. Hasil refactoring ini menghasilkan basis kode yang lebih konsisten untuk debugging, mengurangi ketergantungan pada identifier numerik statis, dan mempermudah onboarding anggota tim ketika menambahkan konten fase baru.

== Integrasi Naninovel untuk Manajemen Narasi
Integrasi Naninovel difokuskan pada penguatan routing cerita dan sinkronisasi antar-mode permainan. Implementasi awal mencakup eksplorasi Script Graph, penggunaan command goto untuk percabangan antarscript, serta penyusunan standar penamaan script agar struktur chapter dan section lebih mudah dimonitor. Setelah itu, integrasi diperluas ke transisi mode visual novel menuju adventure 3D beserta penanganan isu state yang sempat memicu kondisi freeze dan layar hitam saat interaksi menu tertentu.

Pada fase lanjutan, arsitektur custom UI untuk chapter overlay dan choice handler diperbarui agar mendukung render teks dinamis dan efek visual tambahan. Proyek juga mengalami migrasi Naninovel dari versi 1.18 ke 2.1 yang diikuti penyesuaian text printer, input indicator, command kompatibilitas, serta perbaikan parameter parsing. Integrasi ini membuat alur narasi lebih stabil, sekaligus menjaga kompatibilitas fitur legacy seperti codex auto-unlock dan notifikasi toast berbasis command kustom.

== Pengembangan Sistem Lokalisasi Bahasa
Pengembangan lokalisasi diarahkan pada dukungan bilingual Indonesia-Jepang melalui mekanisme managed text dan asset swapping terstruktur. Implementasi mencakup pembuatan berkas lokalisasi untuk UI dan character name, pengaturan struktur direktori resource yang memetakan aset master, serta penghilangan hardcoded string pada skrip puzzle agar hint dan message dapat diganti dinamis sesuai locale pemain.

Selain aspek data, peningkatan dilakukan pada lapisan presentasi melalui migrasi komponen teks dari legacy text ke TextMeshPro, termasuk pengembangan shader TMP kustom untuk animasi revealable dan dukungan fallback font CJK. Pada tahap berikutnya, sistem lokalisasi dimigrasikan ke format dokumen teks (.txt) untuk menggantikan skrip terjemahan legacy yang rentan konflik eksekusi. Pendekatan ini memperkuat koordinasi antara tim teknis dan penulis naskah, serta membuat proses validasi translasi dan pengujian UI menjadi lebih sistematis.

== Capaian dan Dampak Kontribusi
Secara umum, rangkaian kegiatan teknis menghasilkan peningkatan pada tiga aspek utama, yaitu keterpeliharaan kode, stabilitas eksekusi narasi, dan kesiapan distribusi multi-bahasa. Refactoring C# mengurangi kompleksitas logika phase-objective, integrasi Naninovel memperkuat manajemen routing serta transisi mode permainan, sedangkan pipeline lokalisasi dan migrasi TMP meningkatkan konsistensi tampilan teks di berbagai konteks UI.

Pelaksanaan kerja juga menunjukkan bahwa penguatan engineering workflow (termasuk penyelesaian merge conflict, optimasi repository, dan penataan aset besar) berpengaruh langsung terhadap kelancaran produksi konten. Dengan fondasi teknis yang lebih rapi, proses kreatif dan revisi naratif dapat berlangsung lebih adaptif tanpa mengorbankan kualitas pengalaman pengguna.

= KESIMPULAN DAN SARAN

== Kesimpulan
Pelaksanaan Kerja Praktik di PT Unimaksima Lentera Nusantara memberikan pengalaman nyata dalam penerapan kompetensi Unity Game Programming pada konteks pengembangan visual novel industri. Kontribusi utama berupa refactoring script C#, integrasi Naninovel, dan penguatan sistem lokalisasi terbukti saling melengkapi dalam membangun pipeline pengembangan yang lebih efisien dan terstruktur.

Hasil kegiatan menunjukkan bahwa peningkatan kualitas arsitektur kode tidak hanya berdampak pada aspek teknis internal, tetapi juga mendukung kelancaran kolaborasi tim dan percepatan iterasi konten. Di sisi lain, pengelolaan narasi dan lokalisasi yang sistematis berkontribusi terhadap kesiapan produk untuk menjangkau pengguna lintas bahasa dengan kualitas pengalaman yang tetap terjaga.

== Saran
Bagi instansi, disarankan untuk melanjutkan standardisasi praktik pengembangan, khususnya pada dokumentasi teknis, pedoman penulisan script, dan prosedur validasi lokalisasi agar kualitas implementasi tetap konsisten pada setiap siklus produksi. Penguatan mekanisme code review lintas fungsi juga dapat meningkatkan efektivitas deteksi masalah sejak tahap awal pengembangan.

Bagi mahasiswa yang akan melaksanakan Kerja Praktik berikutnya, disarankan untuk memperkuat dasar rekayasa perangkat lunak, pemahaman arsitektur Unity, serta sensitivitas terhadap aspek naratif dan lokalisasi sejak sebelum penempatan. Kesiapan tersebut akan membantu mahasiswa beradaptasi lebih cepat dengan ritme kerja industri dan memberikan kontribusi yang lebih terukur terhadap kebutuhan proyek.
