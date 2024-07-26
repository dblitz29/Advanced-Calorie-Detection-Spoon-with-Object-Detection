import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tugasakhir_tes1/data.dart';
import 'package:tugasakhir_tes1/question5.dart';
import 'package:tugasakhir_tes1/styles.dart';

class QuestionFour extends StatefulWidget {
  const QuestionFour({Key? key}) : super(key: key);

  @override
  State<QuestionFour> createState() => _QuestionFourState();
}

class _QuestionFourState extends State<QuestionFour> {
  bool _notShowButtonRightArrow = true;
  TextEditingController controllerTinggiBadan = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.primaryColor,

      // Appbar dengan arrow
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Styles.primaryColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
      ),
      // Badan Utama
      body: Padding(
        padding:
            const EdgeInsets.only(top: 30, left: 60, right: 60, bottom: 40),
        child: Column(
          children: [
            // Teks 1 - Selamat Datang
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  Text(
                    "Berapakah tinggi badan Anda saat ini?",
                    textAlign: TextAlign.center,
                    style: Styles.headlineQuestion1,
                  ),
                  Text(
                    "Anda dapat mengubahnya nanti",
                    textAlign: TextAlign.center,
                    style: Styles.headlineQuestion2,
                  ),
                ],
              ),
            ),

            // Teks 2 - Textsize Berat Badan
            const Spacer(
              flex: 1,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 120,
                  height: 65,
                  color: Styles.secondColor,
                  margin: EdgeInsets.all(5),
                  child: TextField(
                    decoration: new InputDecoration(
                        border: InputBorder.none,
                        hintText: "",
                        contentPadding: EdgeInsets.all(10)),
                    inputFormatters: [
                      WhitelistingTextInputFormatter(
                          RegExp(r'^(\d+)?\.?\d{0,2}')),
                    ],
                    onChanged: (value) {
                      setState(() {
                        if (controllerTinggiBadan.text != "") {
                          _notShowButtonRightArrow = false;
                        } else {
                          _notShowButtonRightArrow = true;
                        }
                      });
                    },
                    controller: controllerTinggiBadan,
                    style: Styles.inputFieldText1,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 65,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                  ),
                  child: Text(
                    "Cm",
                    style: Styles.inputFieldText1,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),

            // Teks 3 - Button Right Arrow
            const Spacer(
              flex: 2,
            ),

            SizedBox(
              height: 0,
            ),
            _notShowButtonRightArrow
                ? const SizedBox.shrink()
                : IconButton(
                    icon: Image.asset('assets/images/rightArrowButton.png'),
                    iconSize: 42,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const QuestionFive()));
                    },
                  ),

            const Spacer(
              flex: 1,
            ),

            // Teks 4 - Sudah memiliki akun?
            const Spacer(
              flex: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Sudah memiliki akun?",
                  textAlign: TextAlign.center,
                  style: Styles.bodyText6,
                ),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const QuestionFive()));
                  },
                  child: const Text(
                    "Masuk",
                    style: Styles.bodyText7,
                  ),
                )
              ],
            ),
            Text(dataValue.testBB.text),
          ],
        ),
      ),
    );
  }
}
