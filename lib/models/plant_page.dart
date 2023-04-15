import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:plants/models/get_all_lite.dart';

class PlantPage extends StatefulWidget {
  GetAllLite plant;
  PlantPage({super.key, required GetAllLite this.plant});

  @override
  State<PlantPage> createState() => _PlantPageState();
}

class _PlantPageState extends State<PlantPage> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   foregroundColor: Colors.black,
        //   backgroundColor: Colors.white.withOpacity(1),
        // ),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(widget.plant.img ?? "NA"))),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.plant.commonNameFr ?? "N/A",
                softWrap: true,
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "Climate : ${widget.plant.climat}",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "Category : ${widget.plant.categories}",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "Family : ${widget.plant.family}",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "Latin Name : ${widget.plant.latinName}",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    liked =
                        !liked; //TODO:add ID to liked list and save to shared preferences
                  });
                },
                icon: liked
                    ? Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 30,
                      )
                    : Icon(
                        Icons.favorite_outline_rounded,
                        size: 30,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
