import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.green],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            tileMode: TileMode.repeated,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _textHeader(),
              _textWelcome(),
              _buttonStart(),
            ],
          ),
        ),
      ),
    );
  }

  // Header Widget
  Widget _textHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.help,
            color: Colors.white,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'ช่วยเหลือ',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Kanit',
            ),
          ),
        ),
        Text(
          '|',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Kanit',
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'ภาษาไทย',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Kanit',
            ),
          ),
        ),
      ],
    );
  }

// Welcome Widget
  Widget _textWelcome() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'สวัสดี',
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Kanit',
          ),
        ),
        Text(
          'ยินดีต้อนรับสู่โมบายแอปพลิเคชัน',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontFamily: 'Kanit',
          ),
        ),
      ],
    );
  }

// Start button
  Widget _buttonStart() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: ElevatedButton(
          onPressed: () => {
            Navigator.pushNamed(
              context,
              '/dashboard',
              arguments: {
                'name': 'John Wick',
                'age': 44,
              },
            )
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            padding: EdgeInsets.all(15),
            backgroundColor: Colors.white,
            foregroundColor: Colors.blue,
          ),
          child: const Text(
            'เริ่มต้นใช้งาน',
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Kanit',
            ),
          ),
        ),
      ),
    );
  }
}
