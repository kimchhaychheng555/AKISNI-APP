import 'package:akisni_app/components/drawer_component.dart';
import 'package:akisni_app/components/loading_overlay_component.dart';
import 'package:akisni_app/components/text_component.dart';
import 'package:akisni_app/components/text_header_component.dart';
import 'package:akisni_app/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: BluePrimary,
        title: TextHeaderComponent(
          text: "home".tr.toUpperCase(),
        ),
      ),
      drawer: const DrawerComponent(),
      body: LoadingOverlayComponent(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              child: const GoogleMap(
                tiltGesturesEnabled: true,
                mapType: MapType.normal,
                initialCameraPosition: CameraPosition(
                  target: LatLng(37.42796133580664, -122.085749655962),
                  zoom: 0,
                ),
              ),
            ),
            Positioned(
              width: MediaQuery.of(context).size.width,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 244, 192, 192)
                          .withOpacity(0.4),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextComponent(
                        text: 'DK20-098',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFC63030),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextComponent(
                                text: '${'location'.tr} : Borey Lim Chhay Hak',
                                color: Color(0xFF3B65AF),
                              ),
                              TextComponent(
                                text: '${'power'.tr} : 400kVA (Thibidi)',
                                color: Color(0xFF3B65AF),
                              ),
                              TextComponent(
                                text: '${'install_date'.tr} : 01 October 2020',
                                color: Color(0xFF3B65AF),
                              ),
                              TextComponent(
                                text: '${'company'.tr} : ',
                                color: Color(0xFF3B65AF),
                              ),
                            ],
                          ),
                          Image.asset('assets/images/Rectangle 242.png')
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 10,
              bottom: 160,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: BluePrimary,
                ),
                child: IconButton(
                  padding: EdgeInsets.zero,
                  color: Colors.white,
                  icon: const Icon(
                    Icons.directions,
                    size: 36,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
