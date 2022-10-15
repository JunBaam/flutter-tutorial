import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:ticket/utils/app_layout.dart';
import 'package:ticket/utils/app_styles.dart';
import 'package:ticket/widget/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    // NOTE: 레이아웃의 사이즈 값을 가져옴
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            // NOTE: 위쪽(파란카드)
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "NYC",
                      // NOTE: copywith : 이미 만들어 놓은것에 추가적인값 부여  (overWrite)
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                    // NOTE: mainAxisAlignment 랑 같은 효과가 나는데 어떤차이인지는 모르겠음.
                    //  const Spacer(),
                    Expanded(child: Container()),
                    ThickContainer(),
                    //  const Spacer(),
                    Expanded(
                        child: Stack(children: [
                      SizedBox(
                        height: 24,
                        // NOTE: 레이아웃빌더에 감싸서 해당 박스에 넓이를 알아낸다
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constratins) {
                            // print('넓이 ${constratins.constrainWidth()}');

                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(
                                (constratins.constrainWidth() / 6).floor(),
                                (index) => const SizedBox(
                                  width: 3, height: 1,
                                  child: DecoratedBox(
                                      decoration:
                                          BoxDecoration(color: Colors.white)),
                                  // style: Colors.white,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Center(
                        child: Transform.rotate(
                          angle: 1.5,
                          child: Icon(
                            Icons.local_airport_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ])),

                    ThickContainer(),
                    //  const Spacer(),
                    Expanded(child: Container()),

                    Text(
                      "LDN",
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.white),
                    )
                  ],
                ),
                const Gap(3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        '뉴욕',
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.white),
                      ),
                    ),
                    Text('8시 30분',
                        style: Styles.headLineStyle4
                            .copyWith(color: Colors.white)),
                    SizedBox(
                      width: 100,
                      child: Text(
                        '런던',
                        textAlign: TextAlign.end,
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.white),
                      ),
                    ),
                  ],
                )
              ]),
            )
            // NOTE: 아래쪽 (주황카드)
            ,
            Container(
              color: Styles.orangeColor,
              child: Row(children: const [
                SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  )),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
