import 'package:flutter/material.dart';
import 'package:sholat_yuk/ui/pages/sholat_list_page.dart';

class HomePage extends StatelessWidget {
  static String route = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sholat Yuk!'),
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: screenSize.width * 0.9,
            child: Column(
              children: [
                Container(
                    width: 250,
                    height: 250,
                    child: Image.asset(
                      'assets/mosque.png',
                      fit: BoxFit.contain,
                    )),
                const Padding(
                  padding: EdgeInsets.only(bottom: 28.0),
                  child: Text(
                    'Jadwal Sholat Hari ini:',
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                const SholatList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
