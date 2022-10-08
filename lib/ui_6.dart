import 'package:flutter/material.dart';

class UiSix extends StatelessWidget {
  UiSix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Image> img = [
      Image.asset("assets/t shirts.webp"),
      Image.asset("assets/t shirtss.webp"),
      Image.asset("assets/t shirts.webp"),
      Image.asset("assets/mugs.webp"),
      Image.asset("assets/t shirtss.webp"),
      Image.asset("assets/mugs.webp"),
      Image.asset("assets/t shirts.webp"),
      Image.asset("assets/mugs.webp"),
    ];

    final List<String> name = [
      'Couch Potato',
      'Couch | Men',
      'Mug | Explore',
      'Combo | Pack',
      'Mug | Orchard',
      'Combo | Explain',
      'See Combo Pack',
      'Kids Comb'
    ];

    final List<String> rate = [
      '799',
      '799',
      '399',
      '699',
      '449',
      '599',
      '1,299',
      '1,199'
    ];
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Catalogue'),
            bottom: const TabBar(tabs: [
              Tab(
                text: 'Products',
              ),
              Tab(
                text: 'categories',
              )
            ]),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListView.separated(
                  // ignore: avoid_types_as_parameter_names
                  itemBuilder: (BuildContext context, int) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      height: 185,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: SizedBox(
                                  height: 100,
                                  width: 90,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: img[int]),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    name[int],
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    '1 Piece',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'r${rate[int]}',
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    'In Stock',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.green),
                                  )
                                ],
                              ),
                              Expanded(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Column(
                                      children: [
                                        const Icon(Icons.more_vert),
                                        const SizedBox(
                                          height: 35,
                                        ),
                                        Switch(
                                            value: true,
                                            onChanged: (bool value) {})
                                      ],
                                    ),
                                  ),
                                ],
                              ))
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Divider(
                              thickness: 1,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.share),
                              Text('Share Products'),
                              SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, index) {
                    return const SizedBox(
                      height: 15,
                    );
                  },
                  itemCount: name.length),
            ),
          ),
        ));
  }
}
