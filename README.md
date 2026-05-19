# Template Typst Laporan Kerja Praktik (KP) PENS

Template Typst ini dikhususkan untuk penulisan **Laporan Kerja Praktik (KP)** mahasiswa Politeknik Elektronika Negeri Surabaya (PENS), dengan penyesuaian khusus untuk program studi **Teknologi Rekayasa Multimedia (TRM)**.

Template ini merupakan hasil modifikasi dari template Proposal PA agar sesuai dengan panduan format Buku Kerja Praktik PENS terbaru.

## 🚀 Fitur Utama

- **Format Otomatis:** Margin (3343), font (Times New Roman 12pt, Spasi 1.5), dan ukuran kertas A4 sudah diatur.
- **Halaman Pengesahan Khusus:** Mendukung _background watermark_ logo PENS otomatis pada lembar pengesahan menggunakan gambar `bg-pengesahan.jpg`.
- **Penomoran Rapi:** Penomoran halaman romawi untuk _frontmatter_ dan angka arab untuk isi utama, serta penomoran bab/sub-bab otomatis.
- **AI-Ready:** Dilengkapi dengan `AGENT.md` yang berisi _system prompt_ untuk GitHub Copilot, Cursor, atau Claude agar AI memahami aturan _formatting_ PENS dan Typst.

## 📂 Struktur Folder

.
├── citation/
│ └── refs.bib # File BibTeX untuk daftar pustaka
├── media/
│ └── bg-pengesahan.jpg # WAJIB ADA: Gambar watermark untuk lembar pengesahan
├── AGENT.md # Instruksi khusus untuk AI Assistant
├── Contoh_Laporan_KP.pdf # Referensi isi dan gaya penulisan laporan (contoh jadi)
├── Format Laporan KP.docx # Referensi resmi layout dan struktur bab dari kampus
├── main.typ # FILE UTAMA: Tempat menulis isi laporan
├── template.typ # FILE CORE: Pengaturan layout, cover, dan pengesahan
└── README.md
