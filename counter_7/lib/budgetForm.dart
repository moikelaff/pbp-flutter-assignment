import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';
import 'package:counter_7/budgetData.dart';

class budgetForm extends StatefulWidget {
  const budgetForm({super.key});

  @override
  State<budgetForm> createState() => _budgetFormState();
}

class _budgetFormState extends State<budgetForm> {
  final _formKey = GlobalKey<FormState>();
  String _title = "";
  int _amount = 0;
  String? _select;
  DateTime __date = DateTime.now();
  List<String> __type = ["Pengeluaran", "Pemasukan"];

  bool valueExists(String value) {
    if (value == null) {
      return false;
    }
    return int.tryParse(value) != null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Form Budget'),
        ),
        drawer: const myDrawer(),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Contoh: Beli tango",
                        labelText: "Judul ",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          _title = value!;
                        });
                      },
                      onSaved: (String? value) {
                        setState(() {
                          _title = value!;
                        });
                      },
                      // Validator sebagai validasi form
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Field cant be empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Contoh: 500",
                        labelText: "Nominal ",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      onSaved: (String? value) {
                        setState(() {
                          _amount = value! as int;
                        });
                      },
                      // Validator sebagai validasi form
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'field cant be empty';
                        }
                        if (!valueExists(value)) {
                          return 'field cant be empty';
                        }
                        _amount = int.parse(value);
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    // Input Jenis
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: DropdownButton(
                        value: _select,
                        hint: const Text("Pilih Jenis"),
                        icon: const Icon(Icons.arrow_drop_down),
                        items: __type
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            _select = value ?? "";
                          });
                        },
                      ),
                    ),
                  ),
                  Center(
                    child: TextButton(
                      child: Text("Pilih tanggal"),
                      onPressed: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100),
                        ).then((date) {
                          setState(() {
                            __date = date!;
                          });
                        });
                      },
                    ),
                  ),
                  Center(
                    child: Text(
                      "Date: " + __date.toString().split(' ')[0],
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  TextButton(
                    child: const Text(
                      "Keep",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        budgetData.addBudget(
                            title: _title,
                            amount: _amount,
                            type: _select,
                            date: __date);
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const budgetForm()),
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}