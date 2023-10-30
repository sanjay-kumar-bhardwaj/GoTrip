import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// import 'package:travel/Component/Profile.dart';
// import 'package:travel/Homepage.dart';
// import 'package:travel/User.dart';

void main() {
  runApp(Gallery());
}

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PhotoGallery(),
    );
  }
}

class PhotoGallery extends StatefulWidget {
  @override
  _PhotoGalleryState createState() => _PhotoGalleryState();
}

class _PhotoGalleryState extends State<PhotoGallery> {
  List<String> imageUrls = ['image1.jpg','image2.jpg', 'image3.jpg', 'image4.jpg', 'image5.jpg', 'image6.jpg', 'image7.jpeg', 'image8.jpg'];

  @override
  void initState() {
    super.initState();
    //fetchImageUrls();
  }

  // Future<void> fetchImageUrls() async {
  //   // Replace this with the actual API endpoint that provides image URLs
  //   final response = await http.get(Uri.parse('https://api.example.com/image-endpoint'));

  //   if (response.statusCode == 200) {
  //     final List<dynamic> data = json.decode(response.body);
  //     List<String> urls = data.map((item) => item['imageUrl'].toString()).toList();

  //     setState(() {
  //       imageUrls = urls;
  //     });
  //   } else {
  //     throw Exception('Failed to load image URLs');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Gallery'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          
          crossAxisCount: 2, // Number of columns
        ),
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Image.asset(
            "assets/images/${imageUrls[index]}",
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
