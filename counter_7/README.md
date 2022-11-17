# TUGAS 7
## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaannya
stateless widget adalah widget bawaan yang bersifat static dan tidak bisa diubah, sedangkan stateful widget adalah widget yang bersifat dinamis dan bisa diubah melalui user interactions, "state" pada widget di store pada sebuah State object.
## sebutkan widget apa saja yang kamu pakai pada proyek kali ini dan jelaskan fungsinya
Text: show text, FloatingActionButton: membuat action button, Row: set widget dlm bentuk row, Column: set widget dlm bentuk column, Icon: set icon, Center: ngecenter, visibility: buat ngehide widget
## apa fungsi setState()? jelaskan variable apa saja yag dapat terdampak dengan fungsi tersebut
setState() diperlukan jika ada data yang berubah dan perlu ditampikan di screen, variable yang terdampak adalah _counter pada <code>main.dart</code> karena yang perlu berubah hanya itu saja.
## jelaskan perbedaan antara <code>const</code> dan <code>final</code>
dua-duanya sama-sama immutable, final diinitialize pada saat program di compile dan valuenya hanya dapat diketahui saat runtime, sedangkan const diinitialize dan valuenya harus diketahui saat compiling.
## jelaskan bagaimana cara kamu mengimplementasi checklist di atas.
1. <code>flutter create counter_7</code>
2. mebuat _decrement() dengan mengikuti fungsi increment() dgn ngeset rule > 0
3. membuat conditionals buat odd even serta add color pada textnya masing-masing
4. membuat FloatingAction baru buat decrement yang di set dengan widget visibility buat ngehide decrement button kalau counter = 0
5. set spaceBetween buat <code>MainAxisAlignment.spaceBetween</code> pada <code>row</code> buat ngeset gap antar button

# TUGAS 8
## Jelaskan perbedaan <code>Navigator.push</code> dan <code>Navigator.pushReplacement</code>.
push akan ngereplace layer yang sudah ada. pushReplacement akan buat layer baru dan menghapus layer yang sudah ada.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
drawer: navbar, card: show data in card form, column/padding/row: buat fields, container: buat ngegroup data, textFormField: ask text input, form: container buat ngegroup field2 yang di input, DropDownButton: buat bikin down arrow, DatePicker: bikin tanggal, dll

## Sebutkan jenis-jenis event yang ada pada Flutter.
onPressed, onTap, onResume, onPause, onChange, onComplete, dll

## Jelaskan bagaimana cara kerja <code>Navigator</code> dalam "mengganti" halaman dari aplikasi Flutter.
saat memakai <code>navigator.Push</code> layar akan ditimpa dengan layar baru yang lama masih tersimpan di bawah layer yang added, sedangkan <code>Navigator.pushReplacement</code> akan membuat layar baru dan menghapus layar yang sudah ada.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. membuat <code>drawer.dart</code> yang isinya routing buat page lain
2. membuat <code>budgetForm.dart</code> yang isinya form budget
3. membuat <code>budgetData.dart</code> yang isinya data budget
4. membuat <code>showBudget.dart</code> buat ngeshow data budget
5. routing semua url di <code>drawer.dart</code>