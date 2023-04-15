import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:plants/models/get_all_lite.dart';

import 'models/plant_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Plantly',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Plantly'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<List<GetAllLite>> plants;
  var url = Uri.https("house-plants2.p.rapidapi.com", "/all-lite");
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    plants = getAllLite();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FutureBuilder(
            future: plants,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return SnackBar(
                    content: Text(
                      snapshot.error.toString(),
                    ),
                  );
                } else if (snapshot.hasData) {
                  final data = snapshot.data;
                  return ListView.builder(
                      itemCount: data?.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            onTap: () {
                              Get.to(
                                PlantPage(plant: data[index]),
                              );
                            },
                            trailing: Icon(Icons.navigate_next),
                            title: Text(data![index].commonNameFr ?? "NA"),
                            leading: SizedBox(
                              height: 100,
                              width: 100,
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                            data[index].img ?? "NA"))),
                              ),
                            ),
                            subtitle: Text(data[index].climat ?? "NA"),
                            // children: [
                            //   Text(data[index].categories ?? "NA"),
                            //   Text(data[index].family ?? "NA"),
                            //   Text(data[index].latinName ?? "NA"),
                            // ],
                          ),
                        );

                        // UpcomingMatchTile(fixture: data![index]);
                      });
                }
                //TODO:Handle unavailable network
              }
              {
                return Center(child: CircularProgressIndicator());
              }
            }),
      ),
    );
  }

  Future<List<GetAllLite>> getAllLite() async {
    try {
      var response = await http.get(url, headers: {
        'X-RapidAPI-Key': 'bcd015993dmsh69507f56e75d77cp163249jsn0c4618372e5f',
        'X-RapidAPI-Host': 'house-plants2.p.rapidapi.com'
      });
      List<dynamic> responseList = jsonDecode(response.body);
      List<GetAllLite> retVal =
          responseList.map((n) => GetAllLite.fromJson(n)).toList();
      return retVal;
    } catch (e) {
      // if (e.response != null) {
      //   print('Dio error!');
      //   print('STATUS: ${e.response?.statusCode}');
      //   print('DATA: ${e.response?.data}');
      //   print('HEADERS: ${e.response?.headers}');
      // } else {
      //   // Error due to setting up or sending the request
      //   print('Error sending request!');
      //   print(e.message);
      // }
    }
    return List.empty();
  }
}
