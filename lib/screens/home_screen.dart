import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket/screens/ticket_view.dart';
import 'package:ticket/utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            // padding: const EdgeInsets.symmetric(vertical: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  // NOTE: main의 기준은 Row 면 수평 colum이면 수직 으로 계산
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      // NOTE: cross는 메인의 반대
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good ddd', style: Styles.headLineStyle2),
                        // SizedBox(height: 5),
                        const Gap(5),
                        Text(
                          'Good 22d22222dd',
                          style: Styles.headLineStyle4,
                        ),
                      ],
                    ),

                    // NOTE: 컨터이너 위젯(decoratio)을 사용하면 기존 위젯과 다른 스타일을적용할수 있다.
                    // Image.asset('assets/images/hepari.jpeg')
                    Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage('assets/images/hepari.jpeg'),
                          ),
                        ))
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFFF4F6Fd),
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Text('아이콘', style: Styles.headLineStyle4),
                      Text(
                        'search',
                        style: Styles.headLineStyle2,
                      )
                    ],
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '첫번째 텍스트',
                      style: Styles.headLineStyle2,
                    ),
                    InkWell(
                      onTap: () {
                        print('you are tapped');
                      },
                      child: Text('두번째 텍스트',
                          style: Styles.textStyle
                              .copyWith(color: Styles.primaryColor)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Gap(15),
          TicketView(),
        ],
      ),
    );
  }
}
