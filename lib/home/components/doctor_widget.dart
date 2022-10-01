import 'package:flutter/material.dart';

class DoctorWidget extends StatelessWidget {
  const DoctorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Text(
              'Doctor of the month',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Colors.purple[900],
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 150,
                width: 150,
                margin: const EdgeInsets.only(right: 10, top: 10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(
                    255,
                    248,
                    222,
                    253,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(100),
                  ),
                  border: Border.all(
                    color: Colors.white,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 10.0,
                      spreadRadius: 4,
                      color: Colors.white,
                    ),
                  ],
                ),
                child: Center(
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.white,
                      color: Colors.purple[900],
                      strokeWidth: 8,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lorem ipsum',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.purple[900],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(
                    width: 180,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectur adipicing elit.',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
