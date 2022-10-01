import 'package:flutter/material.dart';
import 'package:temp_project/home/components/common/list_view_widget.dart';

class ProblemsWidget extends StatelessWidget {
  const ProblemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListViewWidget(
      title: 'Problems',
      axis: Axis.horizontal,
       crossAxisAlignment: CrossAxisAlignment.start,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 400,
          width: 100,
          margin: const EdgeInsets.only(right: 10, top: 10),
          // padding: const EdgeInsets.only(top: 60),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 225, 199, 230),
            borderRadius: BorderRadius.all(
              Radius.circular(40),
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
              Container(
                decoration: BoxDecoration(
                  color: Colors.purple[900],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 10.0,
                      spreadRadius: 4,
                      color: Colors.white,
                    ),
                  ],
                ),
                height: 60,
                width: 100,
                child: const Center(
                  child: Text(
                    'Lorem',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                'Lorem ipsum',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
