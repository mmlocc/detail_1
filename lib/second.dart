import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'main.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

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
                "https://teamsparta.notion.site/image/https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2F95df6f45-6e8a-4dd7-b55e-89ffb261a6d0%2FUntitled.jpeg?table=block&id=4d5cf07e-e21e-47de-98dc-edc1e3d4ef94&spaceId=83c75a39-3aba-4ba4-a792-7aefe4b07895&width=2000&userId=&cache=v2",
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
                      "정동교",
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
                      "앙 개발띠~",
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
                                        "정동교",
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
                                        "ENFJ",
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
                                      '"4개월의 여정 꽉 채워 가고 싶습니다."',
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
                                      "이천",
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
                                      "게임, 독서",
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
                                      "위기때에 빛나는 임기응변",
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
                                      "술 마시면 밥도 많이 먹습니다.",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 60),
                              TextButton(
                                onPressed: () {
                                  launch('https://noobd.tistory.com/');
                                },
                                child: Text(
                                  "정동교의 블로그 보기",
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
