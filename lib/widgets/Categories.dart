import 'package:flutter/material.dart';

class GridContent extends StatelessWidget {
  // List of content items
  final List<String> items = [
    "Item 1", "Item 2", "Item 3", "Item 4",
    "Item 5", "Item 6", "Item 7", "Item 8",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*.6,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,  // Number of items per row
          crossAxisSpacing: 10,  // Space between items horizontally
          mainAxisSpacing: 40,  // Space between items vertically
          childAspectRatio: 1.0,  // Adjusts the aspect ratio of each item (1 means square items)
        ),
        itemCount: items.length,  // The total number of items
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 80,
                width: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              SizedBox(height: 5,),
              Text(
                items[index],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}