import 'package:flutter/material.dart';

import 'package:ui_1/ui_4.dart';

class UiThree extends StatelessWidget {
  const UiThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Center(child: Text('Payments')),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const UiF0ur()));
              },
              icon: const Icon(Icons.info_outline))
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(border: Border.all()),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Transaction Limit',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Text(
                    'A free limit up to which you will recieve the online payments derectly in your bank'),
                const SizedBox(
                  height: 10,
                ),
                const LinearProgressIndicator(
                  minHeight: 7,
                  backgroundColor: Color.fromARGB(255, 207, 210, 202),
                  value: 0.3,
                ),
                const Text('36,668 left out of ₹50,000 '),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Increase limit',
                      style: TextStyle(fontSize: 12),
                    )),
              ],
            ),
          ),
          const ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Text(
              'Default Method',
              style: TextStyle(fontSize: 16),
            ),
            trailing: Text('Online Payments >', style: TextStyle(fontSize: 16)),
          ),
          const ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Text('Payment Profile', style: TextStyle(fontSize: 16)),
            trailing: Text('Bank Account >', style: TextStyle(fontSize: 16)),
          ),
          const Divider(),
          const ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Text(
              'Payment Overview',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ), // cards(text: 'AMOUNT ON HOLD', amount: '₹0', color: Colors.orange),

            trailing: Text('Life Time  ˅'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              cards(text: 'AMOUNT ON HOLD', amount: '₹0', color: Colors.orange),
              cards(
                  text: 'AMOUNT RECIEVED',
                  amount: '₹13,332',
                  color: Colors.green)
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('Transactions'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: (() {}),
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 207, 202, 202),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                child: const Text('On hold'),
              ),
              ElevatedButton(
                  onPressed: (() {}),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: const Text('Payouts(15)')),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 207, 202, 202),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: const Text('Refunds'))
            ],
          ),
          listTiles(
              'Order #1688068',
              'jul 12 02:04 PM',
              '₹799',
              '799 deposited to 65959595959599',
              Image.asset('assets/download.jpeg')),
          const Divider(),
          listTiles(
              'Order #145768',
              'Apr 21 03:01 Am',
              '3974.4',
              '3974.4 deposited to 65959595959599',
              Image.asset('assets/download.jpeg')),
          listTiles(
              'Order #1688068',
              'jul 12 02:04 PM',
              '₹799',
              '799 deposited to 65959595959599',
              Image.asset('assets/download.jpeg')),
          const Divider(),
          listTiles(
              'Order #145768',
              'Apr 21 03:01 Am',
              '3974.4',
              '3974.4 deposited to 65959595959599',
              Image.asset('assets/download.jpeg')),
          listTiles(
              'Order #1688068',
              'jul 12 02:04 PM',
              '₹799',
              '799 deposited to 65959595959599',
              Image.asset('assets/download.jpeg')),
          const Divider(),
          listTiles(
              'Order #145768',
              'Apr 21 03:01 Am',
              '3974.4',
              '3974.4 deposited to 65959595959599',
              Image.asset('assets/download.jpeg'))
        ],
      ),
    );
  }
}

Widget cards({
  required String text,
  required String amount,
  required Color color,
}) {
  return Container(
    padding: const EdgeInsets.all(30),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: color,
    ),
    child: Column(
      children: [
        Text(text),
        Text(amount),
      ],
    ),
  );
}

Widget listTiles(
    String order, String subtitle, String amount, String status, Image img) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          SizedBox(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: img,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(order), Text(subtitle)],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(amount),
                    Row(
                      children: const [
                        Icon(
                          Icons.noise_control_off_rounded,
                          color: Colors.green,
                        ),
                        Text('Successfull'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 8,
      ),
      Text(
        status,
        style: const TextStyle(fontSize: 10),
      ),
    ],
  );
}
