import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 57,
            child: DropdownButton(
              value: 0,
              iconEnabledColor: Colors.amber,
              isExpanded: true,
              underline: Container(
                height: 1,
                color: Colors.amber,
              ),
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
          ),
        ),
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
    );
  }
}
