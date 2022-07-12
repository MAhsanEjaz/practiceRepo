import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/screens/home_screen.dart';
import 'package:untitled5/services/login_service.dart';
import 'package:untitled5/widgets/bottom_card.dart';

class BottomScreen extends StatefulWidget {
  @override
  _BottomScreenState createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  int select = 0;

  TextEditingController emailControl = TextEditingController();
  TextEditingController passwordControl = TextEditingController();

  loginHandler() async {
    bool res = await LoginService().loginService(
        context: context,
        email: emailControl.text,
        password: passwordControl.text);

    if (res) {
      Navigator.push(
          context, CupertinoPageRoute(builder: (context) => HomeScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade200,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              if (select == 0)
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 200,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Your Name'),
                          ),
                        ),
                      );
                    }),
              if (select == 1) CustomTextField(),
              CustomTextField(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.pink),
                    onPressed: () {},
                    child: Text('Login'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Card(
        color: Colors.grey.shade200,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomCard(
                iconData: Icons.gamepad,
                secondIconData: Icons.gamepad_outlined,
                onTap: () {
                  setState(() {
                    select = 0;
                  });
                },
                color: select == 0 ? true : false,
                text: 'Games',
              ),
              BottomCard(
                iconData: Icons.dashboard,
                secondIconData: Icons.dashboard_outlined,
                onTap: () {
                  setState(() {
                    select = 1;
                  });
                },
                color: select == 1 ? true : false,
                text: 'Apps',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatefulWidget {
  TextEditingController? textEditingController;
  String? hint;

  CustomTextField({this.textEditingController,this.hint});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: widget.textEditingController,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.deepPurple.shade200))),
      ),
    );
  }
}
