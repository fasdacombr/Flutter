import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 20),
          child: Column(
            children: [
              Image.asset(
                'assets/logo.png',
                width: 150,
                height: 150,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 1,
                        child: SizedBox(
                          height: 57,
                          child: DropdownButton(
                            isExpanded: true,
                            underline: Container(
                              height: 1,
                              color: Colors.amber,
                            ),
                            value: 0,
                            items: const [
                              DropdownMenuItem(
                                value: 0,
                                child: Text('Real'),
                              ),
                              DropdownMenuItem(
                                child: Text('Dolar'),
                              ),
                              DropdownMenuItem(
                                child: Text('Euro'),
                              ),
                              DropdownMenuItem(
                                child: Text('Bitcoin'),
                              ),
                            ],
                            onChanged: (value) {},
                          ),
                        )),
                    const SizedBox(width: 10),
                    const Expanded(
                      flex: 2,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.amber),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.amber),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                ),
                onPressed: () {},
                child: const Text('CONVERTER'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
