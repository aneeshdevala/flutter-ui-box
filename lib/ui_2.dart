import 'package:flutter/material.dart';
import 'package:ui_1/ui_3.dart';

class UiTwo extends StatelessWidget {
  const UiTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Manage Store')),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const UiThree()));
                },
                icon: const Icon(Icons.arrow_forward))
          ],
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisSpacing: 4 / 3,
            primary: false,
            crossAxisCount: 2,
            children: [
              cardTile(
                  text: 'Martketing Design',
                  icon: const Icon(Icons.volume_up),
                  color: Colors.orange),
              cardTile(
                  text: 'Online Payment',
                  icon: const Icon(Icons.currency_rupee_rounded),
                  color: const Color.fromARGB(255, 111, 195, 114)),
              cardTile(
                  text: 'Discount Coupons',
                  icon: const Icon(Icons.new_releases_outlined),
                  color: const Color.fromARGB(216, 255, 180, 59)),
              cardTile(
                  text: 'My Customers',
                  icon: const Icon(Icons.people_alt_outlined),
                  color: Colors.blue),
              cardTile(
                  text: 'Store QR Code',
                  icon: const Icon(Icons.qr_code_scanner_sharp),
                  color: const Color.fromARGB(255, 148, 143, 143)),
              cardTile(
                  text: 'Extra Charges',
                  icon: const Icon(Icons.currency_rupee_sharp),
                  color: Colors.purple),
              cardTile(
                  text: 'Order \nForm',
                  icon: const Icon(Icons.list),
                  color: const Color.fromARGB(255, 159, 130, 239),
                  isNew: true),
            ],
          ),
        )),
        bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.blue,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'Home',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(icon: Icon(Icons.badge), label: 'Orders'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.grid_view_outlined), label: "Products"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.library_books), label: "Manage"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Account"),
            ]));
  }
}

Widget cardTile(
    {required String text,
    required Icon icon,
    required Color color,
    bool isNew = false}) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5), color: Colors.white),
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.symmetric(horizontal: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: color),
              padding: const EdgeInsets.all(5),
              child: icon,
            ),
            isNew
                ? Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.green),
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      'NEW',
                      style: TextStyle(fontSize: 12),
                    ),
                  )
                : Container(),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 20,
          ),
        )
      ],
    ),
  );
}
