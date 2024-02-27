import 'package:flutter/material.dart';
import 'package:mini12/consts/warn_image.dart';

class mywarn extends StatefulWidget {
  const mywarn({Key? key}) : super(key: key);

  @override
  _mywarnState createState() => _mywarnState();
}

class _mywarnState extends State<mywarn> {
  static List<String> warnname = [
    'สินค้าถูกจัดส่งแล้ว',
    'พัสดุของท่านกำลังจัดส่ง',
    'มีสินค้าแนะนำ',
    'โปรโมชั่น 11.11',
    'อัปเดต'
  ];

  static List url = [
    'https://images-storage.thaiware.site/software/2023_02/thumbnails/14967_230203071440M2.png',
    'https://images-storage.thaiware.site/software/2023_02/thumbnails/14967_230203071440M2.png',
    'https://images-storage.thaiware.site/software/2023_02/thumbnails/14967_230203071440M2.png',
    'https://images-storage.thaiware.site/software/2023_02/thumbnails/14967_230203071440M2.png',
    'https://images-storage.thaiware.site/software/2023_02/thumbnails/14967_230203071440M2.png',
    'https://images-storage.thaiware.site/software/2023_02/thumbnails/14967_230203071440M2.png',
  ];

  final List<warnModel> Fruitdata = List.generate(
      warnname.length,
      (index) => warnModel('${warnname[index]}', '${url[index]}',
          '${warnname[index]} Description...'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('แจ้งเตือน'),
        ),
        body: ListView.builder(
            itemCount: Fruitdata.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(Fruitdata[index].name),
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.network(Fruitdata[index].ImageUrl),
                  ),
                  // onTap: () {
                  //   Navigator.of(context).push(MaterialPageRoute(
                  //       builder: (context) => FruitDetail(
                  //             fruitDataModel: Fruitdata[index],
                  //           )));
                  // },
                ),
              );
            }));
  }
}
