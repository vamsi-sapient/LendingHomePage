import 'package:flutter/material.dart';

class LoanDetailAttributes {
  final String title;
  final String? value;
  final String amount;
  final String? perMonth;
  final String description;

  LoanDetailAttributes({
    required this.title,
    this.value,
    required this.amount,
    this.perMonth,
    required this.description,
  });
}

class LoanDetail extends StatelessWidget {
  final LoanDetailAttributes attributes;

  const LoanDetail({super.key, required this.attributes});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            attributes.title,
            style: const TextStyle(
              fontFamily: 'inter',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF1E263E),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                if (attributes.value != null)
                  Text(
                    attributes.value!,
                    style: const TextStyle(
                      fontFamily: 'inter',
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF1E263E),
                    ),
                  ),
                if (attributes.value == null)
                  Text(
                    attributes.description,
                    style: const TextStyle(
                      fontFamily: 'inter',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF8F9BB3),
                    ),
                  ),
                const Spacer(),
                Text(
                  attributes.amount,
                  style: const TextStyle(
                    fontFamily: 'inter',
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF1E263E),
                  ),
                ),
                if (attributes.perMonth != null)
                  Text(
                    attributes.perMonth!,
                    style: const TextStyle(
                      fontFamily: 'inter',
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF1E263E),
                    ),
                  ),
              ],
            ),
          ),
          if (attributes.value != null)
            Text(
              attributes.description,
              style: const TextStyle(
                fontFamily: 'inter',
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xFF8F9BB3),
              ),
            ),
        ],
      ),
    );
  }
}
