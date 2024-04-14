import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 400,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage("assets/images/animal.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Row(
                children: [
                  SizedBox(width: 300,),
                  Center(

                    child: ElevatedButton(
                      onPressed: () {
                        // Navigate to the ComplaintScreen when the button is pressed
                        Navigator.of(context).pushNamed('/complaint_Screen');
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white, backgroundColor: Colors.red, minimumSize: const Size(180, 150), // Text color when button is in a pressed state
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8), // Rounded corners
                        ),
                      ),
                      child: const Text(
                        "Register a Complaint",
                        style: TextStyle(
                          color: Colors.white, // Text color
                          fontSize: 20, // Larger font size
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 20,),

                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigate to the ComplaintScreen when the button is pressed
                        Navigator.of(context).pushNamed('/treat_Animal');
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white, backgroundColor: Colors.green, minimumSize: const Size(200, 150), // Text color when button is in a pressed state
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8), // Rounded corners
                        ),
                      ),
                      child: const Text(
                        "Treat an Animal",
                        style: TextStyle(
                          color: Colors.white, // Text color
                          fontSize: 20, // Larger font size
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
