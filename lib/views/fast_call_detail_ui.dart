import 'package:bangkok_fast_call_app/models/FastCallList.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FastCallDetailUI extends StatefulWidget {
  
  FastCallList? fastCallList;

  FastCallDetailUI({super.key, this.fastCallList});



  @override
  State<FastCallDetailUI> createState() => _FastCallDetailUIState();
}

class _FastCallDetailUIState extends State<FastCallDetailUI> {
  
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }
  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'สายด่วนชวนกิน (' + widget.fastCallList!.stationName +')',
          style: GoogleFonts.kanit(),

        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height *0.02,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/' +widget.fastCallList!.stationImage,
                    ), 
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height *0.1,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                ),
                child: ListTile(
                  leading: Icon(
                    FontAwesomeIcons.handcuffs,
                    color: Colors.black,
                  ),
                  title: Text(
                    'ชื่อสถานี : ' + widget.fastCallList!.stationName,
                    style: GoogleFonts.kanit(),
                  ),
                  tileColor: Colors.grey[300],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height *0.01,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                ),
                child: ListTile(
                  onTap: (){
                    _makePhoneCall(widget.fastCallList!.stationPhone);
                  },
                  leading: Icon(
                    FontAwesomeIcons.phone,
                    color: Colors.green,
                  ),
                  title: Text(
                    'เบอร์โทร : ' + widget.fastCallList!.stationPhone,
                    style: GoogleFonts.kanit(),
                  ),
                  tileColor: Colors.grey[300],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height *0.01,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                ),
                
                child: ListTile(
                  onTap: (){
                    _launchInBrowser(Uri.parse('https:www.facebook.com/' + widget.fastCallList!.stationFacebook));
                  },
                  leading: Icon(
                    FontAwesomeIcons.facebook,
                    color: Colors.blue,
                  ),
                  title: Text(
                    'Facebook : ' + widget.fastCallList!.stationFacebook,
                    style: GoogleFonts.kanit(),
                  ),
                  tileColor: Colors.grey[300],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height *0.01,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                ),
                child: ListTile(
                  onTap: (){
                    _launchInBrowser(
                      Uri.parse('http://www.google.com/maps/search/?api=1&query='
                      + widget.fastCallList!.stationLatitude
                      + ','
                      + widget.fastCallList!.stationLongtitude
                     ),
                    );
                  },
                  leading: Icon(
                    FontAwesomeIcons.mapLocation,
                    color: Colors.red,
                  ),
                  title: Text(
                    'Map' ,
                    style: GoogleFonts.kanit(),
                  ),
                  tileColor: Colors.grey[300],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}