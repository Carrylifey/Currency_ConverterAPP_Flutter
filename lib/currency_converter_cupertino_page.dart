import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinopage extends StatefulWidget {
  const CurrencyConverterCupertinopage({super.key});

  @override
  State<CurrencyConverterCupertinopage> createState() =>
      _CurrencyConverterCupertinopageState();
}

class _CurrencyConverterCupertinopageState
    extends State<CurrencyConverterCupertinopage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    final value = double.parse(textEditingController.text);
    result = value * 81;
    setState(() {});
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
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3,
        middle: Text("Currency Converter"),
      ),
      child: Center(
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
              CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: CupertinoColors.black,
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ),
                placeholder: 'Please Enter the Amount in USD',
                prefix: const Icon(CupertinoIcons.money_dollar),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
              //raised
              //appears Like a text button
              const SizedBox(height: 10),
              CupertinoButton(
                onPressed: convert,
                color: CupertinoColors.white,
                child: const Text("Convert"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
