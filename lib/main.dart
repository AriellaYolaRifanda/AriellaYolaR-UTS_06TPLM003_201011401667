import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Color> cardColors = [
    Color.fromARGB(255, 103, 152, 187),
    Color.fromARGB(255, 96, 160, 102),
    Color.fromARGB(255, 153, 118, 158),
    Color.fromARGB(255, 199, 193, 128),
    Color.fromARGB(255, 187, 162, 122),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(35),
                      child: Text(
                        'SHOES',
                        style: TextStyle(fontSize: 20, color: Colors.blueGrey),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/Cewe-bumi.jpg'),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: 5,
                itemBuilder: ((context, index) {
                  String itemName = '';
                  String itemSubtitle = '';
                  String itemPrice = '';
                  String itemImage = '';
                  switch (index) {
                    case 0:
                      itemName = 'Nike SB Zoom Blazer Mid Premium';
                      itemPrice = '\$8.795';
                      itemImage = 'images/sepatu1.jpg';
                      break;
                    case 1:
                      itemName = 'Nike Air Zoom Pegasus';
                      itemSubtitle = 'Mens Rood Running Shoes';
                      itemPrice = '\$9.995';
                      itemImage = 'images/sepatu2.jpg';
                      break;
                    case 2:
                      itemName = 'Nike ZoomX Vaporfly';
                      itemSubtitle = 'Mens Rood Racing Shoe';
                      itemPrice = '\$199.99';
                      itemImage = 'images/sepatu3.jpg';
                      break;
                    case 3:
                      itemName = 'Nike Air Force 1 S50';
                      itemSubtitle = "Older Kid's Shoe";
                      itemPrice = '\$6.295';
                      itemImage = 'images/sepatu4.jpg';
                      break;
                    case 4:
                      itemName = 'Nike Waffle One';
                      itemSubtitle = "Men's Shoes";
                      itemPrice = '\$8.295';
                      itemImage = 'images/sepatu5.jpg';
                      break;
                  }
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(color: Colors.grey, width: 1),
                    ),
                    color: cardColors[index],
                    child: ListTile(
                      leading: Image.asset(itemImage),
                      title: Text(itemName),
                      subtitle: Text(
                        itemSubtitle,
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: Text(
                        itemPrice,
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    elevation: 4,
                    margin: EdgeInsets.all(20),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
