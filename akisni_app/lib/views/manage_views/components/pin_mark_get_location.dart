import 'package:akisni_app/components/text_header_component.dart';
import 'package:akisni_app/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PinMarkGetLocationWidget extends StatefulWidget {
  final Function(double, double)? onSubmitMap;
  const PinMarkGetLocationWidget({super.key, this.onSubmitMap});

  @override
  State<PinMarkGetLocationWidget> createState() =>
      _PinMarkGetLocationWidgetState();
}

class _PinMarkGetLocationWidgetState extends State<PinMarkGetLocationWidget> {
  double latitude = 0, longitude = 0;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod();
    });
  }

  _asyncMethod() async {
    setState(() {
      isLoading = true;
    });
    var position = await Geolocator.getLastKnownPosition();
    if (position != null) {
      latitude = position.latitude;
      longitude = position.longitude;
    } else {
      var get = await Geolocator.getCurrentPosition();
      latitude = get.latitude;
      longitude = get.longitude;
    }
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: true,
          backgroundColor: BluePrimary,
          actions: [
            IconButton(
              onPressed: () {
                Get.back();
                widget.onSubmitMap!(latitude, longitude);
              },
              icon: const Icon(Icons.check),
            )
          ],
          title: TextHeaderComponent(
            text: "pin_map".tr.toUpperCase(),
          ),
        ),
        body: isLoading
            ? const Center(child: CircularProgressIndicator())
            : Stack(
                children: [
                  GoogleMap(
                    myLocationEnabled: true,
                    initialCameraPosition: CameraPosition(
                      target: LatLng(latitude, longitude),
                      zoom: 18.5062,
                    ),
                    onCameraMove: (position) {
                      latitude = position.target.latitude;
                      longitude = position.target.longitude;
                    },
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/images/mark.png",
                        width: 50,
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
