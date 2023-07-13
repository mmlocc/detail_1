import 'package:flutter/material.dart';
import 'next_page.dart';
import 'second.dart';
import 'third.dart';
import 'package:intl/intl.dart';
import 'dart:math';

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

class MyWidget extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _MyWidget createState() {
    return _MyWidget();
  }
}

class _MyWidget extends State<MyWidget> {
  // const MyWidget({Key? key}) : super(key: key);
  TextEditingController myController = TextEditingController();
  List<Map<String, dynamic>> dataList = [
    {
      "name": "익명 1248",
      "content": "안녕하세요@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",
      "time": "23-07-11 15:22",
    },
    {
      "name": "익명 8425",
      "content": "안녕하세요2",
      "time": "23-07-11 16:32",
    },
  ];
  var now = new DateTime.now();
  @override
  void initState() {
    super.initState();
    // myController에 리스너 추가
    myController.addListener(_printLatestValue);
  }

  void _printLatestValue() {}
  @override
  Widget build(BuildContext context) {
    String formatDate = DateFormat('yy-MM-dd HH:mm').format(now);
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
            Container(
              margin: EdgeInsets.fromLTRB(15, 30, 0, 0),
              alignment: Alignment.centerLeft,
              child: Text(
                "방명록",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(8, 10, 0, 10),
              child: Row(
                children: [
                  Flexible(
                    child: TextFormField(
                      maxLength: 50,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,

                      onChanged: (value) => {}, // 텍스트 필드 변화 감지
                      controller: myController, // 텍스트 필드 인식 시킨느곳
                      decoration: InputDecoration(
                        hintText: "당신의 생각을 남겨주세요",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 55, 49, 49)),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.clear),
                          color: Colors.red,
                          onPressed: () {
                            setState(() {
                              myController.clear();
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 70,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 4.0,
                      ),
                      child: Column(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              //메인 색상
                              backgroundColor: Colors.orange,
                            ),
                            onPressed: () {
                              setState(() {
                                int number = Random().nextInt(10000);
                                dataList.add(
                                  {
                                    "name": "익명 $number",
                                    "content": myController.text,
                                    "time": formatDate,
                                  },
                                );
                                myController.clear();
                              });
                            },
                            child: Text("done"),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 650,
              child: ListView.builder(
                itemCount: dataList.length,
                itemBuilder: (context, index) {
                  String name = dataList[index]['name'];
                  String content = dataList[index]['content'];
                  String time = dataList[index]['time'];
                  return Card(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween, 정렬 기능 구현할때 쓸것
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.delete_outlined),
                              color: Colors.red,
                              onPressed: () {
                                setState(() {
                                  dataList.removeAt(index);
                                });
                                // print(dataList[index]);
                              },
                            ),
                          ],
                        )),
                        Container(
                          child: Text(
                            content,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  time,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
