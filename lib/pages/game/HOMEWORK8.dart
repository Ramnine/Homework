import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';


Widget _buildButtonl(String a,int x) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Container(
      height: 40.0,
      width: 105.0,
      //color: Colors.green, // ห้ามกำหนด color ตรงนี้ ถ้าหากกำหนดใน BoxDecoration แล้ว
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextButton(
        onPressed: () {
          if(x==1) {
            Text(
              'การเดินทาง\n'
                  'ขากลับคงจะ\n'
                  'เหงาน่าดู\n',
              style: GoogleFonts.prompt(fontSize: 70),
            );
          }
          else if(){

          }
        },
        child: Text(
          '$a',
          style: TextStyle(fontSize: 15, color: Colors.blueGrey),
        ),
      ),
    ),
  );
}

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override

  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(
          title: Text("THAI FONT VIEWER"),
          backgroundColor: Colors.black,
        ),
        body: Container(

          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'การเดินทาง\n'
                      'ขากลับคงจะ\n'
                      'เหงาน่าดู\n',
                      style: GoogleFonts.prompt(fontSize: 70),
                    ),
                  ],
                ),

                    Text(

                      'Font: Prompt',
                      style: TextStyle(fontSize: 30),
                  ),

                Expanded(
                  child: Container(
                    height: 120,
                    width: 400,
                    //color: Colors.green, // ห้ามกำหนด color ตรงนี้ ถ้าหากกำหนดใน BoxDecoration แล้ว
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(0.0),

                    ),
                    child: Wrap(alignment: WrapAlignment.center, children: [
                      _buildButtonl('Prompt'),
                      _buildButtonl('Kanit'),
                      _buildButtonl('Sarabun'),
                      _buildButtonl('Chakra Petch'),
                      _buildButtonl('Mitr'),
                      _buildButtonl('Mali'),
                      _buildButtonl('Taviraj'),
                      _buildButtonl('Sriracha'),
                      _buildButtonl('Pridi'),
                    ]),
                  ),
                ),
                Card(
                  elevation: 5.0, //การยกตัวของการ์ด ซึ่งทำให้เกิดเงา
                )
              ],
            ),
          )),
        ));
  }
}
