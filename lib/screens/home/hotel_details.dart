import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';

class HotelDetails extends StatefulWidget {
  const HotelDetails({super.key});

  @override
  State<HotelDetails> createState() => _HotelDetailsState();
}

class _HotelDetailsState extends State<HotelDetails> {
  late int index = 0;

  @override
  void didChangeDependencies() {
    if(ModalRoute.of(context)!.settings.arguments != null) {
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      index = args["index"];
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            // backgroundColor: Colors.red,
            floating: false,
            pinned: true,
            // bg color for arrow btn
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector( // whenever leading property is used we have to explicitly mention back btn
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppStyles.primaryColor,
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              // title: Text(hotelList[index]["place"]),
              // background: Image.network(
              //   "https://placehold.co/600x400.png"
              // ),
              background: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      "assets/images/${hotelList[index]["image"]}",
                      fit: BoxFit.cover,
                    )
                  ),
                  Positioned(
                      bottom: 30,
                      right: 30,
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          color: Colors.black.withOpacity(0.5),
                          child: Text(
                              hotelList[index]["place"],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                shadows: [
                                  Shadow(
                                    blurRadius: 10,
                                    color: AppStyles.primaryColor,
                                    offset: Offset(2, 2)

                                  )
                                ]
                              ),
                          )
                      )
                  )
                ]
              ),
            ), //flexible (AppBar) as scrolled
          ),
          SliverList(delegate: SliverChildListDelegate(
            [
              Padding(padding: EdgeInsets.all(16.0),
              child: Text("In grammar, an article is any of a small set of words or affixes (such as a, an, and the in English) used with nouns to limit or give definiteness to the application. The category of articles constitutes a part of speech. These words represent a specific object, depending on the situation, but a is less specific than the. Articles combine with nouns to form noun phrases, and typically specify the grammatical definiteness of the noun phrase. In English, the and a (rendered as an when followed by a vowel sound) are the definite and indefinite articles respectively. Articles in many other languages also carry additional grammatical information such as gender, number, and case. Articles are part of a broader category called determiners, which also include demonstratives, possessive determiners, and quantifiers. In linguistic interlinear glossing, articles are abbreviated as art."),),
              Padding(padding: EdgeInsets.all(16.0),
               child: Text("More Images",
                 style: TextStyle(
                   fontSize: 20.0,
                   fontWeight: FontWeight.bold,
                 ),
               )),
              Container(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(16),
                    color: Colors.red,
                    child: Image.network(
                        "https://placehold.co/200x200.png"
                    ),
                  );
                }),
              )
            ]
          ))
        ],
      ),
    );
  }
}
