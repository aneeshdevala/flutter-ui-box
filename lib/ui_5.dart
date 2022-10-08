import 'package:flutter/material.dart';
import 'package:ui_1/ui_6.dart';

class UiFive extends StatelessWidget {
  const UiFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order #1688068'),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
        actions: [
          IconButton(
              onPressed: (() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => UiSix()));
              }),
              icon: const Icon(Icons.arrow_forward))
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            primaryText('Order #1688068'),
            Row(
              children: [
                const CircleAvatar(
                  radius: 6,
                  backgroundColor: Colors.blue,
                ),
                primaryText('  Delivered'),
              ],
            ),
          ]),
          diviDer(),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text('1 ITEM'),
            Row(
              children: const [
                Icon(
                  Icons.receipt,
                  color: Colors.blue,
                ),
                Text('  RECEIPT',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold)),
              ],
            ),
          ]),
          sizedBox(),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset('assets/download.jpeg'),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                primaryText('Explore | Men | Navy Blue'),
                const Text(
                  '1 Piece',
                  style: TextStyle(fontSize: 14),
                ),
                const Text(
                  'Size: XL',
                  style: TextStyle(fontSize: 14),
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          side: const BorderSide(color: Colors.blue),
                          minimumSize: const Size.square(0),
                          fixedSize: const Size(40, 35),
                          primary: Colors.white),
                      child: const Text(
                        '1',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    const Text('  X ₹799'),
                    const Text('                    ₹799'),
                  ],
                ),
              ],
            ),
          ),
          diviDer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              primaryText('Item Total'),
              primaryText('₹799'),
            ],
          ),
          sizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              primaryText('Delivery'),
              const Text(
                'FREE',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          sizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              titleText('Grand Total'),
              titleText('₹799'),
            ],
          ),
          diviDer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'CUSTOMER DETAILS',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.share_outlined,
                    color: Colors.blue,
                  ),
                  Text(
                    ' SHARE',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
          sizedBox(),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                titleText('Deepa'),
                const SizedBox(height: 5),
                const Text(
                  '+91-9876543210',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(
                          color: Colors.blue,
                          style: BorderStyle.solid,
                          width: 2),
                      primary: Colors.white,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(7)),
                  child: const Icon(
                    Icons.call,
                    color: Colors.blue,
                  ),
                ),
                const Icon(
                  Icons.whatsapp,
                  color: Colors.green,
                  size: 45,
                ),
              ],
            ),
          ]),
          sizedBox(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titleText('Adress'),
              primaryText('D 1101 Chartered Beverly'),
              primaryText('Hills, Subramanyapura P.O'),
            ],
          ),
          sizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  titleText('City'),
                  primaryText('Bangalore'),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  titleText('Pincode'),
                  primaryText('560061'),
                ],
              ),
              Column(
                children: const [
                  Text(''),
                ],
              ),
            ],
          ),
          sizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  titleText('Payment'),
                  primaryText('Online'),
                ],
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 210, 239, 217)),
                child: const Text(
                  'PAID',
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          diviDer(),
          const Text(
            'ADDITIONAL INFORMATION',
            style: TextStyle(
                fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          sizedBox(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titleText('State'),
              primaryText('Karnataka'),
            ],
          ),
          sizedBox(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titleText('Email'),
              primaryText('greeniceaqua@gmail.com'),
            ],
          ),
          const SizedBox(height: 22),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.blue,
                  style: BorderStyle.solid,
                  width: 2,
                ),
                primary: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 15)),
            child: const Text(
              'Share receipt',
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }

  Widget primaryText(String text) {
    return Text(
      text,
      style: const TextStyle(fontSize: 17),
    );
  }

  Widget titleText(String text) {
    return Text(
      text,
      style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
    );
  }

  Widget diviDer() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Divider(
        thickness: 1,
      ),
    );
  }

  Widget sizedBox() {
    return const SizedBox(
      height: 13,
    );
  }
}
