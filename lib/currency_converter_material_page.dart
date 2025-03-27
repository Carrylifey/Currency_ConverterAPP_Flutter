import 'package:flutter/material.dart';

//1.create a varible to store the converted currency value
//2.Create a function tha multiplies the value given by the textfield with 81
//3.store the value in the varible that we created
//4.display the varible in the textfield
class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void multiply() {
    final value = double.parse(textEditingController.text);
    result = value * 81;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.black,
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(20),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text("Currency Converter"),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 100, 100),
                ),
              ),
              TextField(
                controller: textEditingController,
                style: const TextStyle(color: Color.fromARGB(255, 3, 3, 3)),
                decoration: InputDecoration(
                  hintText: 'Please Enter the Amount in USD',
                  hintStyle: const TextStyle(color: Colors.black),
                  prefixIcon: const Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
              //raised
              //appears Like a text button
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: multiply,
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                child: const Text("Convert"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
