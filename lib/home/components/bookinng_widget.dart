import 'package:flutter/material.dart';
import 'package:temp_project/home/components/common/list_view_widget.dart';

class BookingWidget extends StatelessWidget {
  const BookingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListViewWidget(
      title: 'Booking',
      axis: Axis.vertical,
      crossAxisAlignment: CrossAxisAlignment.end,
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(
                bottom: 15,
              ),
              height: 60,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 225, 199, 230),
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10.0,
                    spreadRadius: 1,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 15,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(100),
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              spreadRadius: 1,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text('Lorem'),
                    ],
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 225, 199, 230),
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10.0,
                          spreadRadius: 1,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.purple[900],
                      size: 15,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
