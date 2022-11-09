# counter_7

**Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.**

Stateless widget adalah widget statis dimana seluruh konfigurasi yang dimuat didalamnya telah diinisiasi sejak awal. Sedangkan Stateful widget berlaku sebaliknya dimana sifatnya adalah dinamis, sehingga widget ini dapat diperbaharui kapanpun dibutuhkan berdasarkan user actions atau ketika terjadinya perubahan data.

**Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.**

1. MaterialApp: Widget untuk membuat aplikasi material
2. Scaffold: Widget untuk mengimplementasikan layout Material Design
3. AppBar: Widget untuk bar yang ada di atas layar
4. Center: Widget untuk meletakkan child widget di tengah-tengah parent
5. Column: Widget untuk menaruh widget children di suatu kolom (dari atas ke bawah)
6. Text: Widget untuk menaruh teks
7. Padding: Widget untuk memberi spasi di sekitar child widget
8. Row: Widget untuk menaruh widget children di suatu baris (dari kiri ke kanan)
9. FloatingActionButton: Widget untuk menampilkan button lingkaran yang melayang
10. Spacer: Widget untuk memberi spasi secara greedy

**Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.**
Fungsi setState() untuk memberitahu framework bahwa ada object yang berubah pada State, kemudian akan melakukan build ulang pada Widget tersebut.Variabel yang dapat terdampak adalah segala variabel yang tidak bersifat const atau final

**Jelaskan perbedaan antara const dengan final.**

**final** dan **const** merupakan keyword yang dapat digunakan untuk membuat variabel yang bersifat immutable.

Perbedaan utama ada pada inialisasi nilai (pemberian nilai) dari variabelnya, **const** mengharuskan variabel harus dinialisasi pada saat kompilasi, nilai bersifat konstan dan secara langsung / eksplisit sehingga pada saat kompilasi variabel const sudah memiliki nilai, sedangkan **final** tidak mengharuskan variabel memiliki nilai secara langsung / eskplisit pada saat kompilasi.


**Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas**
1. Membuat app dengan flutter create counter_7
2. Mengganti atribut floatingActionButton dengan dua FAB yang ditaruh dalam suatu Row
3. Set onPressed FAB minus ke decrementCounter()
4. Melakukan render genap atau ganjil menggunakan ternary dan mengganti warna dengan style
5. Menggunakan conditional rendering untuk menghilangkan tombol - apabila nilai 0
