import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'main.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Image.network(
                "https://postfiles.pstatic.net/MjAyMzA3MTJfMjI3/MDAxNjg5MTU5Njg4MTg0.1LC1V8XDu1X98PRjgcqT8n8-EI7efYVs8_sTa1JHXa0g.nfrilh8KDFi4c3XFn5Ph-f-NAZZEastftTi7mbJnjnwg.JPEG.blamezz/IMG_6333.JPG?type=w966",
                fit: BoxFit.cover,
              ),
            ),

//돌아가기

            Positioned(
              top: 40,
              left: 12,
              child: Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MyApp(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 30,
                        color: Colors.black,

// 좌측 상단 아이콘 색상 설정
                      ),
                    ),
                  ],
                ),
              ),
            ),

// 이름

            Positioned(
              bottom: 190,
              left: 24,
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Row(
                  children: [
                    Text(
                      "김남인",
                      style: TextStyle(
                          shadows: [
                            Shadow(blurRadius: 10.0, offset: Offset(4.0, 4.0))
                          ],
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),

// 소개

            Positioned(
              bottom: 140,
              left: 28,
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.09,
                child: Row(
                  children: [
                    Text(
                      "5조 김남인 입니다!",
                      style: TextStyle(
                          shadows: [
                            Shadow(blurRadius: 10.0, offset: Offset(4.0, 4.0))
                          ],
                          fontSize: 32,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),

// bottom arrow icon

            Positioned(
              bottom: 8,
              left: 0,
              right: 35,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.keyboard_double_arrow_up,

                        color: Colors.black,

// 하단 화살표 색상 변경

                        size: 60,
                      ),
                    ),
                  ],
                ),
              ),
            ),

// media button

            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: 100,
                child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(50))),
                      builder: (BuildContext context) {
                        return Container(
                          height: 700,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(80),
                              topRight: Radius.circular(80),
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          32, 40, 0, 0),
                                      child: Text(
                                        "김남인",
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          230, 40, 0, 0),
                                      child: Text(
                                        "INTJ",
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 40),
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      '미래로 세계로 야야야!',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 40),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "고향",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      style: TextButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(20),
                                        backgroundColor:
                                            Color.fromARGB(255, 255, 201, 120),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "충청북도 충주 토박이입니다! 🤗",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 20, 0, 0),
                                child: Row(
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "취미",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      style: TextButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(20),
                                        backgroundColor:
                                            Color.fromARGB(255, 255, 201, 120),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "음악듣기가 최애 취미에요! 💿",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 20, 0, 0),
                                child: Row(
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "장점",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      style: TextButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(20),
                                        backgroundColor:
                                            Color.fromARGB(255, 255, 201, 120),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "이야기를 잘 들어주고 \n끈기가 있습니다! 🙈",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 20, 0, 0),
                                child: Row(
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "TMI",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      style: TextButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(20),
                                        backgroundColor:
                                            Color.fromARGB(255, 255, 201, 120),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "벌레를 보면 소리를 지릅니다,,😅",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 60),
                              TextButton(
                                onPressed: () {
                                  launch('https://mmlocc.tistory.com/');
                                },
                                child: Text(
                                  "저의 블로그 보기",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  shape: StadiumBorder(),
                                  padding: EdgeInsets.fromLTRB(60, 12, 60, 12),
                                  backgroundColor: Colors.orange,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
