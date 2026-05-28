import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/app_styles.dart';
import 'package:ticket_app/base/utils/app_routes.dart';

import '../../base/utils/all_json.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Hotels"),
        backgroundColor: AppStyles.bgColor,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 8),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: hotelList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: 0.9,
            ),
            itemBuilder: (context, index) {
              var singleHotel = hotelList[index];
              return HotelGridView(hotel: singleHotel, index: index);
            },
          ),
        ),
      ),
    );
  }
}

class HotelGridView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  final int index;
  const HotelGridView({super.key, required this.hotel, required this.index});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          AppRoutes.hotelDetails,
          arguments: {"index": index},
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 8),
        padding: EdgeInsets.all(8),
        width: size.width * 0.6,
        height: 350,
        decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Image Container
            AspectRatio(
              aspectRatio: 1.3,
              child: Container(
                // height: 180,
                decoration: BoxDecoration(
                  color: AppStyles.ticketOrange,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage("assets/images/${hotel["image"]}"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              hotel["place"],
              style: AppStyles.headLineStyle3.copyWith(
                color: AppStyles.khakiColor,
              ),
            ),
            // SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotel["destination"],
                  style: AppStyles.headLineStyle3.copyWith(
                    color: Colors.white,
                  ),
                ),
                // SizedBox(width: 3),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "\$${hotel['price']}/night",
                    style: AppStyles.headLineStyle4.copyWith(
                      color: AppStyles.khakiColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
