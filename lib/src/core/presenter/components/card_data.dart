import 'package:flutter/material.dart';

class CardData extends StatefulWidget {
  final String label;
  final String? value;
  final String grandeza;

  const CardData({
    super.key,
    required this.label,
    required this.value,
    required this.grandeza,
  });

  @override
  State<CardData> createState() => _CardDataState();
}

class _CardDataState extends State<CardData> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 150,
      child: Card(
        color: Colors.orange,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                widget.label,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Text(
                '${widget.value} ${widget.grandeza}',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
