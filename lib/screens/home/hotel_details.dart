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
                      child: Container(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          color: Colors.black.withOpacity(0.5),
                          child: Text(
                                hotelList[index]["place"],
                                style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                shadows: [
                                  Shadow(
                                    blurRadius: 10, // Adds blur to the shadowColor
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
              child: ExpandedTextWidget(
                  text: hotelList[index]["detail"]
                )
              ),
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
                    itemCount: hotelList[index]["images"].length,
                    itemBuilder: (context, imageIndex) {
                      print("index: ${hotelList[index]["images"][imageIndex]}");
                      return Container(
                        margin: EdgeInsets.all(16),
                        color: Colors.red,
                        child: Image.asset(
                            "assets/images/${hotelList[index]["images"][imageIndex]}"
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


class ExpandedTextWidget extends StatefulWidget {
  const ExpandedTextWidget({super.key, required this.text});

  final String text;

  @override
  State<ExpandedTextWidget> createState() => _ExpandedTextWidgetState();
}

class _ExpandedTextWidgetState extends State<ExpandedTextWidget> {

  bool isExpanded = false;

  _toggleExpansion() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {

    var textWidget = Text(
        widget.text,
      maxLines: isExpanded?null:9,
      overflow: isExpanded?TextOverflow.visible:TextOverflow.ellipsis,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget,
        GestureDetector(
          onTap: () {
            _toggleExpansion();
          },
          child: Text(isExpanded?"Less":"More", style: AppStyles.textStyle.copyWith(
            color: AppStyles.primaryColor
          )),
        )
      ],
    );

  }
}
