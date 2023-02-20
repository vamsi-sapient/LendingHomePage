import 'package:flutter/material.dart';

class CalculationTileWidget extends StatelessWidget {
  final String title;
  final String value;
  const CalculationTileWidget({Key? key, required this.title, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .bodyText1
                ?.copyWith(fontFamily: 'interLt', color: const Color(0xFF1E263D), fontSize: 16, fontWeight: FontWeight.w100),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24, top: 10),
            child: Container(
              decoration: const BoxDecoration(color: Color(0xFF2C684F)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildContainer(const Icon(Icons.remove)),
                    const SizedBox(width: 10),
                    Expanded(
                        child: _buildContainer(Text(
                      value,
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 24, fontWeight: FontWeight.w300),
                    ))),
                    const SizedBox(width: 10),
                    _buildContainer(const Icon(Icons.add))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildContainer(Widget child) {
    return Container(
      height: 55,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: child,
      ),
    );
  }
}
