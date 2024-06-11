import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Flutter Basic',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          elevation: 3,
          backgroundColor: Color.fromARGB(255, 1, 118, 5),
          actions: const [
            Icon(
              Icons.person,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.settings,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
          ],
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(16),
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 123, 189, 150),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.network(
                  'https://img.freepik.com/free-psd/3d-background-with-assortment-gastronomy-dishes_23-2150323387.jpg?t=st=1718068084~exp=1718071684~hmac=24362c1eb0b00955792e39b318ba35edbcf9c82c30f154eac0c89d64d74261c1&w=740'),
              ),
            ),
            Image.asset('assets/images/p1.jpg'),
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/p2.jpg'),
              ),
            )
          ],
        ),
      ),
    );
  }
}