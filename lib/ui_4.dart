import 'package:flutter/material.dart';

import 'package:ui_1/ui_5.dart';

class UiF0ur extends StatelessWidget {
  const UiF0ur({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              SizedBox(
                  height: 150,
                  child: AppBar(
                    title: const Text('Dukaan Premium'),
                    centerTitle: true,
                    leading: const Icon(Icons.arrow_back),
                    actions: [
                      IconButton(
                          onPressed: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const UiFive()));
                          }),
                          icon: const Icon(Icons.arrow_forward))
                    ],
                  )),
              Card(
                margin: const EdgeInsets.only(left: 25, top: 60, right: 25),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      const CircleAvatar(
                        child: Icon(
                          Icons.shopping_bag,
                          size: 30,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              'dukaan',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'PREMIUM',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                          ])
                    ]),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Get Dukaan Premium for just ₹4,999/year',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 22),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'All the advanced features for scaling your business',
                      textAlign: TextAlign.center,
                    )
                  ]),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Features',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(
                  height: 10,
                ),
                listTile2(const Icon(Icons.wordpress), 'Custom domain name',
                    'Get your own custom domain and build\nyour brand on the internet'),
                listTile2(
                    const Icon(Icons.verified_outlined),
                    'Verified seller badge',
                    'Get green verified badge under your\nstore name and build trust'),
                listTile2(const Icon(Icons.computer), 'Dukaan for PC',
                    'Access all the exclusive premium\nfeatures on Dukaan for PC.'),
                listTile2(
                    const Icon(Icons.headset_mic_outlined),
                    'Priority support',
                    'Get your questions resolved with our\npriority customer support.'),
                const SizedBox(
                  height: 10,
                ),
                const Divider(thickness: 1),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'What is Dukaan Premium?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset('assets/dukaan.jpeg'),
                const Divider(
                  height: 20,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Frequantly asked questions',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('What types of businesses can use Dukaan\nPremium?'),
                    Icon(Icons.remove)
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Dukaan caters toawide variety of sellers.Be it a\nsmall grocery store orabig legacy brand-anyone \nwho wants to sell their products/services online-\nDukaan is the perfect platform for you.',
                  style: TextStyle(
                    height: 1.5,
                  ),
                ),
                const Divider(),
                listTiles3('What is your refund policy?'),
                listTiles3(
                    'Will there be an automatic charge after the\npaid trial?'),
                listTiles3('What payment methods do you offer?'),
                listTiles3('What happens when my free trial ends?'),
                listTiles3('What are the terms for the custom domain?'),
                const Divider(
                  thickness: 3,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Need help?Get in touch',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 55, right: 55, top: 25, bottom: 25),
                        child: Column(
                          children: const [
                            Icon(Icons.chat_bubble_outline),
                            Text('Live chat'),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 55, right: 55, top: 25, bottom: 25),
                        child: Column(
                          children: const [
                            Icon(Icons.call),
                            Text('Phone Call'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        onPressed: () {}, child: const Text('Select Domain')),
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Get Premium'))
                  ],
                )
              ],
            ),
          ),
        ],
      ),

      // appBar: AppBar(
      //   title: Text(
      //     'Dukaan Premium',
      //   ),
      // ),
    );
  }
}

Widget listTile2(Icon icon, String title, String subtitle) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 25.0,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              // ignore: sort_child_properties_last
              child: icon,
              radius: 23.0,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(subtitle),
            ],
          ),
        ],
      ),
      const SizedBox(
        height: 15,
      )
    ],
  );
}

Widget listTiles3(
  String text,
) {
  return Column(
    children: [
      ListTile(
        leading: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: const Icon(Icons.add),
      ),
      const Divider(),
    ],
  );
}
