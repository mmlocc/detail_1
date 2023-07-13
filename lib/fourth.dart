import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'main.dart';

class Fourth extends StatelessWidget {
  const Fourth({Key? key}) : super(key: key);

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
                "https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FD9YF4%2FbtsnwmsyAFi%2F7Lj1s7666VszqLDXsn2CG0%2Fimg.jpg",
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
                      "송정음",
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
                      '쓰러져도 다시 일어나!',
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
                                        "송정음",
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
                                        "INFP",
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
                                      '"만나서 반갑습니다~👋"',
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
                                      "대전 토박이입니다ㅋㅋ",
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
                                      "농구, 배드민턴 등 운동이요!",
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
                                      "엉덩이가 무겁습니다.",
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
                                      "맥북이 터질라고 해요🤯",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 60),
                              TextButton(
                                onPressed: () {
                                  launch('https://umm23.tistory.com/');
                                },
                                child: Text(
                                  "'송정음'의 블로그 보기",
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
