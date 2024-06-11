import 'package:flutter/material.dart';

class Tugas1 extends StatefulWidget {
  const Tugas1({super.key});

  @override
  State<Tugas1> createState() => _Tugas1State();
}

class _Tugas1State extends State<Tugas1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'latihansaya',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 0, 119),
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 3,
        backgroundColor: Color.fromARGB(255, 2, 2, 2),
        actions: const [
          Icon(
            Icons.logout,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
        ],
        leading: const Icon(
          Icons.settings,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(16),
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 228, 98, 141),
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          image: AssetImage('assets/images/poltekgo1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(16),
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 243, 132, 187),
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          image: AssetImage('assets/images/poltekgo2.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                );
              },
              itemCount: 10,
              separatorBuilder: (context, index) {
                return const Divider();
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, asik) {
                return const Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 138, 137, 214),
                    ),
                    title: Text('NurillPakaya'),
                    subtitle: Text('best friends♥'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.delete),
                      ],
                    ),
                  ),
                );
              },
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
