import 'package:flutter/material.dart';
import 'package:super_funicular/ui/event_card.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 24),
          child: SingleChildScrollView(
            physics: ScrollPhysics(parent: BouncingScrollPhysics()),
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 12,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomListTile(
                      onPressed: (){},
                      title: "Wed, Apr 28 • 5:30 PM",
                      subtitle1: "Jo Malone London’s Mother’s Day Presents",
                      subtitle2: "Radius Gallery • Santa Cruz, CA",
                      imagePath: 'lib/images/sample.png',
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}