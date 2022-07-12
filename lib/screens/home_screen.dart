import 'package:flutter/material.dart';
import 'package:untitled5/widgets/custom_drawer.dart';
import 'package:untitled5/widgets/home_widget.dart';
import 'package:untitled5/widgets/second_home_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> courses = [
    'Active Course',
    'Complete Course',
    'Left Course',
    'Other Family Members'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      drawer: const CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  HomeWidget(
                    txt: "Home",
                    color: Colors.blue,
                  ),
                  HomeWidget(
                    txt: "Student Fees Schedule",
                    color: Colors.teal,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const HomeWidget(
                    txt: "Student Profile",
                    color: Colors.pinkAccent,
                  ),
                  HomeWidget(
                    txt: "Student Courses",
                    color: Colors.green.shade200,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  HomeWidget(
                    txt: "Notice Board",
                    color: Colors.green,
                  ),
                  HomeWidget(
                    txt: "Contact Us",
                    color: Colors.yellow,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HomeWidget(
                    txt: "Certificate",
                    color: Colors.orange.shade300,
                  ),
                  const HomeWidget(
                    txt: "Survey Portal",
                    color: Colors.orange,
                  ),
                ],
              ),
              const Divider(),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: Card(
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  color: Colors.redAccent,
                  child: const Center(
                      child: Text(
                    'Attendance Report',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
              const Divider(),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: courses.length,
                  itemBuilder: (context, index) {
                    return SecondHomeWdget(
                      txt: courses[index],
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
