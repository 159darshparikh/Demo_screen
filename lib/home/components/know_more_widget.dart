import 'package:flutter/material.dart';
import 'package:temp_project/home/components/common/list_view_widget.dart';

class KnowMoreWidget extends StatelessWidget {
  const KnowMoreWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListViewWidget(
      title: 'Know more',
      axis: Axis.vertical,
      crossAxisAlignment: CrossAxisAlignment.start,
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(
                bottom: 15,
                left: 15,
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
              left: 5,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipPath(
                        clipper: Clipper(),
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100.0),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 10.0,
                                spreadRadius: 1,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          // color: Colors.amber,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text('Lorem ipsum'),
                    ],
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.purple[900],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(100),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 10.0,
                          spreadRadius: 1,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
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

class Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width / 2, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
