import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:quickmarket/src/utils/config/responsive.dart';
import 'package:quickmarket/src/utils/config/widgetresponsive.dart';

import '../../../utils/config/commonscafold.dart';
import '../../../utils/config/uidata.dart';
import '../../widgets/footerWidget.dart';
import '../../widgets/hoverWidget.dart';

class AppDevelopment extends StatelessWidget {
  const AppDevelopment({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScafold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              color: UIDataColors.whiteColor,
              child: Column(
                children: [
                  Container(
                    width: Get.width,
                    //  alignment: Alignment.center,
                    height: !Responsive.isMobileContext(context)
                        ? Responsive.isTabletContext(context)
                            ? 170
                            : 200
                        : 100,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "images/services/appdevelopment/App-Development.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                      width: Get.width,
                      child: ResponsiveTextFieldRow(
                          firstTextField: Container(
                            alignment: Responsive.isMobileContext(context)
                                ? Alignment.center
                                : Alignment.centerRight,
                            width: Responsive.isMobileContext(context)
                                ? Get.width / 1.1
                                : Get.width / 2.5,
                            height:
                                Responsive.isMobileContext(context) ? 400 : 600,
                            child: Image.asset(
                                "images/services/appdevelopment/app-development-illustration_23-2148741544.jpg"),
                          ).paddingSymmetric(horizontal: 20, vertical: 50),
                          secondTextField: Container(
                            alignment: Alignment.topLeft,
                            width: Responsive.isMobileContext(context)
                                ? Get.width / 1.1
                                : Get.width / 2.5,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'App Development',
                                            style: TextStyle(
                                                fontSize: !Responsive
                                                        .isMobileContext(
                                                            context)
                                                    ? Responsive
                                                            .isTabletContext(
                                                                context)
                                                        ? 30
                                                        : 45
                                                    : 30,
                                                fontWeight: FontWeight.bold,
                                                color: UIDataColors.blackColor,
                                                decoration:
                                                    TextDecoration.none),
                                          ),
                                          Container(
                                            width: Get.width / 6,
                                            child: Divider(
                                              thickness: 1,
                                              height: 20,
                                              color: UIDataColors.blackColor,
                                            ),
                                          )
                                        ]),
                                  ),
                                  Text(
                                    'Mobile application development',
                                    style: TextStyle(
                                        color: UIDataColors.blackColor,
                                        fontSize:
                                            !Responsive.isMobileContext(context)
                                                ? Responsive.isTabletContext(
                                                        context)
                                                    ? 14
                                                    : 16
                                                : 14,
                                        height:
                                            !Responsive.isMobileContext(context)
                                                ? Responsive.isTabletContext(
                                                        context)
                                                    ? 1.4
                                                    : 1.6
                                                : 1.4,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.none),
                                  ).paddingOnly(top: 0, bottom: 10),
                                  Text(
                                    'our mobile app development service, we provide complete and highly effective solutions for mobile platforms such as iOS and Android. Our goal is to deliver seamless and engaging user experiences through intuitive mobile applications. \n \n Our expert team of apps or mobile applications is committed to the design and development of attractive and functional mobile business app solutions that add value to your business and improve access for your end users.',
                                    style: TextStyle(
                                        color: UIDataColors.blackColor,
                                        fontSize:
                                            !Responsive.isMobileContext(context)
                                                ? Responsive.isTabletContext(
                                                        context)
                                                    ? 14
                                                    : 16
                                                : 14,
                                        height:
                                            !Responsive.isMobileContext(context)
                                                ? Responsive.isTabletContext(
                                                        context)
                                                    ? 1.4
                                                    : 1.6
                                                : 1.4,
                                        fontWeight: FontWeight.normal,
                                        decoration: TextDecoration.none),
                                  ).paddingOnly(top: 0, bottom: 10),
                                  Text(
                                    'Mobile Application Development Services',
                                    style: TextStyle(
                                        color: UIDataColors.blackColor,
                                        fontSize:
                                            !Responsive.isMobileContext(context)
                                                ? Responsive.isTabletContext(
                                                        context)
                                                    ? 14
                                                    : 16
                                                : 14,
                                        height:
                                            !Responsive.isMobileContext(context)
                                                ? Responsive.isTabletContext(
                                                        context)
                                                    ? 1.4
                                                    : 1.6
                                                : 1.4,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.none),
                                  ).paddingOnly(top: 0, bottom: 10),
                                  Text(
                                    'Our mobile app development services are designed to fit the unique demands of your business, ensuring optimal results to meet your business objectives, whether sales, views, downloads, subscriptions, etc. We offer a wide range of mobile business app solutions, For Example:\n\nIOS App Development: We develop professional applications for iPhone, thereby creating software perfectly adapted to the device, from the approach of the idea to programming, development and distribution management.\n\nAndroid App Development: Android has come to overtake the iPhone in number of users, and its numbers and possibilities seem to have no end. The scope of applications is extensive.\n\nHybrid App Development: We implement hybrid applications that combine the best of native and web apps, allowing your business to reach a larger audience with a single solution and be a leader in your sector.',
                                    style: TextStyle(
                                        color: UIDataColors.blackColor,
                                        fontSize:
                                            !Responsive.isMobileContext(context)
                                                ? Responsive.isTabletContext(
                                                        context)
                                                    ? 14
                                                    : 16
                                                : 14,
                                        height:
                                            !Responsive.isMobileContext(context)
                                                ? Responsive.isTabletContext(
                                                        context)
                                                    ? 1.4
                                                    : 1.6
                                                : 1.4,
                                        fontWeight: FontWeight.normal,
                                        decoration: TextDecoration.none),
                                  ),
                                ]),
                          ))).paddingOnly(
                      top: 50,
                      bottom: Responsive.isMobileContext(context) ? 30 : 0),
                  Container(
                    width: Get.width / 1.2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Quick Ink Marketing has opened the gambit to make a successful Mobile application for any kind of business. We can develop the applications not only for the smaller businesses but also the bigger ones. We are trying our level best to provide best services to our customers that why our process is quite smooth and sleek.',
                          style: TextStyle(
                              color: UIDataColors.blackColor,
                              fontSize: !Responsive.isMobileContext(context)
                                  ? Responsive.isTabletContext(context)
                                      ? 14
                                      : 16
                                  : 14,
                              height: !Responsive.isMobileContext(context)
                                  ? Responsive.isTabletContext(context)
                                      ? 1.4
                                      : 1.6
                                  : 1.4,
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.none),
                        ).paddingOnly(top: 20, bottom: 15),
                        Text(
                          'Android has more than 80% of the mobile market’s share.',
                          style: TextStyle(
                              color: UIDataColors.blackColor,
                              fontSize: !Responsive.isMobileContext(context)
                                  ? Responsive.isTabletContext(context)
                                      ? 14
                                      : 16
                                  : 14,
                              height: !Responsive.isMobileContext(context)
                                  ? Responsive.isTabletContext(context)
                                      ? 1.4
                                      : 1.6
                                  : 1.4,
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.none),
                        ).paddingOnly(bottom: 10, left: 50),
                        Text(
                          'There are 20 billion Android users',
                          style: TextStyle(
                              color: UIDataColors.blackColor,
                              fontSize: !Responsive.isMobileContext(context)
                                  ? Responsive.isTabletContext(context)
                                      ? 14
                                      : 16
                                  : 14,
                              height: !Responsive.isMobileContext(context)
                                  ? Responsive.isTabletContext(context)
                                      ? 1.4
                                      : 1.6
                                  : 1.4,
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.none),
                        ).paddingOnly(bottom: 10, left: 50),
                        Text(
                          'There are 24,000 distinct android devices.',
                          style: TextStyle(
                              color: UIDataColors.blackColor,
                              fontSize: !Responsive.isMobileContext(context)
                                  ? Responsive.isTabletContext(context)
                                      ? 14
                                      : 16
                                  : 14,
                              height: !Responsive.isMobileContext(context)
                                  ? Responsive.isTabletContext(context)
                                      ? 1.4
                                      : 1.6
                                  : 1.4,
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.none),
                        ).paddingOnly(bottom: 10, left: 50),
                        Text(
                          '1 million apps are present online for android',
                          style: TextStyle(
                              color: UIDataColors.blackColor,
                              fontSize: !Responsive.isMobileContext(context)
                                  ? Responsive.isTabletContext(context)
                                      ? 14
                                      : 16
                                  : 14,
                              height: !Responsive.isMobileContext(context)
                                  ? Responsive.isTabletContext(context)
                                      ? 1.4
                                      : 1.6
                                  : 1.4,
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.none),
                        ).paddingOnly(left: 50),
                        Text(
                          'Quick Ink Marketing is an app development agency in Lahore that helps its clients to grow the business. Trio Tec aids you in launching your app to get into the direct contact with your valuable customers. Quick Ink Marketing App development company in Pakistan will help your brand to flourish and grow like never before.',
                          style: TextStyle(
                              color: UIDataColors.blackColor,
                              fontSize: !Responsive.isMobileContext(context)
                                  ? Responsive.isTabletContext(context)
                                      ? 14
                                      : 16
                                  : 14,
                              height: !Responsive.isMobileContext(context)
                                  ? Responsive.isTabletContext(context)
                                      ? 1.4
                                      : 1.6
                                  : 1.4,
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.none),
                        ).paddingOnly(top: 60, bottom: 20),
                      ],
                    ),
                  ).paddingSymmetric(vertical: 40),
                  FooterWidget()
                ],
              ),
            ),
            HoverWidget(),
          ],
        ),
      ),
      bottomNav: false,
    );
  }
}
