import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.1,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 20,
                shadowColor: Colors.grey,
                child: const Center(
                  child: Text(
                    "Muhammad Zeeshan",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.1,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 20,
                shadowColor: Colors.grey,
                child: const Center(
                  child: Text(
                    "Muhammad Hasnain",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.1,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 20,
                shadowColor: Colors.grey,
                child: const Center(
                  child: Text(
                    "Muhammad Ali",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.1,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 20,
                shadowColor: Colors.grey,
                child: const Center(
                  child: Text(
                    "Muhammad Zohaib",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
