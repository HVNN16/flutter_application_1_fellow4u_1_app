import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Where do you want to explore?',
                      hintText: 'Enter your search term',
                    ),
                    onChanged: (value) {
                      // Handle the search logic here
                    },
                  ),
                ),
                SizedBox(width: 8), // Space between text field and filter button
                IconButton(
                  icon: Icon(Icons.filter_list),
                  onPressed: () {
                    // Show filter dialog in the center of the screen
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Center(
                          child: FilterDialog(), // Display filter dialog
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 8), // Khoảng cách giữa thanh tìm kiếm và gợi ý
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Popular Destinations', // Tiêu đề "Popular Destination"
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 8),
          // Destination 1
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Text(
                  "Da Nang - Cau Rong",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
          // Destination 2
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Text(
                  "Ho Chi Minh City - Ben Thanh Market",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
          // More destinations...
        ],
      ),
    );
  }
}

// The stylish filter dialog
class FilterDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 16,
      child: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width * 0.8, // Set width as 80% of screen width
        height: 400, // Set height for the dialog
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Filter Destinations',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(),
            SizedBox(height: 16),
            // Filter options
            FilterCheckbox(title: "Beach Destinations"),
            FilterCheckbox(title: "Cultural Sites"),
            FilterCheckbox(title: "Natural Wonders"),
            FilterCheckbox(title: "Mountain Destinations"),
            SizedBox(height: 24),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Close filter dialog
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                child: Text('Apply Filters'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Custom widget for filter checkboxes
class FilterCheckbox extends StatefulWidget {
  final String title;
  FilterCheckbox({required this.title});

  @override
  _FilterCheckboxState createState() => _FilterCheckboxState();
}

class _FilterCheckboxState extends State<FilterCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(widget.title),
      value: isChecked,
      onChanged: (newValue) {
        setState(() {
          isChecked = newValue!;
        });
      },
      controlAffinity: ListTileControlAffinity.leading, // Align checkbox to the left
    );
  }
}
