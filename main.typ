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
Selama pelaksanaan Kerja Praktik, penulis ditempatkan pada pengembangan proyek visual novel dengan tanggung jawab utama pada pengelolaan script Unity dan dukungan integrasi sistem naratif.

Aktivitas teknis tidak dilakukan sebagai rangkaian pekerjaan harian yang terpisah, melainkan sebagai proses berkelanjutan untuk memperkuat kualitas fondasi proyek agar mampu menampung pertumbuhan konten cerita secara sistematis.

Pendekatan kerja dimulai dari identifikasi bottleneck pada struktur kode dan alur pemrosesan narasi. Hasil identifikasi tersebut kemudian diterjemahkan ke dalam prioritas perbaikan yang menitikberatkan pada keterbacaan kode, pemisahan tanggung jawab modul, dan kestabilan interaksi antarsistem. Dengan pendekatan ini, kontribusi teknis yang diberikan memiliki dampak langsung pada efisiensi produksi dan kesiapan proyek untuk tahap pengembangan berikutnya.

== Refactoring Script C# pada Proyek Unity
Kegiatan refactoring difokuskan pada penyederhanaan alur eksekusi script, pengurangan duplikasi logika, serta penataan ulang struktur kelas agar lebih sesuai dengan prinsip pengembangan perangkat lunak yang terpelihara. Proses ini mencakup pemetaan dependensi antar-komponen, pemisahan fungsi yang terlalu kompleks menjadi unit yang lebih spesifik, serta penyesuaian penamaan elemen kode agar konsisten dengan konteks domain visual novel.

Implementasi refactoring menghasilkan basis kode yang lebih mudah ditelusuri saat proses debugging dan pengembangan fitur. Selain itu, peningkatan konsistensi struktur script mempermudah proses onboarding anggota tim baru, karena alur kerja teknis dapat dipahami dengan lebih cepat melalui pola implementasi yang seragam. Dampak praktis lainnya terlihat pada berkurangnya potensi regresi saat dilakukan pembaruan konten maupun penambahan skenario cerita.

== Integrasi Naninovel untuk Manajemen Narasi
Integrasi Naninovel dilakukan untuk membangun lapisan pengelolaan narasi yang lebih terstruktur pada proyek Unity. Penggunaan framework ini membantu pemisahan yang jelas antara konten cerita dan logika aplikasi, sehingga tim dapat mengelola script naratif, percabangan dialog, serta transisi adegan tanpa harus melakukan perubahan berulang pada kode inti.

Pada tahap implementasi, penulis menyesuaikan konfigurasi proyek agar alur pemanggilan scene, event, dan command naratif berjalan konsisten dengan kebutuhan desain permainan. Proses integrasi juga mempertimbangkan kompatibilitas dengan sistem yang telah ada agar perpindahan dari mekanisme sebelumnya tidak menimbulkan gangguan pada pipeline produksi. Hasilnya, proses pengembangan konten menjadi lebih adaptif terhadap revisi naskah dan kebutuhan iterasi desain.

== Pengembangan Sistem Lokalisasi Bahasa
Pengembangan lokalisasi difokuskan pada pembentukan alur pengelolaan teks yang mampu mendukung lebih dari satu bahasa secara konsisten. Penataan struktur data dilakukan agar setiap entri dialog memiliki identitas yang jelas, mudah ditelusuri, serta dapat diperbarui tanpa mengganggu integritas alur naratif. Pendekatan ini penting untuk menjaga keselarasan istilah, konteks budaya, dan kesinambungan pengalaman pemain pada bahasa yang berbeda.

Implementasi sistem lokalisasi juga diarahkan untuk mempermudah koordinasi antara tim teknis dan pihak penyunting konten. Dengan mekanisme pengelolaan teks yang terstruktur, proses validasi hasil terjemahan, revisi terminologi, dan pengujian tampilan antarmuka dapat dilakukan lebih sistematis. Kontribusi ini memperkuat kesiapan proyek untuk distribusi yang menjangkau audiens lebih luas tanpa menurunkan kualitas penyajian cerita.

== Capaian dan Dampak Kontribusi
Secara umum, rangkaian kegiatan teknis selama Kerja Praktik menghasilkan peningkatan kualitas pengembangan proyek visual novel pada tiga aspek utama, yaitu keterpeliharaan kode, keteraturan manajemen narasi, dan kesiapan lokalisasi. Refactoring script C# memberikan fondasi arsitektur yang lebih stabil, integrasi Naninovel meningkatkan efisiensi pengelolaan konten cerita, dan sistem lokalisasi memperkuat kemampuan proyek dalam mengakomodasi kebutuhan multi-bahasa.

Temuan selama pelaksanaan Kerja Praktik menunjukkan bahwa sinergi antara disiplin rekayasa perangkat lunak dan desain naratif merupakan faktor penting dalam pengembangan visual novel. Dengan fondasi teknis yang tepat, proses kreatif dapat berjalan lebih adaptif terhadap perubahan, sekaligus tetap menjaga kualitas pengalaman pengguna secara menyeluruh.

= KESIMPULAN DAN SARAN

== Kesimpulan
Pelaksanaan Kerja Praktik di PT Unimaksima Lentera Nusantara memberikan pengalaman nyata dalam penerapan kompetensi Unity Game Programming pada konteks pengembangan visual novel industri. Kontribusi utama berupa refactoring script C#, integrasi Naninovel, dan penguatan sistem lokalisasi terbukti saling melengkapi dalam membangun pipeline pengembangan yang lebih efisien dan terstruktur.

Hasil kegiatan menunjukkan bahwa peningkatan kualitas arsitektur kode tidak hanya berdampak pada aspek teknis internal, tetapi juga mendukung kelancaran kolaborasi tim dan percepatan iterasi konten. Di sisi lain, pengelolaan narasi dan lokalisasi yang sistematis berkontribusi terhadap kesiapan produk untuk menjangkau pengguna lintas bahasa dengan kualitas pengalaman yang tetap terjaga.

== Saran
Bagi instansi, disarankan untuk melanjutkan standardisasi praktik pengembangan, khususnya pada dokumentasi teknis, pedoman penulisan script, dan prosedur validasi lokalisasi agar kualitas implementasi tetap konsisten pada setiap siklus produksi. Penguatan mekanisme code review lintas fungsi juga dapat meningkatkan efektivitas deteksi masalah sejak tahap awal pengembangan.

Bagi mahasiswa yang akan melaksanakan Kerja Praktik berikutnya, disarankan untuk memperkuat dasar rekayasa perangkat lunak, pemahaman arsitektur Unity, serta sensitivitas terhadap aspek naratif dan lokalisasi sejak sebelum penempatan. Kesiapan tersebut akan membantu mahasiswa beradaptasi lebih cepat dengan ritme kerja industri dan memberikan kontribusi yang lebih terukur terhadap kebutuhan proyek.
