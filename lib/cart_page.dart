import 'package:flutter/material.dart';
import 'package:hungry_me/payment_page.dart';

class CartPage extends StatefulWidget {
  final String image;
  final String title;
  const CartPage({super.key, required this.image, required this.title});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffeffc6),
      appBar: AppBar(
        backgroundColor: const Color(0xfffeffc6),
        title: const Text('My Cart'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        widget.image,
                        color: const Color(0xfffeffc6),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                    title: Text(
                      widget.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text(
                      '\$12.50',
                      style: TextStyle(
                        color: Color(0xffea3636),
                      ),
                    ),
                    trailing: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.remove_circle_outline_outlined,
                          color: Color(0xffea3636),
                          size: 20,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Icon(
                          Icons.add_circle,
                          color: Color(0xffea3636),
                          size: 20,
                        ),
                      ],
                    ));
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width * 0.6,
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const PaymentPage()),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffea3636),
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Order Now',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
