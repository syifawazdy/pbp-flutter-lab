# README Tugas 7

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
```
flutter create counter_7
cd counter_7
```

2. Menambahkan fungsi untuk melakukan pengurangan satu nilai pada variabel _counter pada class _CounterState.
```
void _decrementCounter() {
    setState(() {
      if (_counter > 0) _counter--;
    });
  }
```
3. Mengatur ganjil dengan var isOdd
```
  Widget build(BuildContext context) {
    var isOdd = _counter % 2 == 1;
```
4. Mengganti warna ganjil dan genap dengan style sesuai ketentuan
```
 mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              isOdd ? 'GANJIL' : "GENAP",
              style: TextStyle(color: isOdd ? Colors.blue : Colors.red),            
            ),
```

5. Membuat tombol + dan - yang dapat menambah dan mengurangi angka sebanyak satu satuan
```
floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: <Widget>[
            if (_counter != 0)
              FloatingActionButton(
                onPressed: _decrementCounter,
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
            const Spacer(),
            FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
              )
          ],
        ),
      ), 
    );
```

# README Tugas 8

**Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.**
Navigator.push digunakan untuk menambahkan route ke stack, sedangkan Navigator.pushReplacement digunakan untuk mengganti route yang ada di stack. Navigator.pushReplacement akan menghapus semua route yang ada di stack kecuali route pertama.

**Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.**
- Form: Untuk mengumpulkan elemen-elemen form
- TextButton: Menampilkan tombol yang bisa diklik dengan teks
- TextInput: Untuk teks input field
- Drawer: Membentuk hamburger menu yang digunakan sebagai navigasi
- DropdownButtonFormField: Membuat dropdown untuk memilih opsi yang ada pengeluaran/pemasukan
- Card: Widget untuk menampilkan kumpulan data pada suatu kartu yang memiliki rounded corner 

**Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).**
Jenis-jenis event yang ada pada flutter, yaitu onPressed, onTap, onChanged, onSubmitted, onLongPress, onDoubleTap, onTapDown, onTapUp, onTapCancel, dan masih banyak lagi.

**Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.**
Cara kerja dari Navigator adalah dengan menambahkan route ke stack. Navigator akan menambahkan route ke stack jika fungsi Navigator.push dipanggil. Navigator akan mengganti route yang ada di stack jika fungsi Navigator.pushReplacement dipanggil. Navigator akan menghapus semua route yang ada di stack kecuali route pertama jika fungsi Navigator.pushReplacement dipanggil.

**Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.**
- Memindahkan hamburger/drawer ke satu file tersendiri agar memiliki komponen sendiri
- Membuat page untuk menambah budget pemasukan/pengeluaran pada file tambahbudget.dart
- Menyimpan data di model.dart 
- Membuat page untuk memperlihatkan daftar budget pada file daftarbudget.dart yang mengambil data dari model yang telah dibuat


# README Tugas 9

**Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?**

Pengambilan data JSON tanpa membuat model terlebih dahulu dapat dilakukan dengan menggunakan fungsi jsonDecode. Pengambilan data JSON tanpa membuat model terlebih dahulu lebih baik daripada membuat model sebelum melakukan pengambilan data JSON karena pengambilan data JSON tanpa membuat model terlebih dahulu lebih mudah dan lebih cepat.

**Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.**

- Checkbox: Menampilkan checkbox
- Card: Membuat suatu rounded corner box
- Expanded: Memperbesar widget child sepanjang baris dari Row/Column
- FutureBuilder: Melakukan update child berdasarkan hasil future yang diberikan
- ListView: Menampung widget dan dapat dibuat banyak secara otomatis dengan bantuan builder
- Spacer: Memberi jarak antar widget

**Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.**

Mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter adalah dengan menggunakan fungsi jsonDecode untuk mengubah data json menjadi data yang dapat dibaca oleh flutter. Setelah itu, data yang telah diubah menjadi data yang dapat dibaca oleh flutter dapat ditampilkan pada flutter.

**Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.**

- Menambahkan ListTile yang mengarah ke page listing pada Drawer.
- Membuat model WatchList di model/watchlist.dart yang digenerate dari response JSON endpoint.
- Menambahkan dependency http untuk melakukan fetch data.
- Membuat function fetcher ke endpoint JSON (model/fetcher.dart)
- Membuat page list baru di watchlist/listing.dart.
- Melakukan fetch dan menampilkan data dengan FutureBuilder
- Menampilkan list card menggunakan ListView
- Membuat page detail baru di watchlist/detail.dart
- Menerima data di page dari menu listing agar tidak melakukan request lagi
- Menampilkan data sesuai dengan spesifikasi yang ada di soal

