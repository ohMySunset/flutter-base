import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 앱 시작
      debugShowCheckedModeBanner: false,
      home: HomePage(), // home 지정 매개변수에 첫번째 페이지 위젯을 전달
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons.camera, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.paperplane, color: Colors.black)),
        ],
        title: Image.asset(
          // assets에서 이미지 불러오기
          'assets/logo.png',
          height: 32,
        ),
        centerTitle: true,
        // 로고이미지 중앙정렬여부
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // 위젯을 세로 방향으로 정렬
        children: [
          // 이미지
          Image.network(
            "https://cdn2.thecatapi.com/images/kat_7kqBi.png",
            height: 400,
            width: double.infinity, // 폭 가득 채움
            fit: BoxFit.cover, // 이미지 비율을 유지하면서 폭과 너비 맞춰줌
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.heart, color: Colors.black),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.chat_bubble, color: Colors.black),
              ),
              Spacer(), // 빈 공간 추가
              IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.bookmark, color: Colors.black),
              ),
            ],
          ),
          Padding( // 좋아요
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "20000 Likes",
              style: TextStyle(
                fontWeight: FontWeight.bold
              )
            )
          ),
          Padding( // 설명
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "저희 고양이 짱 귀엽조???"
            )
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "September 23",
              style: TextStyle(
                color: Colors.grey
              )
            ),
          )
        ],
      ),
    );
  }
}
