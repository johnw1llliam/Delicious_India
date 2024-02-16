import 'main_menu.dart';
import 'package:flutter/material.dart';
import 'package:delicious_india/services/name_save.dart';

class NameInputPage extends StatefulWidget {
  const NameInputPage({super.key});

  @override
  State<NameInputPage> createState() => _NameInputPageState();
}

/// Name Input Page If User Hasn't Input Name
class _NameInputPageState extends State<NameInputPage> {
  final nameFieldKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF9900),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFF9900),
              Colors.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment(0, 0.7),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.11,
                  top: MediaQuery.of(context).size.height * 0.0086),
              child: const Text(
                "Hello,",
                style: TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(0, 2.0),
                      blurRadius: 20.0,
                      color: Color(0xFF2A2A2A),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.11,
                  bottom: MediaQuery.of(context).size.height * 0.102),
              child: const Text(
                "What is your\nname?",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(0, 2),
                      blurRadius: 20.0,
                      color: Color(0xFF2A2A2A),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.2065),
              child: Center(
                child: SizedBox(
                  height: 47,
                  width: 292,
                  child: Material(
                    shadowColor: Colors.black,
                    elevation: 6,
                    borderRadius: BorderRadius.circular(20),
                    child: Form(
                      key: nameFieldKey,
                      child: TextFormField(
                        controller: name,
                        validator: (value) {
                          if (value!.isEmpty || value == "") {
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Name cannot be empty'),
                                actions: <Widget>[
                                  IconButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'OK'),
                                    icon: const Icon(
                                      Icons.check,
                                      color: Color(0xFF05E200),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Rajesh',
                          contentPadding: const EdgeInsets.only(
                              left: 21, right: 10, top: 10, bottom: 10),
                          filled: true,
                          fillColor: Colors.white,
                          hintStyle: const TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () async {
                              if (nameFieldKey.currentState!.validate()) {
                                if (name.text.isNotEmpty || name.text != "") {
                                  await NameSave().writeName(name.text);
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (_) => MainMenu(
                                        name: name.text,
                                      ),
                                    ),
                                  );
                                }
                              }
                            },
                            icon: const Icon(
                              Icons.arrow_forward,
                              color: Color(0xFF05E200),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Image(
                  image: AssetImage('assets/images/group_of_people.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
