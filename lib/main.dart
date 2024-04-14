import 'package:flutter/material.dart';

import 'Screens/complaint_Screen.dart';
import 'Screens/home_Screen.dart';
import 'Screens/treat_Animal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/home_Screen': (context) => HomeScreen(),
        '/complaint_Screen': (context) => ComplaintScreen(),
        '/treat_Animal': (context) => TreatingAnimalScreen(),

      },
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('WELCOME', style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
              color: Color(0xff1c2e4a),
            ),),
            Container(
              height: 200,
              width: 200,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage("assets/images/logo.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                const Text('HOPE', style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),),

                const Text('For Stray Animals', style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),),
                const Text('Where every paw counts in making', style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),),
                const Text('a difference for the stray animals', style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),),
                const SizedBox(
                  height: 100,
                ),
                Center(
                  child: SizedBox(
                    width: 250,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, // Background color
                        shape:  RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50), // Squared shape
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/home_Screen');
                      },
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600// Text color
                        ),
                      ),
                    ),
                  ),
                ),



              ],
            ),

          ],
        ),
      ),
    );
  }
}