import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:url_launcher/url_launcher.dart';




class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  final Location location = Location();
  late LocationData _locationData;

  TextEditingController myLocation = TextEditingController();

  Future<void> _launchMap(String url) async {
    var uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get My Location'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: myLocation,
              decoration: InputDecoration(
                hintText: 'Location',
              ),
            ),
            ElevatedButton(
              child: Text('Get Location'),
              onPressed: () {
                location.getLocation().then((value) {
                  _locationData = value;
                  myLocation.text = value.toString();
                });
              },
            ),
            ElevatedButton(onPressed: () {
              var lat= _locationData.latitude;
              var long= _locationData.longitude;


              _launchMap('https://www.google.com/maps/search/?api=1&query=${lat},${long}');
              //
              //
              // 
              // String url='https://www.google.com/maps/search/?api=1&query=${lat},${long}';
              // var uri = Uri.parse(url);
              // if (await canLaunchUrl(uri)) {
              //   await launchUrl(uri);
              // } else {
              //   throw 'Could not launch $uri';
              // }

            }, child: Text('Show On google Map'))
          ],
        ),
      ),
    );
  }
}
