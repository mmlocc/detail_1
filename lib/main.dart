import 'package:flutter/material.dart';
import 'next_page.dart';
import 'second.dart';
import 'third.dart';
import 'fourth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "처음처럼",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 118,
                  vertical: 10,
                ),
                child: const Text(
                  "뭔가 멋있는 한 마디",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 6, 0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "팀 소개",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 320,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  final titles = [
                    "팀 소개 😖\n안녕하세요 5조 처음처럼 입니다.",
                    "팀 목표 😤\n소통과 화합, 논란없는 한 주 보내기",
                    "팀 좌우명 🤔\n초심을 잃지말자!\n남은 기간 무사히 보내기!",
                  ];
                  final profileTitle = titles[index];
                  final imageUrls = [
                    "https://postfiles.pstatic.net/MjAyMzA3MTFfNjcg/MDAxNjg5MDc2ODU0NzQy.Zlm0asRfE0ZM-qjYJfWdBa1_xpgDyi-ZNR_36Ldabtkg.3AafosB5KONaaQS3Ylo9oHbcErX4MrrluFNh4yIRMc4g.PNG.blamezz/%EC%9D%B4%EB%AF%B8%EC%A7%80.PNG?type=w966",
                    "https://postfiles.pstatic.net/MjAyMzA3MTFfNjcg/MDAxNjg5MDc2ODU0NzQy.Zlm0asRfE0ZM-qjYJfWdBa1_xpgDyi-ZNR_36Ldabtkg.3AafosB5KONaaQS3Ylo9oHbcErX4MrrluFNh4yIRMc4g.PNG.blamezz/%EC%9D%B4%EB%AF%B8%EC%A7%80.PNG?type=w966",
                    "https://postfiles.pstatic.net/MjAyMzA3MTFfNjcg/MDAxNjg5MDc2ODU0NzQy.Zlm0asRfE0ZM-qjYJfWdBa1_xpgDyi-ZNR_36Ldabtkg.3AafosB5KONaaQS3Ylo9oHbcErX4MrrluFNh4yIRMc4g.PNG.blamezz/%EC%9D%B4%EB%AF%B8%EC%A7%80.PNG?type=w966",
                  ]; // 팀 소개 카드 사진 추가

                  return Container(
                    width: 210,
                    margin: const EdgeInsets.symmetric(horizontal: 6),
                    child: Card(
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      elevation: 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              imageUrls[index],
                              fit: BoxFit.fill,
                              height: 210,
                              width: double.infinity,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Text(
                                profileTitle,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 8),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "이 사람들이 더 궁금하다면?\n 김김김        김김김       김김김       김김김",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Next_Page(),
                              ),
                            );
                          },
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(
                              "https://postfiles.pstatic.net/MjAyMzA3MTJfMjEy/MDAxNjg5MTM2NzcwODU4._gnYhu6rRtB4f-uNA4yN6X-hQu1SlET7QbYKSanZh9sg.vcaU-U-hjd9rDnyZ37vmgkAjxraYdzIN6tgW88-Y9Dsg.JPEG.blamezz/%EC%9D%B4%EB%AF%B8%EC%A7%80.jpeg?type=w966",
                            ),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Next_Page(),
                              ),
                            );
                          },
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(
                              "https://postfiles.pstatic.net/MjAyMzA3MTJfMjQ3/MDAxNjg5MTM2NzcwODYx.XdST9KLvtFch_dNrgMwTHsL3KNK13i2TmiNvkZ9RGykg.POUfi8Swa4jcs8OH_NId3zzIiGGx0WhVXT1gqPs7y9Ug.JPEG.blamezz/%EC%9D%B4%EB%AF%B8%EC%A7%80_(1).jpeg?type=w966",
                            ),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Next_Page(),
                              ),
                            );
                          },
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(
                              "https://postfiles.pstatic.net/MjAyMzA3MTJfMzAw/MDAxNjg5MTM2NzcwODQ3.sqjvIQtO-Za6Wt4liDXKEIyCJ71aeLAfcoaP3FqlSMQg.UCKoNaNlWs8ADfT26ImYwM6hZVCFumoAaNavTY9iCwkg.JPEG.blamezz/%EC%9D%B4%EB%AF%B8%EC%A7%80_(3).jpeg?type=w966",
                            ),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Next_Page(),
                              ),
                            );
                          },
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(
                              "https://postfiles.pstatic.net/MjAyMzA3MTJfMjI3/MDAxNjg5MTM2NzcwODQ4.8fH40YeNJJMmj2opPAruZnXi_mj9-jXkOmZLJnImBgAg.tYHWvyl9MmgdEd575iqE-FM37QOc9fgbi6lNpPG4Ii8g.JPEG.blamezz/%EC%9D%B4%EB%AF%B8%EC%A7%80_(2).jpeg?type=w966",
                            ),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
