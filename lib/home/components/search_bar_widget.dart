import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 225, 199, 230),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 25.0,
            color: Colors.white,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: Colors.purple[900],
          ),
          Row(
            children: [
              Icon(
                Icons.search,
                color: Colors.purple[900],
              ),
              const SizedBox(width: 10),
              Icon(
                Icons.more_vert,
                color: Colors.purple[900],
              ),
            ],
          )
        ],
      ),
    );
  }
}
