import 'package:auto_size_text/auto_size_text.dart';
import 'package:delicious_india/pages/foodai.dart';
import 'package:flutter/material.dart';
import '../widgets.dart';
import 'foodpedia.dart';

class MainMenu extends StatefulWidget {
  final String name;
  const MainMenu({super.key, required this.name});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

/// Main Menu Page
class _MainMenuState extends State<MainMenu> {
  final searchKey = GlobalKey<FormState>();
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFF9900),
              Colors.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0, 0.35],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  const Image(
                    image: AssetImage('assets/images/location_background.png'),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.height * 0.03),
                      child: AutoSizeText(
                        "Hello, ${widget.name}",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 48,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.09,
                  top: MediaQuery.of(context).size.height * 0.06),
              child: const Image(
                image: AssetImage('assets/images/search_assistant.png'),
              ),
            ),
            SearchAnchor(
                builder: (BuildContext context, SearchController controller) {
              return Center(
                child: SizedBox(
                  width: 320,
                  height: 45,
                  child: SearchBar(
                    hintText: "Butter Chicken",
                    hintStyle: MaterialStateProperty.all<TextStyle?>(
                        const TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold)),
                    controller: controller,
                    padding: const MaterialStatePropertyAll<EdgeInsets>(
                        EdgeInsets.symmetric(horizontal: 16.0)),
                    onTap: () {
                      controller.openView();
                    },
                    onChanged: (_) {
                      controller.openView();
                    },
                    trailing: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {
                          if (Widgets().descriptionMap[controller.text] !=
                              null) {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  backgroundColor: const Color(0xFFFAFAFA),
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    height: 260,
                                    width: 336,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, bottom: 10),
                                          child: Text(
                                            controller.text,
                                            style: const TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image(
                                              image: AssetImage(
                                                  "assets/images/${Widgets().imageMap[controller.text]}.png"),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 13),
                                              child: SizedBox(
                                                height: 190,
                                                width: 130,
                                                child: SingleChildScrollView(
                                                  child: Text(
                                                    Widgets().descriptionMap[
                                                        controller.text]!,
                                                    maxLines: 10,
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          } else {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return const AlertDialog(
                                  backgroundColor: Colors.red,
                                  content: Text(
                                    "Input does not exist",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                );
                              },
                            );
                          }
                        },
                      )
                    ],
                  ),
                ),
              );
            }, suggestionsBuilder:
                    (BuildContext context, SearchController controller) {
              return List<ListTile>.generate(Widgets().name.length, (int i) {
                final String item = Widgets().name[i];
                return ListTile(
                  title: Text(item),
                  onTap: () {
                    setState(() {
                      controller.closeView(item);
                    });
                  },
                );
              });
            }),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.025),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.03,
                        right: MediaQuery.of(context).size.width * 0.04),
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const Foodpedia(),
                              ),
                            );
                          },
                          icon: Image.asset('assets/images/foodpedia_icon.png'),
                          padding: const EdgeInsets.only(bottom: 0),
                        ),
                        const Text(
                          "Foodpedia",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.04),
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const FoodAI(),
                              ),
                            );
                          },
                          icon: Image.asset('assets/images/foodai_icon.png'),
                          padding: const EdgeInsets.only(bottom: 0),
                        ),
                        const Text(
                          "FoodAI",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
