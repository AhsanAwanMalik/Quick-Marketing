import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animated_text_lerp/animated_text_lerp.dart';
import 'package:quickmarket/src/ui/widgets/footerWidget.dart';
import 'package:quickmarket/src/utils/config/responsive.dart';
import 'package:quickmarket/src/utils/config/uidata.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../controllers/aboutController.dart';
import '../../utils/config/commonscafold.dart';

class AboutUs extends StatelessWidget {
  final AboutUsController _ = Get.find<AboutUsController>();

  @override
  Widget build(BuildContext context) {
    return CommonScafold(
      body: NotificationListener(
        onNotification: (ScrollNotification scrollInfo) {
          if (scrollInfo.metrics.pixels > 630 &&
              scrollInfo.metrics.pixels < 700) {
            _.updateNumericValue(100, 1500, 3592, 88);
          }
          return false;
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: Get.width,
                height: Get.height / 4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/aboutUs/About-Us.jpg"),
                        fit: BoxFit.cover)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Get.height / 20,
                  ),
                  Container(
                    height: Get.height / 3,
                    width: Get.width,
                    // color: Colors.amber,
                    child: Row(
                      children: const [
                        Flexible(
                          child: Text(
                            "At Voxturr, we are not just a digital marketing agency. We are your helping partner to promote your brand in this competitive world. With a passion for innovation and a commitment to excellence, we have been helping businesses transform their online presence and achieve remarkable results since 6 years.At Voxturr, we are not just a digital marketing agency. We are your helping partner to promote your brand in this competitive world. With a passion for innovation and a commitment to excellence, we have been helping businesses transform their online presence and achieve remarkable results since 6 years.At Voxturr, we are not just a digital marketing agency. We are your helping partner to promote your brand in this competitive world. With a passion for innovation and a commitment to excellence, we have been helping businesses transform their online presence and achieve remarkable results since 6 years.At Voxturr, we are not just a digital marketing agency. We are your helping partner to promote your brand in this competitive world. With a passion for innovation and a commitment to excellence, we have been helping businesses transform their online presence and achieve remarkable results since 6 years.At Voxturr, we are not just a digital marketing agency. We are your helping partner to promote your brand in this competitive world. With a passion for innovation and a commitment to excellence, we have been helping businesses transform their online presence and achieve remarkable results since 6 years.",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                height: 1.5),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Get.height / 23,
                  ),
                  Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        maxRadius: 5,
                        backgroundColor: Colors.black54,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Container(
                          width: Get.width / 1.5,
                          child: Divider(
                            thickness: 1.8,
                          )),
                      SizedBox(
                        width: 4,
                      ),
                      CircleAvatar(
                        maxRadius: 5,
                        backgroundColor: Colors.black54,
                      ),
                    ],
                  )),
                  SizedBox(
                    height: Get.height / 20,
                  ),
                  Container(
                    width: Get.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "WE ARE",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                              height: 1.5,
                              letterSpacing: -1),
                        ),
                        Text(
                          "DIGITAL MARKETING",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.pink.shade800,
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                              height: 1.5,
                              letterSpacing: -1),
                        ),
                        Text(
                          "AGENCY",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                              height: 1.5,
                              letterSpacing: -1),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 156.0, // Fixed size for the chart
                        width: 156.0, // Fixed size for the chart
                        child: SfCircularChart(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          series: <CircularSeries>[
                            DoughnutSeries<ChartData, String>(
                              dataSource: getChartData(),

                              xValueMapper: (ChartData data, _) =>
                                  data.category,
                              yValueMapper: (ChartData data, _) => data.value,
                              innerRadius: '65%',
                              radius: '100%',
                              dataLabelSettings: DataLabelSettings(
                                  isVisible: true), // Hide labels
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 156.0, // Fixed size for the chart
                        width: 156.0, // Fixed size for the chart
                        child: SfCircularChart(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          series: <CircularSeries>[
                            DoughnutSeries<ChartData, String>(
                              dataSource: getChartData1(),

                              xValueMapper: (ChartData data, _) =>
                                  data.category,
                              yValueMapper: (ChartData data, _) => data.value,
                              innerRadius: '65%',
                              radius: '100%',
                              dataLabelSettings: DataLabelSettings(
                                  isVisible: true), // Hide labels
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 156.0, // Fixed size for the chart
                        width: 156.0, // Fixed size for the chart
                        child: SfCircularChart(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          series: <CircularSeries>[
                            DoughnutSeries<ChartData, String>(
                              dataSource: getChartData2(),

                              xValueMapper: (ChartData data, _) =>
                                  data.category,
                              yValueMapper: (ChartData data, _) => data.value,
                              innerRadius: '65%',
                              radius: '100%',
                              dataLabelSettings: DataLabelSettings(
                                  isVisible: true), // Hide labels
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 156.0, // Fixed size for the chart
                        width: 156.0, // Fixed size for the chart
                        child: SfCircularChart(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          series: <CircularSeries>[
                            DoughnutSeries<ChartData, String>(
                              dataSource: getChartData3(),

                              xValueMapper: (ChartData data, _) =>
                                  data.category,
                              yValueMapper: (ChartData data, _) => data.value,
                              innerRadius: '65%',
                              radius: '100%',
                              dataLabelSettings: DataLabelSettings(
                                  isVisible: true), // Hide labels
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width:
                        Responsive.isMobileContext(context) ? Get.width : null,
                    decoration: BoxDecoration(
                        color: UIDataColors.commonColor,
                        borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.all(20),
                    child: Obx(() => Responsive.isMobileContext(context)
                        ? Column(
                            children: [
                              Column(
                                children: [
                                  AnimatedNumberText(
                                    _.clients.value,
                                    curve: Curves.easeIn,
                                    duration:
                                        const Duration(milliseconds: 1000),
                                    style: const TextStyle(
                                        fontFamily: 'Popins',
                                        fontSize: 40,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const Text(
                                    'Satisfied Clients',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  AnimatedNumberText(
                                    _.campaigns.value,
                                    curve: Curves.easeIn,
                                    duration:
                                        const Duration(milliseconds: 1500),
                                    style: const TextStyle(
                                        fontFamily: 'Popins',
                                        fontSize: 40,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text('Campaigns',
                                      style: TextStyle(color: Colors.white))
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  AnimatedNumberText(
                                    _.globals.value,
                                    curve: Curves.easeIn,
                                    duration:
                                        const Duration(milliseconds: 1900),
                                    style: const TextStyle(
                                        fontFamily: 'Popins',
                                        fontSize: 40,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text('Global Precence',
                                      style: TextStyle(color: Colors.white))
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  AnimatedNumberText(
                                    _.happys.value,
                                    curve: Curves.easeIn,
                                    duration: const Duration(milliseconds: 800),
                                    style: const TextStyle(
                                        fontFamily: 'Popins',
                                        fontSize: 40,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text('Happy Customers',
                                      style: TextStyle(color: Colors.white))
                                ],
                              )
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  AnimatedNumberText(
                                    _.clients.value,
                                    curve: Curves.easeIn,
                                    duration:
                                        const Duration(milliseconds: 1000),
                                    style: const TextStyle(
                                        fontFamily: 'Popins',
                                        fontSize: 40,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const Text(
                                    'Satisfied Clients',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  AnimatedNumberText(
                                    _.campaigns.value,
                                    curve: Curves.easeIn,
                                    duration:
                                        const Duration(milliseconds: 1500),
                                    style: const TextStyle(
                                        fontFamily: 'Popins',
                                        fontSize: 40,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text('Campaigns',
                                      style: TextStyle(color: Colors.white))
                                ],
                              ),
                              Column(
                                children: [
                                  AnimatedNumberText(
                                    _.globals.value,
                                    curve: Curves.easeIn,
                                    duration:
                                        const Duration(milliseconds: 1900),
                                    style: const TextStyle(
                                        fontFamily: 'Popins',
                                        fontSize: 40,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text('Global Precence',
                                      style: TextStyle(color: Colors.white))
                                ],
                              ),
                              Column(
                                children: [
                                  AnimatedNumberText(
                                    _.happys.value,
                                    curve: Curves.easeIn,
                                    duration: const Duration(milliseconds: 800),
                                    style: const TextStyle(
                                        fontFamily: 'Popins',
                                        fontSize: 40,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text('Happy Customers',
                                      style: TextStyle(color: Colors.white))
                                ],
                              )
                            ],
                          )),
                  ).marginSymmetric(
                    vertical: 50,
                  ),
                  Container(
                    width: Get.width,
                  ),
                ],
              ).marginSymmetric(
                  horizontal: !Responsive.isDesktopContext(context) ? 50 : 130),
              FooterWidget()
            ],
          ),
        ),
      ),
      bottomNav: false,
    );
  }
}

class ChartData {
  final String category;
  final double value;
  final Color color;

  ChartData(this.category, this.value, this.color);
}

List<ChartData> getChartData() {
  return [
    ChartData('Completed', 40, UIDataColors.blueColor), // 70% completed
    ChartData('Remaining', 60, UIDataColors.commonColor), // 30% remaining
  ];
}

List<ChartData> getChartData1() {
  return [
    ChartData('Completed', 90, UIDataColors.blueColor), // 70% completed
    ChartData('Remaining', 10, UIDataColors.commonColor), // 30% remaining
  ];
}

List<ChartData> getChartData2() {
  return [
    ChartData('Completed', 60, UIDataColors.blueColor), // 70% completed
    ChartData('Remaining', 40, UIDataColors.commonColor), // 30% remaining
  ];
}

List<ChartData> getChartData3() {
  return [
    ChartData('Completed', 80, UIDataColors.blueColor), // 70% completed
    ChartData('Remaining', 20, UIDataColors.commonColor), // 30% remaining
  ];
}
