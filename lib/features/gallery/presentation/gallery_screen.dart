import 'package:bilder_gallery_app/features/aboutme/presentation/about_me.dart';
import 'package:bilder_gallery_app/features/gallery/domain/gallery_grid.dart';
import 'package:flutter/material.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  int currentPageIndex = 0;

  List<Widget> pages = [GalleryGridWidget(), AboutMeWidget()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyGallery", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF64011E),
      ),
      body: Container(
        color: const Color(0xFFFEF7FF),
        child: pages[currentPageIndex],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.photo), label: "Bilder"),
          NavigationDestination(icon: Icon(Icons.person), label: "Über mich"),
        ],
      ),
    );
  }
}
