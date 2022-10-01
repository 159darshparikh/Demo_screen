import 'package:flutter/material.dart';
import 'package:temp_project/home/components/common/list_view_widget.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListViewWidget(
      title: 'Services',
      axis: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.start,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Container(
              height: 150,
              width: 150,
              margin: const EdgeInsets.only(right: 10, top: 10),
              padding: const EdgeInsets.only(top: 60),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 225, 199, 230),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10.0,
                    spreadRadius: 4,
                    color: Colors.white,
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Text(
                    'Lorem',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.white,
                      color: Colors.purple[900],
                      minHeight: 8,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: 150,
              margin: const EdgeInsets.only(right: 10),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 225, 199, 230),
                borderRadius: BorderRadius.all(
                  Radius.circular(100),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10.0,
                    spreadRadius: 4,
                    color: Colors.white,
                  ),
                ],
              ),
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    color: Colors.amber[100],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(100),
                    ),
                  ),
                  child: Text(
                    '.Z.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Colors.purple[900],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
