import 'package:flutter/material.dart';
import '../models/show_products_model.dart';

class ShowProductScreen extends StatefulWidget {
  const ShowProductScreen({Key? key}) : super(key: key);

  @override
  State<ShowProductScreen> createState() => _ShowProductScreenState();
}

class _ShowProductScreenState extends State<ShowProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.category_outlined),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: dummycategoryData.length,
          itemBuilder: (context, index) => Column(
                children: [
                  const Divider(
                    height: 10.0,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage(dummycategoryData[index].avatar),
                      backgroundColor: Colors.grey,
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dummycategoryData[index].description,
                          style: const TextStyle(color: Colors.grey),
                        ),
                        Text(
                          dummycategoryData[index].price,
                          style: const TextStyle(
                              color: Colors.grey, fontSize: 15.0),
                        ),
                      ],
                    ),
                    subtitle: Text(
                      dummycategoryData[index].title,
                      style:
                          const TextStyle(color: Colors.grey, fontSize: 15.0),
                    ),
                  ),
                ],
              )),
    );
  }
}
