import 'package:flutter/material.dart';

class Ekinshibet extends StatelessWidget {
  const Ekinshibet({Key? key, this.onItemTapped, required this.san})
      : super(key: key);

  @override
  final int _selectedIndex = 0;
  final int san;
  final void Function(int)? onItemTapped;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.yellow,
        title: const Text('eki'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Container(
            width: 200,
            height: 200,
            color: Colors.teal,
            child: Center(
                child: Text(
              "San : $san",
              style: const TextStyle(fontSize: 50, color: Colors.yellow),
            )),
          )),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.home)),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Schoo',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: onItemTapped,
      ),
    );
  }
}
