import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailedScreen extends StatefulWidget {
  // const DetailedScreen({Key? key}) : super(key: key);

  String? imageWay;
  String? Description;
  String? urlLink;

  DetailedScreen(this.imageWay, this.Description, this.urlLink);

  @override
  State<DetailedScreen> createState() => _DetailedScreenState();
}

class _DetailedScreenState extends State<DetailedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'Information',
            style: TextStyle(fontSize: 20),
          )),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              child: Image(image: AssetImage(widget.imageWay.toString())),
            ),
            SizedBox(
              height: 20,
            ),
            Text(widget.Description.toString()),
            SizedBox(
              height: 20,
            ),
            Center(
              child: InkWell(
                child: Text(
                  'Deep Information',
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
                onTap: () => launchUrl(
                  Uri.parse(
                    widget.urlLink.toString(),
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
