// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:conversor_curso/app/models/currency_model.dart';

class CurrencyBox extends StatelessWidget {
  final List<CurrencyModel> itens;
  final TextEditingController controller;
  final void Function(CurrencyModel model) onChanged;

  const CurrencyBox({
    Key? key,
    required this.itens,
    required this.controller,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 57,
            child: DropdownButton<CurrencyModel>(
              iconEnabledColor: Colors.amber,
              isExpanded: true,
              underline: Container(
                height: 1,
                color: Colors.amber,
              ),
              items: itens
                  .map((e) => DropdownMenuItem<CurrencyModel>(value: e, child: Text(e.name)))
                  .toList(),
              onChanged: (value) {},
            ),
          ),
        ),
        const SizedBox(width: 10),
        const Expanded(
          flex: 2,
          child: TextField(
            controller: controller,
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
