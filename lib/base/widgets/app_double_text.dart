//Reusable Widget
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/app_styles.dart';

class AppDoubleText extends StatelessWidget {
  // required is for named variables.
  const AppDoubleText({super.key, required this.bigText, required this.smallText, required this.func}); // {} = you can choose (optional) which argument to pass which isn't required
  // Values are to be initialized. Once's it's instantiated it automatically calls it's constructor which consist of required arguments values to be passed on object creation.
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
          InkWell( //Special type of widget which is clickable i.e. has an onTap property meaning if clicked on an widget it's going to generate a response.
            // onTap: () {
            //   // print("tapped");
            //
            //   //Routing - Switching Screens
            //   Navigator.push(context, MaterialPageRoute ( // pushes a new screen onto existing one on tap.
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
