import 'package:flutter/material.dart';
import 'package:hungry_me/success_widget.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Order Summary',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const PaymentItem(title: 'Order', value: '\$19.50'),
            const PaymentItem(title: 'Taxes', value: '\$0.50'),
            const PaymentItem(title: 'Delivery fees', value: '\$2.00'),
            const Divider(
              thickness: 1,
              height: 5,
            ),
            const SizedBox(height: 12),
            const PaymentItem(title: 'Total', value: '\$22.00', isBold: true),
            const SizedBox(height: 12),
            const PaymentItem(
              title: 'Estimated delivery time:',
              value: '20 - 35 mins',
              isBold: true,
              fontSize: 14,
            ),
            const SizedBox(height: 42),
            const Text(
              'Payment Methods',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  tileColor: const Color(0xff3c2f2f),
                  leading: Image.asset(
                    'assets/master_card.png',
                    width: 50,
                    height: 50,
                  ),
                  title: const Text(
                    'Credit Card',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: const Text(
                    '**** **** **** 1234',
                    style: TextStyle(color: Color(0xff7d7d7d)),
                  ),
                  trailing: Radio(
                    value: true,
                    visualDensity: VisualDensity.compact,
                    groupValue: true,
                    onChanged: (val) {},
                    activeColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  tileColor: const Color(0xfff3f4f6),
                  leading: Image.asset(
                    'assets/visa.png',
                    width: 50,
                    height: 50,
                  ),
                  title: const Text(
                    'Credit Card',
                  ),
                  subtitle: const Text(
                    '**** **** **** 1234',
                    style: TextStyle(),
                  ),
                  trailing: Radio(
                    value: false,
                    visualDensity: VisualDensity.compact,
                    groupValue: true,
                    onChanged: (val) {},
                    activeColor: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (val) {},
                  visualDensity: VisualDensity.compact,
                  activeColor: const Color(0xffea3636),
                ),
                const Text(
                  'Save card details for future payments',
                  style: TextStyle(
                    color: Color(0xff808080),
                  ),
                )
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: <Widget>[
                  const Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Total',
                            style: TextStyle(
                              color: Color(0xff808080),
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '\$22.00',
                            style: TextStyle(
                              color: Color(0xff3c2f2f),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )),
                  const SizedBox(width: 24),
                  Expanded(
                    flex: 3,
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (_) => const SuccessWidget(),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff3c2f2f),
                        padding: const EdgeInsets.symmetric(
                          vertical: 16,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Pay Now',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PaymentItem extends StatelessWidget {
  final String title;
  final String value;
  final bool isBold;
  final double fontSize;
  const PaymentItem({
    super.key,
    required this.title,
    required this.value,
    this.isBold = false,
    this.fontSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
                fontSize: fontSize,
                color: isBold ? Colors.black : const Color(0xff7d7d7d),
              ),
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              fontSize: fontSize,
            ),
          ),
        ],
      ),
    );
  }
}
