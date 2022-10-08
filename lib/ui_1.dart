import 'package:flutter/material.dart';
import 'package:ui_1/ui_2.dart';

class UiOne extends StatelessWidget {
  const UiOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          title: const Text('Additional Information'),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const UiTwo()));
                },
                icon: const Icon(Icons.arrow_forward))
          ],
        ),
        body: Column(
          children: [
            const ListTile(
              leading: Icon(Icons.share_outlined),
              title: Text('Share Dukaan App'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const ListTile(
              leading: Icon(Icons.chat_bubble_outline),
              title: Text('Change Language'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: const Icon(Icons.whatsapp),
              title: const Text('WhatsApp Chat Support'),
              trailing: Switch(value: true, onChanged: (bool value) {}),
            ),
            const ListTile(
              leading: Icon(Icons.lock),
              title: Text('Privacy Policy'),
            ),
            const ListTile(
              leading: Icon(Icons.star_border_outlined),
              title: Text('Rate Us'),
            ),
            const ListTile(
              leading: Icon(Icons.logout_outlined),
              title: Text('Sign Out'),
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              // ignore: prefer_const_literals_to_create_immutables
              children: [const Text('version \n  2.4.2')],
            )),
            const SizedBox(
              height: 25,
            )
          ],
        ));
  }
}
