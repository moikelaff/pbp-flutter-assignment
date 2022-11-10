# counter_7

A new Flutter project.

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