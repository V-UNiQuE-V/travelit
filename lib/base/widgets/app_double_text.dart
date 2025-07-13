//Reusable Widgets
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/app_styles.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({super.key, required this.bigText, required this.smallText, required this.func}); // {} = you can choose (optional) which argument to pass which isn't required
  //Passed Text
  final String bigText;
  final String smallText;
  final VoidCallback? func;

  @override
  Widget build(BuildContext context) {
    // return Container(height: 40, width: 40, color: Colors.black);
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(bigText, style: AppStyles.headLineStyle2),
          InkWell( //Special type of widget which is clickable
            // onTap: () {
            //   // print("tapped");
            //
            //   //Routing - Switching Screens
            //   Navigator.push(context, MaterialPageRoute (
            //       builder: (BuildContext context) => const AllTickets()
            //     )
            //   );
            // },
            // onTap: () => Navigator.pushNamed(context, "/all_tickets"),
            onTap: func,
            child: Text(smallText, style: AppStyles.textStyle.copyWith( //copyWith method - helps to create new objects with changes in some of the parameters. Based on the object given to it, takes it's values as default values
              color: AppStyles.primaryColor
            )
          )
          )
        ],
    );
  }
}
