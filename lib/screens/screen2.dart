import 'package:flutter/material.dart';
import 'package:pit_slider_carousel/pit_slider_carousel.dart';
import 'package:google_fonts_arabic/fonts.dart';

class ReserveCourse extends StatefulWidget {
  @override
  _ReserveCourseState createState() => _ReserveCourseState();
}

class _ReserveCourseState extends State<ReserveCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 150.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
             
              background: _buildCarousel(),
            ),
            
            actions: <Widget>[
              IconButton(
                  icon: const Icon(Icons.share),
                  tooltip: 'share',
                  onPressed: () {}),
              IconButton(
                  icon: const Icon(Icons.star_border),
                  tooltip: 'favourites',
                  onPressed: () {}),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Text(
                      '#الموسيقى',
                      style: new TextStyle(
                        fontFamily: ArabicFonts.Cairo,
                        package: 'google_fonts_arabic',
                        color: Colors.grey,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  Text(
                    'الاسم الكامل للدوره بشكل افتراضى من اجل   اظهار شكل التصميم',
                    style: new TextStyle(
                      fontFamily: ArabicFonts.Cairo,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      package: 'google_fonts_arabic',
                      fontSize: 20.0,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.calendar_today,
                      color: Colors.grey,
                    ),
                    title: Text(
                      'الاربعاء ,13 نيسان ,7:00 مساءا',
                      style: new TextStyle(
                        fontFamily: ArabicFonts.Cairo,
                        package: 'google_fonts_arabic',
                        color: Colors.grey,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.place,
                      color: Colors.grey,
                    ),
                    title: Text(
                      'عنوان الدوره او الحدث بشكل كامل',
                      style: new TextStyle(
                        fontFamily: ArabicFonts.Cairo,
                        package: 'google_fonts_arabic',
                        color: Colors.grey,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 1.0,
                    color: Colors.grey[200],
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: ExactAssetImage('assets/1.png'),
                      minRadius: 20,
                      maxRadius: 35,
                    ),
                    title: Text(
                      'اسم المدرب',
                      style: new TextStyle(
                        fontFamily: ArabicFonts.Cairo,
                        package: 'google_fonts_arabic',
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  Text(
                    ' الاسم الكامل للدوره بشكل افتراضى من اجل   اظهار شكل التصميم ',
                    style: new TextStyle(
                      fontFamily: ArabicFonts.Cairo,
                      package: 'google_fonts_arabic',
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 15.0,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 1.0,
                    color: Colors.grey[200],
                  ),
                  ListTile(
                    leading: Text(
                      'عن الدوره',
                      style: new TextStyle(
                        fontFamily: ArabicFonts.Cairo,
                        package: 'google_fonts_arabic',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  Text(
                    ' الاسم الكامل للدوره بشكل افتراضى من اجل   اظهار شكل التصميم ',
                    style: new TextStyle(
                      fontFamily: ArabicFonts.Cairo,
                      package: 'google_fonts_arabic',
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 15.0,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 1.0,
                    color: Colors.grey[200],
                  ),
                  ListTile(
                    leading: Text(
                      'تكلفه الدوره',
                      style: new TextStyle(
                        fontFamily: ArabicFonts.Cairo,
                        package: 'google_fonts_arabic',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Text(
                      'الحجز العادى',
                      style: new TextStyle(
                        fontFamily: ArabicFonts.Cairo,
                        package: 'google_fonts_arabic',
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                        fontSize: 15.0,
                      ),
                    ),
                    trailing: Text(
                      '200 ريال',
                      style: new TextStyle(
                        fontFamily: ArabicFonts.Cairo,
                        package: 'google_fonts_arabic',
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 12,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(0.0),
                      color: Colors.transparent,
                    ),
                    child: RaisedButton(
                      child: Text(
                        'قم بالحجز الان',
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                      color: Colors.deepPurple[300],
                      splashColor: Colors.grey,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget _buildCarousel() {
  CarouselController ctrl;
  List<String> image = [
    'assets/1.jpg',
    'assets/2.jpg',
    'assets/1.jpg',
    'assets/2.jpg'
  ];
  List<CarouselItem> list = [];
  for (int i = 0; i < image.length; i++) {
    list.add(CarouselItem(
      Container(
          //padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Container(
        color: i % 2 == 0 ? Colors.red : Colors.blue,
        child: Image.asset(
          image[i],
          fit: BoxFit.fill,
        ),
      )),
    ));
  }

  ctrl = CarouselController(carouselItems: list);

  return new PitSliderCarousel(
      maxDotsIndicator: 10,
      dotSize: 6.0,
      activeDotColor: Colors.white,
      dotColor: Colors.white24,
      useDot: true,
      animationCurve: Curves.ease,
      autoPlay: false,
      dotPosition: Position(bottom: 20.0, left: -250.0),
      carouselController: ctrl);
}
