import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:temp_project/home/components/bookinng_widget.dart';
import 'package:temp_project/home/components/doctor_widget.dart';
import 'package:temp_project/home/components/know_more_widget.dart';
import 'package:temp_project/home/components/offer_widget.dart';
import 'package:temp_project/home/components/problems_widget.dart';
import 'package:temp_project/home/components/search_bar_widget.dart';
import 'package:temp_project/home/components/service_widget.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
        255,
        248,
        222,
        253,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(
              top: 30,
              left: 20,
              bottom: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SearchBarWidget(),
                const SizedBox(height: 25),
                const ServiceWidget(),
                const SizedBox(height: 25),
                const DoctorWidget(),
                const SizedBox(height: 25),
                const ProblemsWidget(),
                const SizedBox(height: 25),
                const BookingWidget(),
                const SizedBox(height: 25),
                const KnowMoreWidget(),
                const SizedBox(height: 25),
                const OfferWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
