import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  final String title;
  final Widget child;
  final Axis axis;
  final CrossAxisAlignment crossAxisAlignment;
  const ListViewWidget({
    Key? key,
    required this.title,
    required this.child,
    required this.axis,
    required this.crossAxisAlignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Colors.purple[900],
            ),
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 150,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: axis,
            itemCount: 10,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, activityIndex) {
              return child;
            },
          ),
        ),
      ],
    );
  }
}
