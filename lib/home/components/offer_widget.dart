import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:temp_project/home/components/common/list_view_widget.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListViewWidget(
      title: 'Offers',
      axis: Axis.vertical,
      crossAxisAlignment: CrossAxisAlignment.end,
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 15,
          right: 20,
        ),
        height: 60,
        decoration: BoxDecoration(
          color: const Color.fromARGB(
            255,
            248,
            222,
            253,
          ),
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: const [
            BoxShadow(
              blurRadius: 10.0,
              spreadRadius: 1,
              color: Colors.white,
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.centerLeft,
        child: Text(
          'Lorem ipsum',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Colors.purple[900],
          ),
        ),
      ),
    );
  }
}
