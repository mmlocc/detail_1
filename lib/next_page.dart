import 'package:flutter/material.dart';
import 'main.dart';

class Next_Page extends StatelessWidget {
  const Next_Page({Key? key}) : super(key: key);

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
// 이미지 교체 가능
                "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjAyMDdfMTcw%2FMDAxNjQ0MTg4ODE1NzU2.w5vxGSeWiKsNqIMwUiqgr1mnsr63X5OZkVdhx9PJ0yUg.ttDl65yv1OMHSqiQDNuOlD7ZbLj97bKZ_WBSpr1dpDUg.PNG.jxbjultd%2Fimage.png&type=sc960_832",
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
                          color: Colors.black,
                          // 좌측 상단 아이콘 색상 설정
                        ),
                      ),
                    ],
                  )),
            ),
// 이름 구간
            Positioned(
              bottom: 150,
              left: 20,
              child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Row(
                    children: [
                      Text(
// 이름을 입력해주세요
                        "보노보노",
                        style: TextStyle(
                            fontSize: 45, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
            ),
// 소개 구간
            Positioned(
              bottom: 100,
              left: 20,
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.09,
                child: Row(
                  children: [
                    Text(
// 소개글을 작성해주세요.
                      "소개글을 적어주세요",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
            ),
// 아래 화살표 아이콘
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
//하단 화살표 색상 변경
                        color: Colors.amber,
                        size: 60,
                      ),
                    ),
                  ],
                ),
              ),
            ),
// 화살표 터치하면 상세글 올라오게 함
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
//이름을 입력해주세요
                                  "이름",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
// 좌우명? 각오 등을 입력해주세요
                                  "좌우명",
                                  style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
// 설명글을 입력해주세요
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
// 고향 입력칸
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
// 고향 소개글 입력
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
// 취미 입력
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
// 취미 입력
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
// 장점 입력
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
// 장점 설명 입력
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
// 단점 입력
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
// 단점 설명 입력
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
// TMI
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
// TMI 첫번째 입력
                                            "TMI는 ~ 입니다.",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                          Text(
// TMI 두번째 입력
                                            "TMI는 ~ 입니다.",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                          Text(
// TMI 세번째 입력
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
