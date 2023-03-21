import 'package:bangkok_fast_call_app/models/FastCallList.dart';
import 'package:bangkok_fast_call_app/views/fast_call_detail_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FastCallHomeUI extends StatefulWidget {
  const FastCallHomeUI({super.key});

  @override
  State<FastCallHomeUI> createState() => _FastCallHomeUIState();
}

class _FastCallHomeUIState extends State<FastCallHomeUI> {
  List<FastCallList> foodShopList = [
    FastCallList(
      stationName: 'สถานีตำรวจนครบาลท่าข้าม',
      stationFacebook: 'THAKHAMPOLICE9',
      stationPhone: '024162841',
      stationImage: 'policestation.png',
      stationLatitude: '13.639189',
      stationLongtitude: '100.3479196',
    ),
    FastCallList(
      stationName: 'สถานีตำรวจนครบาลบางมด',
      stationFacebook: 'Bangmod.Police.Station',
      stationPhone: '024167711',
      stationImage: 'policestation.png',
      stationLatitude: '13.706321',
      stationLongtitude: '100.4264933',
    ),
    FastCallList(
      stationName: 'สถานีตำรวจนครบาลบางขุนเทียน',
      stationFacebook: 'bktpolice',
      stationPhone: '024150671',
      stationImage: 'policestation.png',
      stationLatitude: '13.706321',
      stationLongtitude: '100.4264933',
    ),
    FastCallList(
      stationName: 'สถานีตำรวจนครบาลวัดพระยาไกร',
      stationFacebook: 'watprayakra',
      stationPhone: '022915872',
      stationImage: 'policestation.png',
      stationLatitude: '13.7899034',
      stationLongtitude: '100.4357223',
    ),
    FastCallList(
      stationName: 'สถานีตำรวจนครบาลตลาดพลู',
      stationFacebook: 'profile.php?id=100068815465939',
      stationPhone: '024726108',
      stationImage: 'policestation.png',
      stationLatitude: '13.7899034',
      stationLongtitude: '100.4357223',
    ),
    FastCallList(
      stationName: 'สถานีตำรวจนครบาลสมเด็จเจ้าพระยา',
      stationFacebook: 'somdejpolice',
      stationPhone: '024381032',
      stationImage: 'policestation.png',
      stationLatitude: '13.7899034',
      stationLongtitude: '100.4357223',
    ),
    FastCallList(
      stationName: 'สถานีตำรวจนครบาลบางรัก',
      stationFacebook: 'bangrakpolicestation',
      stationPhone: '022340242',
      stationImage: 'policestation.png',
      stationLatitude: '13.7899034',
      stationLongtitude: '100.4357223',
    ),
    FastCallList(
      stationName: 'สถานีตำรวจนครบาลลุมพินี',
      stationFacebook: 'สถานีตำรวจนครบาลลุมพินี-766502640382605',
      stationPhone: '022555994',
      stationImage: 'policestation.png',
      stationLatitude: '13.7748857',
      stationLongtitude: '100.4875214',
    ),
    FastCallList(
      stationName: 'สถานีตำรวจนครบาลทองหล่อ',
      stationFacebook: 'thonglorpoliceofficial',
      stationPhone: '023818853',
      stationImage: 'policestation.png',
      stationLatitude: '13.7748857',
      stationLongtitude: '100.4875214',
    ),
    FastCallList(
      stationName: 'สถานีตำรวจนครบาลบางกอกใหญ่',
      stationFacebook: 'bangkokyaipolicestation',
      stationPhone: '024666696',
      stationImage: 'policestation.png',
      stationLatitude: '13.796374',
      stationLongtitude: '100.4737421',
    ),
    FastCallList(
      stationName: 'สถานีตำรวจนครบาลพระราชวัง',
      stationFacebook: 'profile.php?id=100064728397360',
      stationPhone: '022245050',
      stationImage: 'policestation.png',
      stationLatitude: '13.796374',
      stationLongtitude: '100.4737421',
    ),
    FastCallList(
      stationName: 'สถานีตำรวจนครบาลจักรวรรดิ',
      stationFacebook: 'pages/สถานีตำรวจนครบาลจักรวรรดิ/100506241543150',
      stationPhone: '022254094',
      stationImage: 'policestation.png',
      stationLatitude: '13.796374',
      stationLongtitude: '100.4737421',
    ),
    FastCallList(
      stationName: 'สถานีตำรวจนครบาลสำราญราษฎร์',
      stationFacebook: 'samranratpolicestation',
      stationPhone: '022262136',
      stationImage: 'policestation.png',
      stationLatitude: '13.796374',
      stationLongtitude: '100.4737421',
    ),
    FastCallList(
      stationName: 'สถานีตำรวจนครบาลนางเลิ้ง',
      stationFacebook: 'nanglerngpolicestation',
      stationPhone: '022813002',
      stationImage: 'policestation.png',
      stationLatitude: '13.796374',
      stationLongtitude: '100.4737421',
    ),
    FastCallList(
      stationName: 'สถานีตำรวจนครบาลพญาไท',
      stationFacebook: 'pages/สถานีตำรวจนครบาลพญาไท/179363532117187',
      stationPhone: '023546958',
      stationImage: 'policestation.png',
      stationLatitude: '13.796374',
      stationLongtitude: '100.4737421',
    ),
    FastCallList(
      stationName: 'สถานีตำรวจนครบาลดุสิต',
      stationFacebook: 'dusit.police',
      stationPhone: '022415043',
      stationImage: 'policestation.png',
      stationLatitude: '13.796374',
      stationLongtitude: '100.4737421',
    ),
    FastCallList(
      stationName: 'สถานีตำรวจนครบาลบางซื่อ',
      stationFacebook: 'profile.php?id=100069220929460',
      stationPhone: '022791500',
      stationImage: 'policestation.png',
      stationLatitude: '13.8117939',
      stationLongtitude: '100.5020346',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          'สายด่วน กทม.',
          style: GoogleFonts.kanit(),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.20,
            child: Image.asset(
              'assets/images/police2.png',
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(),
              itemCount: foodShopList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FastCallDetailUI(
                          fastCallList: foodShopList[index],
                        ),
                      ),
                    );
                  },
                  leading: Image.asset(
                    'assets/images/' + foodShopList[index].stationImage,
                  ),
                  title: Text(
                    foodShopList[index].stationName,
                    style: GoogleFonts.kanit(),
                  ),
                  subtitle: Text(
                    'Tel: ' + foodShopList[index].stationPhone,
                    style: GoogleFonts.kanit(),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
        ],
      ),
    ) ;
  }
}