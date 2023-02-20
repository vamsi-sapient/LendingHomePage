import 'dart:html';

import 'package:bank_poc_web/components/app_button.dart';
import 'package:bank_poc_web/components/calculation_tile_widget.dart';
import 'package:bank_poc_web/components/loan_detail.dart';
import 'package:bank_poc_web/components/loan_detail_tile.dart';
import 'package:bank_poc_web/components/unordered_list.dart';
import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:url_launcher/url_launcher_string.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildBanner(),
            const CalculationTileWidget(
              title: 'Amount',
              value: '£ 12,00',
            ),
            const CalculationTileWidget(
              title: 'Term in months',
              value: '60',
            ),
            _buildLoanDetails(),
            // _buildRepresentativeExample(context),
            _buildHowToApply(context),
            // _buildFooter(context),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF2C684F),
      foregroundColor: const Color(0xFF004878),
      elevation: 0,
      centerTitle: false,
      title: Image.asset(
        'images/logo.png',
        height: 67,
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.menu,
            size: 25,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildBanner() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'images/banner.png',
        ),
        Container(
          color: const Color(0xFF006A4D),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Get a loan that works for your business',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'inter',
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'Whether you’re looking to expand, invest in new equipment, or borrow to manage your cash flow - our Business Loans can help you thrive.',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'inter',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Text(
            'The calculator results below are based on the representative APR for the amount you enter. ',
            style: TextStyle(
                color: Color(0xFF1E263D),
                fontFamily: 'inter',
                fontSize: 14,
                fontWeight: FontWeight.w300,
                letterSpacing: 1.2,
                wordSpacing: 1.5),
          ),
        )
      ],
    );
  }

  Widget _buildLoanDetails() {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          LoanDetail(
            attributes: LoanDetailAttributes(
              title: 'Representative',
              value: '3.8% APR',
              perMonth: '/mo',
              description: 'For loans between £1,000 and £25,000.',
              amount: '£550.29',
            ),
          ),
          LoanDetail(
            attributes: LoanDetailAttributes(
              title: 'Total repayable amount',
              description: 'Loan required',
              amount: '£33,000',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRepresentativeExample(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        children: [
          Text(
            'Representative example',
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1F263E),
                ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 3)),
              child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: '7.9% APR Representative ',
                                style: Theme.of(context).textTheme.headline5?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF1F263E),
                                    )),
                            TextSpan(
                                text: 'based on loan of ',
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                      color: const Color(0xFF1F263E),
                                    )),
                            TextSpan(
                              text: '£10,000 ',
                              style: Theme.of(context).textTheme.headline5?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFF1F263E),
                                  ),
                            ),
                            TextSpan(
                                text: 'repayable over ',
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                      color: const Color(0xFF1F263E),
                                    )),
                            TextSpan(
                              text: '60 months ',
                              style: Theme.of(context).textTheme.headline5?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFF1F263E),
                                  ),
                            ),
                            TextSpan(
                                text: 'of interest rate of ',
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                      color: const Color(0xFF1F263E),
                                    )),
                            TextSpan(
                              text: '7.9% pa (fixed).',
                              style: Theme.of(context).textTheme.headline5?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFF1F263E),
                                  ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: 'Monthly repayment of ',
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                      color: const Color(0xFF1F263E),
                                    )),
                            TextSpan(
                              text: '£200.99',
                              style: Theme.of(context).textTheme.headline5?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFF1F263E),
                                  ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text: 'Total amount payable ', style: Theme.of(context).textTheme.headline6),
                            TextSpan(
                              text: '£12,059.40',
                              style: Theme.of(context).textTheme.headline5?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFF1F263E),
                                  ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )),
            ),
          ),
          Text(
            'Representative APR applies to loan of £7,500 - £15,000 over 2-5 years.',
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: const Color(0xFF1F263E),
                ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildHowToApply(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Container(
        width: double.infinity,
        color: const Color(0xFFF1F1F1),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'How to apply?',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(fontSize: 34, fontWeight: FontWeight.w500, color: const Color(0xFF13131F)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Text(
                  'If you are a new customer with us, we could tell you your personal loan rate upfront - without affecting your credit score.',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: const Color(0xFF13131F)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 24.0, bottom: 16),
                child: UnorderedList(
                  [
                    'Minimum or Regular yearly income of £50,000 ',
                    'Repayments by Direct Debit',
                  ],
                ),
              ),
              AppButton(
                title: 'Open in app',
                onPressed: () async {
                  window.location.replace("poc://com.sapient.dev.bankx");
                },
                backgroundColor: const Color(0xFF006A4D),
                foregroundColor: Colors.white,
              ),
              AppButton(
                backgroundColor: Colors.white,
                foregroundColor: const Color(0xFF006A4D),
                title: 'Download the app',
                onPressed: () {},
                hasBorder: true,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFooter(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 24),
      child: Text(
        'When you apply, a credit check will be carried out which will show you on your credit file.',
        style: TextStyle(
          color: Color(0xFF1E263E),
          fontFamily: 'inter',
          fontSize: 14,
          fontWeight: FontWeight.w300,
          letterSpacing: 1.1,
        ),
      ),
    );
  }
}
