import 'package:conversor_curso/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import '../components/currency_box.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();

  final TextEditingController fromText = TextEditingController();
  HomeController? homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(
                left: 30, right: 30, top: 100, bottom: 20),
            child: Column(
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 150,
                  height: 150,
                ),
                SizedBox(height: 50),
                CurrencyBox(
                  selectedItem: homeController?.toCurrency,
                  controller: toText,
                  items: homeController?.currencies,
                  onChanged: (model) {
                    setState(() {
                      homeController?.toCurrency = model;
                    });
                  },
                ),
                SizedBox(height: 10),
                CurrencyBox(
                  selectedItem: homeController?.fromCurrency,
                  controller: fromText,
                  items: homeController?.currencies,
                  onChanged: (model) {
                    setState(() {
                      homeController?.fromCurrency = model;
                    });
                  },
                ),
                const SizedBox(height: 50),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                  onPressed: () {
                    homeController?.convert();
                  },
                  child: const Text('CONVERTER'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
