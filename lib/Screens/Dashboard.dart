import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/DetailedScreen.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  List<String> images = [
    'assets/appletree.png',
    'assets/mangotree.png',
    'assets/neemtree.png',
    'assets/palmtree.png'
  ];
  List<String> treesName = [
    'Apple Tree',
    'Mango Tree',
    'Neem Tree',
    'Palm Tree'
  ];
  List<int> treesPrice = [400, 350, 200, 250];

  List<String> discrip = [
    'Apple tree (Malus pumila) is a member of Rosaceae family. It is a deciduous tree (it loses its leaves seasonally). It reaches an average height of 16 feet (5 meters). Standard apple trees can reach a height of 25-35 feet (7,5 10 m) or even more.',
    'Mango trees are deep-rooted, symmetrical evergreens that attain heights of 90 feet and widths of 80 feet. Mango trees have simple alternate lanceolate leaves that are 12 to 16 inches in length and yellow-green, purple, or copper in color when young. Mature leaves are leathery, glossy, and deep green in color.',
    'Neem trees are attractive broad-leaved evergreens that can grow up to 30 m tall and 2.5 m in girth. Their spreading branches form rounded crowns as much as 20 m across. They remain in leaf except during extreme drought, when the leaves may fall off.',
    'There are about 2600 species of palm trees, most of them living in tropical, subtropical, and warm temperate climates. Palms are one of the best known and most widely planted tree families. They have held an important role for humans throughout much of history. Many common products and foods come from palms.'
  ];

  List<String> urlInfo = [
    'https://wikifarmer.com/apple-tree-information/#:~:text=Apple%20tree%20(Malus%20pumila)%20is,10%20m)%20or%20even%20more.',
    'https://en.wikipedia.org/wiki/Mango',
    'https://en.wikipedia.org/wiki/Azadirachta_indica',
    'https://simple.wikipedia.org/wiki/Palm_tree#:~:text=There%20are%20about%202600%20species,and%20foods%20come%20from%20palms.'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // color: Colors.amber.shade50,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    onPressed: () {},
                    child: Text(
                      'Back',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Icon(
                    Icons.more_horiz,
                    size: 40,
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    color: Colors.white,
                    child: Image(image: AssetImage('assets/treesplash.png')),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Applied',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey.shade400,
                          ),
                        ),
                        Text(
                          '28',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Reviewed',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey.shade400,
                          ),
                        ),
                        Text(
                          '73',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Contacted',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey.shade400,
                          ),
                        ),
                        Text(
                          '18',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Seed For A Tree',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                //flex: 2,
                child: ListView.builder(
                  itemCount: images.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return MyCard(images[index], treesName[index],
                        treesPrice[index], discrip[index], urlInfo[index]);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget MyCard(String imag, String treesName, int treesPrice, String discrip,
      String urlInfo) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return DetailedScreen(imag, discrip, urlInfo);
          },
        ));
      },
      child: Container(
        padding: EdgeInsets.all(05),
        height: 200,
        width: 180,
        // color: Colors.black,
        child: Card(
          elevation: 3,
          child: Column(
            children: [
              Image(
                image: AssetImage(imag.toString()),
                fit: BoxFit.cover,
                height: 120,
              ),
              Text(
                treesName.toString(),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'PKR : ${treesPrice.toString()}',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
