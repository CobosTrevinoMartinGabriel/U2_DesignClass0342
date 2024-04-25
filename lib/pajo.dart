import 'package:cobos/login.dart';
import 'package:flutter/material.dart';
import 'package:cobos/produc_data.dart';

class pajo extends StatefulWidget {
  const pajo({Key? key}) : super(key: key);

  @override
  State<pajo> createState() => _pajoState();
}

class _pajoState extends State<pajo> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Container(
            height: height * 0.95,
            width: width * 0.95,
            color: Colors.blueAccent,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: PageView.builder(
                        onPageChanged: (page) {
                          setState(() {
                            currentPage = page;
                          });
                        },
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                alignment: Alignment.topRight,
                                height: 300,
                                width: 300,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(fichas[index].img),
                                  ),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LOGIN()));
                                  },
                                  child: Text(
                                    "Saltar",
                                    style: TextStyle(
                                      backgroundColor: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                fichas[index].title,
                                textScaleFactor: 2,
                                style: TextStyle(color: Color(0xffffa907)),
                              ),
                              Text(
                                fichas[index].description,
                                textScaleFactor: 1.1,
                                style: TextStyle(color: Color(0xff4d1b0a)),
                              )
                            ],
                          );
                        }),
                  ),
                  SizedBox(
                      height: 10,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 0),
                            height: 10,
                            width: currentPage == index ? 25 : 10,
                            color: currentPage == index
                                ? Color(0xffff8a3b)
                                : Color(0xff555555),
                          );
                        },
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      currentPage == 2
                          ? ElevatedButton(
                              onPressed: () {},
                              child: Icon(Icons.arrow_forward_ios))
                          : Container()
                    ],
                  )
                ],
              ),
            )),
      )),
    );
  }
}
