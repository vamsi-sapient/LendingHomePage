import 'package:flutter/material.dart';

class LoanDetailTile extends StatelessWidget {
  final String title;
  final String value;
  final String description;

  const LoanDetailTile({
    Key? key,
    required this.title,
    required this.value,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), border: Border.all(color: const Color(0xFFBFBFBF), width: 2)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headline6?.copyWith(color: Color(0xFF1E3858)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: const Color(0xFFFAFAFE) //.withOpacity(0.1)
                    ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    value,
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(fontSize: 24, fontWeight: FontWeight.w400, color: const Color(0xFF1E263D)),
                  ),
                ),
              ),
            ),
            Text(description, style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Color(0xFF333433)),),
          ]),
        ),
      ),
    );
  }
}
