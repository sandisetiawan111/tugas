import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp  extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List txt = [
    'Merah',
    'Biru',
    'Kuning',
  ];
  List clr = [
    Colors.blue,
    Colors.grey,
    Colors.grey,
    Colors.grey,
    Colors.grey,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 4, 8, 255),
        title: Text(
          "Lesson",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_outlined),
            alignment: Alignment.topRight),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert_sharp),
            color: Colors.white,
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 14, 5, 133),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(180, 180),
                  bottomRight: Radius.elliptical(180, 180),
                )),
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 18),
            child: Center(
              child: Text(
                'Translate these phrases to english',
                style: TextStyle(
                  fontSize: 65,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            height: 500,
            margin: EdgeInsets.symmetric(horizontal: 18),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: .2,
                  blurRadius: 50,
                  offset: Offset(0, 10), // changes position of shadow
                ),
              ],
            ),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Positioned(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.message,
                            color: Colors.blue,
                            shadows: [],
                          ),
                        ],
                      ),
                      right: 100),
                ),
                Spacer(),
                Positioned(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                  ),
                  right: 0,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '"',
                        style: TextStyle(
                          fontSize: 85,
                        ),
                      ),
                      Text(
                        'Buenas noches, ¿cómo estuvo su día?',
                        style: TextStyle(
                          fontSize: 70,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(left: 100),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '"',
                                style: TextStyle(fontSize: 85),
                              ),
                            ]),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(18.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 16,
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Center(
                          child: Icon(
                        Icons.circle,
                        color: clr[index],
                        size: 9,
                      )),
                    );
                  },
                ),
              ),
            ],
          ),
          Spacer(),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Your Answer....',
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.check_circle_outline_sharp),
            splashRadius: 20,
            color: Color.fromARGB(255, 168, 175, 76),
          ),
        ],
      ),
    );
  }
}