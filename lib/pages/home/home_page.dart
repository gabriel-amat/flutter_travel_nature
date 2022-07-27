import 'package:flutter/material.dart';
import 'package:flutter_travel_nature/pages/home/widgets/custom_appbar.dart';
import 'package:flutter_travel_nature/pages/home/widgets/custom_search_bar.dart';
import 'package:flutter_travel_nature/pages/home/widgets/list.dart';
import 'package:flutter_travel_nature/pages/home/widgets/weather_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            CustomAppBar(),
            SizedBox(height: 22),
            WeatherWidget(),
            CustomSearchBar(),
            Flexible(
              fit: FlexFit.loose,
              child: ListWidget(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.amber,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.rectangleList),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border_rounded),
            label: '',
          ),
        ],
      ),
    );
  }
}
