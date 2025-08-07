import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(17.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1E2A1F),
                    borderRadius: BorderRadius.circular(16),
            ),
            child: const Text(
              "The Dark Knight",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            ),
            SizedBox(height: 12),
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://wallpapers.com/images/hd/the-dark-knight-film-poster-usn88qj3uj5ci7rv.jpg', 
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
            ),
            SizedBox(height: 15),
            Row(
              children: const[
                Text("2008", style: TextStyle(color: Colors.white70)),
                SizedBox(width:10),
                Text("152 mins", style: TextStyle(color: Colors.white70)),
                SizedBox(width:10),
                Text("PG-13", style: TextStyle(color: Colors.white70)),
              ],

            ),
          SizedBox(height: 4.0),
          Wrap(
            spacing: 10,
            children:const [
              Chip(label: Text("Action"), backgroundColor: Colors.green),
              Chip(label: Text("Crime"), backgroundColor: Colors.green),
            ],
          ),
          SizedBox(height:4.0),
          Row(
            children:const [
              Icon(Icons.star, color: Colors.green, size: 19),
              SizedBox(width:4),
              Text("9.0/10", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 19)),
              SizedBox(width:8.0),
              Text("(2.5M votes)", style: TextStyle(color: Colors.white,fontSize: 12.0)),

            ],
          ),
          const SizedBox(height:4.0),
          Wrap(
            spacing: 10,
            children:const [
              Chip(label: Text("Drama"), backgroundColor: Colors.green),
            ],
          ),
              const Text(
                "Director: Christopher Nolan",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 4,),
              const Text(
                "Writers: Jonathan Nolan, Christopher Nolan",
                style: TextStyle(color: Colors.white),
              ),
            const SizedBox(height:13),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF1E2A1F),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(12),
              child: const Text(
                "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
                style: TextStyle(color: Colors.white70),  
              ),
              ),
               SizedBox(height: 12),
               const Row(
                children: [
                  Icon(Icons.language, color: Colors.white),
                  SizedBox(width: 8),
                  Text("Language:\nEnglish", style: TextStyle(color: Colors.white)),
                  SizedBox(width: 20),
                  Icon(Icons.gps_fixed_outlined, color: Colors.white),
                  SizedBox(width: 8),
                  Text("Country:\nUnited States", style: TextStyle(color: Colors.white)),
          ],
        ),
        const SizedBox(height: 25),
        const Row(
          children: [
            Icon(Icons.emoji_events, color: Colors.white),
            SizedBox(width: 8),
            Text("Awards:\nWon 2 Oscars",style: TextStyle(color: Colors.white)),
          ],
          ),
          const SizedBox(height: 24),  
          Center(
            child:ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 150, vertical: 20),
                shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
              ),
               onPressed: () {},
                  child: const Text("Shuffle", style: TextStyle(color: Colors.black)),
            ),
          ),
          ],
      ),
      ),
    ),
    );
  }
}