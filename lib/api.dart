import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CurrencyConverterScreen extends StatefulWidget {
  @override
  _CurrencyConverterScreenState createState() =>
      _CurrencyConverterScreenState();
}

class _CurrencyConverterScreenState extends State<CurrencyConverterScreen> {
  double newAmount = 0;
  TextEditingController amountController = TextEditingController();

  void convertCurrency() async {
    var amount = amountController.text;
    if (amount.isEmpty) {
      return;
    }

    var apiUrl = 'https://api.exchangerate-api.com/v4/latest/USD';

    var response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var rates = data['rates'];
      var conversionRate = rates['TRY'];
      var convertedAmount = double.parse(amount) * conversionRate;

      setState(() {
        newAmount = convertedAmount;
      });
    } else {
      print('Error: ${response.statusCode} ${response.body}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 10,
        title: Text(
          'Currency Converter',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "images/apple_arkaplan.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 270,
              right: 30,
              left: 30,
              child: Column(
                children: [
                  Text(
                    'Converted Amount: $newAmount' ' TL',
                    style: TextStyle(fontSize: 25, fontFamily: 'Oswald'),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: amountController,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                        borderSide: BorderSide(color: Colors.grey, width: 2),
                      ),
                      fillColor: Colors.grey.shade900.withOpacity(0.5),
                      filled: true,
                      hintText: 'AMOUNT',
                      focusColor: Colors.grey,
                    ),
                    cursorColor: Colors.white,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: convertCurrency,
                      style: ElevatedButton.styleFrom(
                        elevation: 10,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                          side: BorderSide(color: Colors.grey),
                        ),
                        primary: Colors.black,
                      ),
                      child: Text(' CONVERT ')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
