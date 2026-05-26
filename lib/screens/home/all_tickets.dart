import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // Used to go back & forth (provides back icon)
        title: Center(child: Text("All Tickets")),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: ticketList.map((singleTicket) => Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: TicketView(ticket: singleTicket, wholeScreen: true,
                  ))).toList()
            ),
          )
        ],
      ),
    );
  }
}
