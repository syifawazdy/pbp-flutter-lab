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