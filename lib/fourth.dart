import 'package:flutter/material.dart';
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
                "https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbrO5OY%2FbtsnhSk6px0%2FE7RspYyQ47acPHz8dAYbdK%2Fimg.png",
                fit: BoxFit.cover,
              ),
            ),

//돌아가기
            Positioned(
              top: 20,
              left: 20,
              child: Container(
                  width: MediaQuery.of(context).size.width * 1,
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
                          Icons.home_filled,
                        ),
                      ),
                    ],
                  )),
            ),

            // 이름
            Positioned(
              bottom: 150,
              left: 20,
              child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Row(
                    children: [
                      Text(
                        "케로로",
                        style: TextStyle(
                            fontSize: 45, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
            ),

            // 소개
            Positioned(
              bottom: 100,
              left: 20,
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.09,
                child: Row(
                  children: [
                    Text(
                      "소개글을 적어주세요",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
            ),

            // bottom arrow icon
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
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
                      isScrollControlled:
                          true, // showmodalbottomsheet를 높게 노출시켜줌
                      builder: (BuildContext context) {
                        return Container(
                          height: 700,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              // 팝업 테두리 둥글게
                              topLeft: Radius.circular(70),
                              topRight: Radius.circular(70),
                            ),
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "이름",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "좌우명",
                                  style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "설명글",
                                  style: TextStyle(
                                      fontSize: 27,
                                      fontWeight: FontWeight.w500),
                                ),
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
                                              color: Colors.black),
                                        ),
                                        style: TextButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(300)),
                                            padding: EdgeInsets.all(20),
                                            backgroundColor: Colors.orange),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "고향에 대해 소개해주세요.",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "취미",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        style: TextButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(300)),
                                            padding: EdgeInsets.all(20),
                                            backgroundColor: Colors.orange),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "제 취미를 소개합니다",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "장점",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        style: TextButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(300)),
                                            padding: EdgeInsets.all(20),
                                            backgroundColor: Colors.orange),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "제 장점은 ~ 입니다.",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "단점",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        style: TextButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(300)),
                                            padding: EdgeInsets.all(20),
                                            backgroundColor: Colors.orange),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "제 단점은 ~ 입니다.",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "TMI",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                        ),
                                        style: TextButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(300)),
                                            padding: EdgeInsets.all(20),
                                            backgroundColor: Colors.orange),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "TMI는 ~ 입니다.",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                          Text(
                                            "TMI는 ~ 입니다.",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                          Text(
                                            "TMI는 ~ 입니다.",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
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
