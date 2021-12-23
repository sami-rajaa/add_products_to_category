import 'package:flutter/material.dart';
import '../Components/custom_text_field.dart';

class AddToCategory extends StatefulWidget {
  const AddToCategory({Key? key}) : super(key: key);

  @override
  State<AddToCategory> createState() => _AddToCategoryState();
}

class _AddToCategoryState extends State<AddToCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add to categories"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomTextField(
                hinttext: "Title",
                icon: const Icon(Icons.title_outlined),
              ),
              const SizedBox(
                height: 24.0,
              ),
              CustomTextField(
                hinttext: "Description",
                icon: const Icon(Icons.description_outlined),
              ),
              const SizedBox(
                height: 24.0,
              ),
              DropdownButtonFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.category_outlined),
                  ),
                  value: selectedValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue!;
                    });
                  },
                  items: categories),
              const SizedBox(
                height: 24.0,
              ),
              CustomTextField(
                hinttext: "Quantity",
                icon: const Icon(Icons.production_quantity_limits_outlined),
              ),
              const SizedBox(
                height: 24.0,
              ),
              CustomTextField(
                hinttext: "price",
                icon: const Icon(Icons.price_change_outlined),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Add",
                    style: TextStyle(fontSize: 14.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

String selectedValue = "Beverages";
List<DropdownMenuItem<String>> get categories {
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("Beverages"), value: "Beverages"),
    const DropdownMenuItem(child: Text("Food"), value: "Food"),
    const DropdownMenuItem(child: Text("Grocery"), value: "Grocery"),
    const DropdownMenuItem(child: Text("Vegetables"), value: "Vegetables"),
    const DropdownMenuItem(child: Text("Electronics"), value: "Electronics"),
  ];
  return menuItems;
}
