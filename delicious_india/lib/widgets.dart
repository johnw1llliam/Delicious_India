import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Widgets {
  List<String> name = [
    'Adhirasam',
    'Aloo Gobi',
    'Aloo Matar',
    'Aloo Methi',
    'Aloo Shimla Mirch',
    'Aloo Tikki',
    'Bandar Laddu',
    'Basundi',
    'Bhatura',
    'Bhindi Masala',
    'Biryani',
    'Boondi',
    'Butter Chicken',
    'Chak Hao Kheer',
    'Cham Cham',
    'Chana Masala',
    'Chapati',
    'Chicken Rezala'
  ];
  List<String> imageName = [
    'adhirasam',
    'aloo_gobi',
    'aloo_matar',
    'aloo_methi',
    'aloo_shimla_mirch',
    'aloo_tikki',
    'bandar_laddu',
    'basundi',
    'bhatura',
    'bhindi_masala',
    'biryani',
    'boondi',
    'butter_chicken',
    'chak_hao_kheer',
    'cham_cham',
    'chana_masala',
    'chapati',
    'chicken_rezala'
  ];
  List<String> description = [
    "Adhirasam is a type of Indian sweet made out of rice, jaggery, ghee and sometimes coconut and with spices like cardamom, sesame, pepper and ginger powder.",
    "Aloo Gobi is a vegetarian dish made with potatoes, cauliflower, and Indian spices. It is yellowish in color due to the use of turmeric, and occasionally contains black cumin and curry leaves.",
    "Aloo Matar is made from potatoes and peas in a mildly spiced creamy tomato based gravy. It is a vegetarian dish.",
    "Aloo Methi Sabzi (Potato Fenugreek Leaves Stir Fry) is an easy, delicious Indian stir fry recipe made with potatoes (aloo), fresh fenugreek leaves (methi), and a few spices.",
    "Aloo Shimla Mirch is an Indian stir fry made using potatoes and green bell peppers.",
    "Aloo tikki, is a snack that is made of boiled potatoes, peas, and various curry spices. Aloo means potato in Hindi-Urdu, and tikki is a small cutlet or croquette.",
    "Bandar Laddu also known as Thokkudu ladoo are popular ladoo variety from Andhra Pradesh. These are made with gram flour, ghee, sugar and jaggery.",
    "Basundi is an Indian sweet. It is a sweetened condensed milk made by boiling milk on low heat until the milk is reduced by half.",
    "Bhatura is a fluffy deep-fried leavened sourdough bread. It is commonly served as a midday meal or a breakfast dish.",
    "Bhindi Masala is stir-fried okra that is slit and stuffed with spice mix such as garam masala and other locally available ground spices. This dish is stir-fried or sautéed slightly, which is distinct from batter-fried okra, which involves deep frying.",
    "Biryani is a mixed rice dish. It is made with rice, some type of meat and spices. To cater to vegetarians, in some cases, it is prepared by substituting vegetables for the meat. Sometimes eggs and/or potatoes are added.",
    "Boondi is an Indian snack made from fried chickpea flour. It is either eaten as a savory snack or sweetened as a dessert.",
    "Butter chicken is a type of curry made from chicken with a spiced tomato and butter sauce. Its sauce is known for its rich texture. It is similar to chicken tikka masala, which uses a tomato.",
    "Chak hao kheer is a black rice pudding, an authentic Manipuri divine delicacy, made of forbidden black rice and sugar.",
    "Cham cham is a Bengali sweet made by curdling milk and then shaping the coagulated solids to cylindrical shape pieces.",
    "Chana Masala is a chickpea curry. Along with chickpeas, the ingredients of chana masala typically include onion, chopped tomatoes, ghee cumin, turmeric, coriander powder, garlic, chillies, ginger, amchoor or lemon juice, and garam masala.",
    "Chapati is a traditional unleavened Indian flatbread made with just 3 ingredients. Whole wheat flour, ghee/oil, and water.",
    "Chicken Rezala is a creamy and rich Mughlai curry prepared with chicken, yogurt, cashews, poppy seeds, and a few whole spices."
  ];

  Map<String, String> descriptionMap = {
    'Adhirasam':
        'Adhirasam is a type of Indian sweet made out of rice, jaggery, ghee and sometimes coconut and with spices like cardamom, sesame, pepper and ginger powder.',
    'Aloo Gobi':
        'Aloo Gobi is a vegetarian dish made with potatoes, cauliflower, and Indian spices. It is yellowish in color due to the use of turmeric, and occasionally contains black cumin and curry leaves.',
    'Aloo Matar':
        'Aloo Matar is made from potatoes and peas in a mildly spiced creamy tomato based gravy. It is a vegetarian dish.',
    'Aloo Methi':
        'Aloo Methi Sabzi (Potato Fenugreek Leaves Stir Fry) is an easy, delicious Indian stir fry recipe made with potatoes (aloo), fresh fenugreek leaves (methi), and a few spices.',
    'Aloo Shimla Mirch':
        'Aloo Shimla Mirch is an Indian stir fry made using potatoes and green bell peppers.',
    'Aloo Tikki':
        'Aloo tikki, is a snack that is made of boiled potatoes, peas, and various curry spices. Aloo means potato in Hindi-Urdu, and tikki is a small cutlet or croquette.',
    'Bandar Laddu':
        'Bandar Laddu also known as Thokkudu ladoo are popular ladoo variety from Andhra Pradesh. These are made with gram flour, ghee, sugar and jaggery.',
    'Basundi':
        'Basundi is an Indian sweet. It is a sweetened condensed milk made by boiling milk on low heat until the milk is reduced by half.',
    'Bhatura':
        'Bhatura is a fluffy deep-fried leavened sourdough bread. It is commonly served as a midday meal or a breakfast dish.',
    'Bhindi Masala':
        'Bhindi Masala is stir-fried okra that is slit and stuffed with spice mix such as garam masala and other locally available ground spices. This dish is stir-fried or sautéed slightly, which is distinct from batter-fried okra, which involves deep frying.',
    'Biryani':
        'Biryani is a mixed rice dish. It is made with rice, some type of meat and spices. To cater to vegetarians, in some cases, it is prepared by substituting vegetables for the meat. Sometimes eggs and/or potatoes are added.',
    'Boondi':
        'Boondi is an Indian snack made from fried chickpea flour. It is either eaten as a savory snack or sweetened as a dessert.',
    'Butter Chicken':
        'Butter chicken is a type of curry made from chicken with a spiced tomato and butter sauce. Its sauce is known for its rich texture. It is similar to chicken tikka masala, which uses a tomato.',
    'Chak Hao Kheer':
        'Chak hao kheer is a black rice pudding, an authentic Manipuri divine delicacy, made of forbidden black rice and sugar.',
    'Cham Cham':
        'Cham cham is a Bengali sweet made by curdling milk and then shaping the coagulated solids to cylindrical shape pieces.',
    'Chana Masala':
        'Chana Masala is a chickpea curry. Along with chickpeas, the ingredients of chana masala typically include onion, chopped tomatoes, ghee cumin, turmeric, coriander powder, garlic, chillies, ginger, amchoor or lemon juice, and garam masala.',
    'Chapati':
        'Chapati is a traditional unleavened Indian flatbread made with just 3 ingredients. Whole wheat flour, ghee/oil, and water.',
    'Chicken Rezala':
        'Chicken Rezala is a creamy and rich Mughlai curry prepared with chicken, yogurt, cashews, poppy seeds, and a few whole spices.'
  };

  Map<String, String> imageMap = {
    'Adhirasam': 'adhirasam',
    'Aloo Gobi': 'aloo_gobi',
    'Aloo Matar': 'aloo_matar',
    'Aloo Methi': 'aloo_methi',
    'Aloo Shimla Mirch': 'aloo_shimla_mirch',
    'Aloo Tikki': 'aloo_tikki',
    'Bandar Laddu': 'bandar_laddu',
    'Basundi': 'basundi',
    'Bhatura': 'bhatura',
    'Bhindi Masala': 'bhindi_masala',
    'Biryani': 'biryani',
    'Boondi': 'boondi',
    'Butter Chicken': 'butter_chicken',
    'Chak Hao Kheer': 'chak_hao_kheer',
    'Cham Cham': 'cham_cham',
    'Chana Masala': 'chana_masala',
    'Chapati': 'chapati',
    'Chicken Rezala': 'chicken_rezala'
  };

  /// Generate Lists for foodpedia
  List<Widget> generateLists(BuildContext context) {
    List<Widget> children = [
      Stack(
        alignment: Alignment.center,
        children: [
          const Image(
            image: AssetImage('assets/images/foodpedia_background.png'),
          ),
          Center(
            child: Padding(
              padding:
                  EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
              child: const SizedBox(
                width: 339,
                child: Center(
                  child: AutoSizeText(
                    "Foodpedia",
                    minFontSize: 40,
                    maxFontSize: 48,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ];

    for (int i = 0; i < name.length; i++) {
      children.add(Padding(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
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
                                padding:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                child: Text(
                                  name[i],
                                  style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage(
                                        "assets/images/${imageName[i]}.png"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 13),
                                    child: SizedBox(
                                      height: 190,
                                      width: 130,
                                      child: SingleChildScrollView(
                                        child: Text(
                                          description[i],
                                          maxLines: 10,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w600),
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
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(336, 115),
                    backgroundColor: Colors.white,
                    shadowColor: Colors.black,
                    elevation: 7,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: const EdgeInsets.only(left: 9)),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage("assets/images/${imageName[i]}.png"),
                      width: 95,
                      height: 95,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17),
                      child: Text(
                        name[i],
                        style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ));
    }
    children.add(
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.06,
      ),
    );

    return children;
  }
}
