import 'package:auto_size_text/auto_size_text.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1920, 1080),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (c, b) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: MainPage2(),
          );
        });
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var edgeInsets = EdgeInsets.symmetric(horizontal: 60.h, vertical: 40.w);
  var data = [
    "人人讲安全 个个会应急",
    "以人为本 安全第一",
    "安全生产责任重于泰山",
    "发展绝不能以牺牲人的生命为代价",
    "始终把人民生命安全放在首位",
    "单位负责、职工参与、政府监管、行业自律、社会监督",
    "落实安全责任 推动安全发展",
    "全面落实企业安全生产主体责任"
  ];
  var current = 0;

  @override
  Widget build(BuildContext context) {
    var QR_Code = SizedBox(
      width: 150.w,
      child: Image.asset('asserts/imgs/QR_Code.png'),
    );
    return Scaffold(
      body: PageView(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asserts/imgs/IMG1.jpg'),
                fit: BoxFit.cover,
                alignment: Alignment.center),
          ),
          child: Padding(
            padding: edgeInsets,
            child: Container(
              child: Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'asserts/imgs/logo.png',
                                width: 150,
                              ),
                              Expanded(child: Container()),
                              const Text(
                                "富强·民主·文明·和谐·自由·平等·公正·法治·爱国·敬业·诚信·友善",
                                style: TextStyle(
                                    fontFamily: 'NotoSansSC',
                                    fontSize: 26,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                    letterSpacing: 15),
                              )
                            ],
                          )
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Stack(
                        children: [
                          AutoSizeText(
                            data[current],
                            style: TextStyle(
                                fontFamily: 'NotoSansSC',
                                fontSize: 3000,
                                fontWeight: FontWeight.bold,
                                foreground: Paint()
                                  ..color = Colors.white
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 10),
                            maxLines: 1,
                          ),
                          AutoSizeText(
                            data[current],
                            style: const TextStyle(
                                fontFamily: 'NotoSansSC',
                                fontSize: 3000,
                                fontWeight: FontWeight.w900,
                                color: Color(0xff0E3775)),
                            maxLines: 1,
                          )
                        ],
                      )),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 300,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    BorderedText(
                                      strokeWidth: 4,
                                      strokeColor: const Color(0xffB72222),
                                      child: const Text(
                                        "苏州高新区减灾委员会办公室",
                                        style: TextStyle(
                                            fontFamily: 'NotoSansSC',
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            letterSpacing: 3),
                                      ),
                                    ),
                                    BorderedText(
                                      strokeWidth: 4,
                                      strokeColor: const Color(0xffB72222),
                                      child: const Text(
                                        "苏州高新区安全生产委员会办公室",
                                        style: TextStyle(
                                            fontFamily: 'NotoSansSC',
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            letterSpacing: -0.1),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: BorderedText(
                                    strokeWidth: 4,
                                    strokeColor: const Color(0xffB72222),
                                    child: const Text('宣',
                                        style: TextStyle(
                                            fontFamily: 'NotoSansSC',
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (current < data.length - 1)
                                          current++;
                                        else
                                          current = 0;
                                      });
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.all(40.w),
                                      child: QR_Code,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asserts/imgs/IMG2.png'),
                fit: BoxFit.cover,
                alignment: Alignment.center),
          ),
          child: Padding(
            padding: edgeInsets,
            child: Container(
              child: Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'asserts/imgs/logo.png',
                                width: 150,
                              ),
                              Expanded(child: Container()),
                              const Text(
                                "富强·民主·文明·和谐·自由·平等·公正·法治·爱国·敬业·诚信·友善",
                                style: TextStyle(
                                    fontFamily: 'NotoSansSC',
                                    fontSize: 26,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                    letterSpacing: 15),
                              )
                            ],
                          )
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Stack(
                        children: [
                          AutoSizeText(
                            data[current],
                            style: const TextStyle(
                                fontFamily: 'NotoSerifSC',
                                fontSize: 3000,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                            maxLines: 1,
                          )
                        ],
                      )),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 300,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    BorderedText(
                                      strokeWidth: 4,
                                      strokeColor: const Color(0xffB72222),
                                      child: const Text(
                                        "苏州高新区减灾委员会办公室",
                                        style: TextStyle(
                                            fontFamily: 'NotoSansSC',
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            letterSpacing: 3),
                                      ),
                                    ),
                                    BorderedText(
                                      strokeWidth: 4,
                                      strokeColor: const Color(0xffB72222),
                                      child: const Text(
                                        "苏州高新区安全生产委员会办公室",
                                        style: TextStyle(
                                            fontFamily: 'NotoSansSC',
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            letterSpacing: -0.1),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: BorderedText(
                                    strokeWidth: 4,
                                    strokeColor: const Color(0xffB72222),
                                    child: const Text('宣',
                                        style: TextStyle(
                                            fontFamily: 'NotoSansSC',
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (current < data.length - 1)
                                          current++;
                                        else
                                          current = 0;
                                      });
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.all(40.w),
                                      child: QR_Code,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class MainPage2 extends StatefulWidget {
  const MainPage2({Key? key}) : super(key: key);

  @override
  State<MainPage2> createState() => _MainPageState2();
}

class _MainPageState2 extends State<MainPage2> {
  var edgeInsets = const EdgeInsets.symmetric(horizontal: 40.0, vertical: 40);
  var data = [
    "人人讲安全",
    "以人为本",
  ];
  var data2 = [
    "个个会应急",
    "安全第一",
  ];
  var current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asserts/imgs/IMG1.jpg'),
                fit: BoxFit.cover,
                alignment: Alignment.center),
          ),
          child: Padding(
            padding: edgeInsets,
            child: Container(
              child: Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'asserts/imgs/logo.png',
                                    width: 100,
                                  ),
                                  const Text(
                                    "富强·民主·文明·和谐·自由·平等·公正·法治·爱国·敬业·诚信·友善",
                                    style: TextStyle(
                                        fontFamily: 'NotoSansSC',
                                        fontSize: 7.5,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white,
                                        letterSpacing: 3),
                                    maxLines: 1,
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      )),
                  Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Stack(
                                children: [
                                  AutoSizeText(
                                    data[current],
                                    style: TextStyle(
                                        fontFamily: 'NotoSansSC',
                                        fontSize: 3000,
                                        fontWeight: FontWeight.bold,
                                        foreground: Paint()
                                          ..color = Colors.white
                                          ..style = PaintingStyle.stroke
                                          ..strokeWidth = 10),
                                    maxLines: 1,
                                  ),
                                  AutoSizeText(
                                    data[current],
                                    style: const TextStyle(
                                        fontFamily: 'NotoSansSC',
                                        fontSize: 30000,
                                        fontWeight: FontWeight.w900,
                                        color: Color(0xff0E3775)),
                                    maxLines: 1,
                                  )
                                ],
                              ),
                              Stack(
                                children: [
                                  AutoSizeText(
                                    data2[current],
                                    style: TextStyle(
                                        fontFamily: 'NotoSansSC',
                                        fontSize: 3000,
                                        fontWeight: FontWeight.bold,
                                        foreground: Paint()
                                          ..color = Colors.white
                                          ..style = PaintingStyle.stroke
                                          ..strokeWidth = 10),
                                    maxLines: 1,
                                  ),
                                  AutoSizeText(
                                    data2[current],
                                    style: const TextStyle(
                                        fontFamily: 'NotoSansSC',
                                        fontSize: 30000,
                                        fontWeight: FontWeight.w900,
                                        color: Color(0xff0E3775)),
                                    maxLines: 1,
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      )),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (current < data.length - 1)
                          current++;
                        else
                          current = 0;
                      });
                    },
                    child: SizedBox(
                      width: 80,
                      child: Image.asset('asserts/imgs/QR_Code.png'),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 300,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    BorderedText(
                                      strokeWidth: 4,
                                      strokeColor: const Color(0xffB72222),
                                      child: const Text(
                                        "苏州高新区减灾委员会办公室",
                                        style: TextStyle(
                                            fontFamily: 'NotoSansSC',
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            letterSpacing: 3),
                                      ),
                                    ),
                                    BorderedText(
                                      strokeWidth: 4,
                                      strokeColor: const Color(0xffB72222),
                                      child: const Text(
                                        "苏州高新区安全生产委员会办公室",
                                        style: TextStyle(
                                            fontFamily: 'NotoSansSC',
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            letterSpacing: 0.2),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                BorderedText(
                                  strokeWidth: 4,
                                  strokeColor: const Color(0xffB72222),
                                  child: const Text('宣',
                                      style: TextStyle(
                                          fontFamily: 'NotoSansSC',
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asserts/imgs/IMG2.png'),
                fit: BoxFit.cover,
                alignment: Alignment.center),
          ),
          child: Padding(
            padding: edgeInsets,
            child: Container(
              child: Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'asserts/imgs/logo.png',
                                    width: 100,
                                  ),
                                  const Text(
                                    "富强·民主·文明·和谐·自由·平等·公正·法治·爱国·敬业·诚信·友善",
                                    style: TextStyle(
                                        fontFamily: 'NotoSansSC',
                                        fontSize: 7.5,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white,
                                        letterSpacing: 3),
                                    maxLines: 1,
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      )),
                  Expanded(
                      flex: 3,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AutoSizeText(
                              data[current],
                              style: const TextStyle(
                                  fontFamily: 'NotoSerifSC',
                                  fontSize: 3000,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              maxLines: 1,
                            ),
                            AutoSizeText(
                              data2[current],
                              style: const TextStyle(
                                  fontFamily: 'NotoSerifSC',
                                  fontSize: 3000,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              maxLines: 1,
                            ),
                          ],
                        ),
                      )),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (current < data.length - 1)
                          current++;
                        else
                          current = 0;
                      });
                    },
                    child: SizedBox(
                      width: 80,
                      child: Image.asset('asserts/imgs/QR_Code.png'),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 300,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    BorderedText(
                                      strokeWidth: 4,
                                      strokeColor: const Color(0xffB72222),
                                      child: const Text(
                                        "苏州高新区减灾委员会办公室",
                                        style: TextStyle(
                                            fontFamily: 'NotoSansSC',
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            letterSpacing: 3),
                                      ),
                                    ),
                                    BorderedText(
                                      strokeWidth: 4,
                                      strokeColor: const Color(0xffB72222),
                                      child: const Text(
                                        "苏州高新区安全生产委员会办公室",
                                        style: TextStyle(
                                            fontFamily: 'NotoSansSC',
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            letterSpacing: 0.2),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                BorderedText(
                                  strokeWidth: 4,
                                  strokeColor: const Color(0xffB72222),
                                  child: const Text('宣',
                                      style: TextStyle(
                                          fontFamily: 'NotoSansSC',
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
