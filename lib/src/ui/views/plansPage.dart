import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:quickmarket/src/controllers/planController.dart';
import 'package:quickmarket/src/utils/config/responsive.dart';
import '../../utils/config/commonscafold.dart';
import '../../utils/config/uidata.dart';
import '../widgets/footerWidget.dart';
import '../widgets/tab/ReusableTabWithFilterList.dart';

class PlanScreen extends StatelessWidget {
  const PlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PlanController _ = Get.find<PlanController>();

    return CommonScafold(
      // key: key,

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Image.asset("images/portfolioAssets/Plans.jpg"),
            ),
            SafeArea(
              // minimum: EdgeInsets.fromLTRB(Get.width / 9, 0, Get.width / 5, 0),
              child: Column(
                children: [
                  SizedBox(height: Get.height / 20),
                  Text(
                    "Our portfolio silhouettes our triumph in our niche. Take a look at our gratified clients for motivation or a round of applause.",
                    style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Popins"),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: Get.height * 0.02),
                  !Responsive.isDesktopContext(context)
                      ? Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    _.web.toggle();
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 70,
                                        width:
                                            Responsive.isMobileContext(context)
                                                ? Get.width / 1.3
                                                : Get.width / 1.6,
                                        color: const Color.fromARGB(
                                            255, 213, 213, 213),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                  "images/portfolioAssets/www.svg",
                                                  width: Get.width / 25,
                                                ),
                                                Text(
                                                  "Website",
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          187, 0, 0, 0),
                                                      fontSize: 20,
                                                      fontFamily: 'Popins',
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ).marginOnly(left: 5),
                                              ],
                                            ),
                                            Container(
                                              // height: 20,
                                              // width: 20,
                                              // color: Colors.red,
                                              child: Icon(
                                                Icons.arrow_drop_down_rounded,
                                                size: 50,
                                              ),
                                            )
                                          ],
                                        ).paddingOnly(right: 10, left: 20),
                                      ),
                                      Obx(() => _.web.value
                                          ? Container(
                                              height: 500,
                                              width: Get.width / 2,
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      width: Get.width,
                                                      decoration: BoxDecoration(
                                                        color: Color.fromARGB(
                                                            255, 252, 252, 252),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: const Color
                                                                    .fromARGB(
                                                                    255,
                                                                    180,
                                                                    180,
                                                                    180)
                                                                .withOpacity(
                                                                    0.5),
                                                            spreadRadius: 5,
                                                            blurRadius: 7,
                                                            offset:
                                                                Offset(0, 3),
                                                          ),
                                                        ],
                                                      ),
                                                      // height: Get.height / 1.43,
                                                      alignment:
                                                          Alignment.center,
                                                      margin:
                                                          EdgeInsets.all(16.0),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: Get.width,
                                                            height:
                                                                Get.height / 13,
                                                            color: UIDataColors
                                                                .blueColor,
                                                            alignment: Alignment
                                                                .center,
                                                            child: Text(
                                                              'Startup',
                                                              // textAlign: TextAlign.center,
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      28.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .white,
                                                                  fontFamily:
                                                                      "Popins"),
                                                            ),
                                                          ),
                                                          // SizedBox(height: Get.height * 0.034),dddddddd
                                                          Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: const [
                                                              Text(
                                                                'Rs',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      10.0,
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                              ),
                                                              Column(
                                                                children: [
                                                                  Text(
                                                                    '20000',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            29.0,
                                                                        color: Color.fromARGB(
                                                                            176,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w900,
                                                                        fontFamily:
                                                                            "Popins",
                                                                        leadingDistribution:
                                                                            TextLeadingDistribution.even),
                                                                  ),
                                                                  Text(
                                                                    'Monthly',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          16.0,
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ).marginSymmetric(
                                                              vertical: 20),
                                                          // SizedBox(height: Get.height * 0.034),
                                                          Container(
                                                            height: Get.height -
                                                                430,
                                                            width: Get.width,
                                                            // color: Colors.amber,
                                                            child: ListView
                                                                .builder(
                                                                    itemCount: _
                                                                        .webCardDataBasic
                                                                        .length,
                                                                    itemBuilder:
                                                                        (BuildContext
                                                                                context,
                                                                            i) {
                                                                      return Column(
                                                                        children: [
                                                                          Row(
                                                                            children: [
                                                                              SizedBox(width: Get.height * 0.01),
                                                                              Icon(
                                                                                _.webCardDataBasic[i]['tick'] ? Icons.done_all_outlined : Icons.cancel_outlined,
                                                                                size: 17,
                                                                              ),
                                                                              SizedBox(width: Get.width * 0.006),
                                                                              Text(_.webCardDataBasic[i]['offer']),
                                                                            ],
                                                                          ).marginSymmetric(
                                                                              vertical: 5),
                                                                          Divider(
                                                                            // thickness: 1,
                                                                            color: const Color.fromARGB(
                                                                                142,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            endIndent:
                                                                                17,
                                                                            indent:
                                                                                17,
                                                                          )
                                                                        ],
                                                                      );
                                                                    }),
                                                          ),
                                                          ElevatedButton(
                                                            onPressed: () {
                                                              // Add your button click logic here
                                                            },
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              backgroundColor:
                                                                  UIDataColors
                                                                      .commonColor,
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 23,
                                                                      bottom:
                                                                          23,
                                                                      left: 35,
                                                                      right:
                                                                          35),
                                                            ),
                                                            child: Text(
                                                              'Get Now',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontFamily:
                                                                      "Popins",
                                                                  fontSize: 16),
                                                            ),
                                                          ).marginSymmetric(
                                                              vertical: 20),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: Get.width,
                                                      decoration: BoxDecoration(
                                                        color: Color.fromARGB(
                                                            255, 252, 252, 252),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: const Color
                                                                    .fromARGB(
                                                                    255,
                                                                    180,
                                                                    180,
                                                                    180)
                                                                .withOpacity(
                                                                    0.5),
                                                            spreadRadius: 5,
                                                            blurRadius: 7,
                                                            offset:
                                                                Offset(0, 3),
                                                          ),
                                                        ],
                                                      ),
                                                      // height: Get.height / 1.43,
                                                      alignment:
                                                          Alignment.center,
                                                      margin:
                                                          EdgeInsets.all(16.0),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: Get.width,
                                                            height:
                                                                Get.height / 13,
                                                            color: UIDataColors
                                                                .blueColor,
                                                            alignment: Alignment
                                                                .center,
                                                            child: Text(
                                                              'Startup',
                                                              // textAlign: TextAlign.center,
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      28.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .white,
                                                                  fontFamily:
                                                                      "Popins"),
                                                            ),
                                                          ),
                                                          // SizedBox(height: Get.height * 0.034),dddddddd
                                                          Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: const [
                                                              Text(
                                                                'Rs',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      10.0,
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                              ),
                                                              Column(
                                                                children: [
                                                                  Text(
                                                                    '20000',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            29.0,
                                                                        color: Color.fromARGB(
                                                                            176,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w900,
                                                                        fontFamily:
                                                                            "Popins",
                                                                        leadingDistribution:
                                                                            TextLeadingDistribution.even),
                                                                  ),
                                                                  Text(
                                                                    'Monthly',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          16.0,
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ).marginSymmetric(
                                                              vertical: 20),
                                                          // SizedBox(height: Get.height * 0.034),
                                                          Container(
                                                            height: Get.height -
                                                                430,
                                                            width: Get.width,
                                                            // color: Colors.amber,
                                                            child: ListView
                                                                .builder(
                                                                    itemCount: _
                                                                        .webCardDataStandard
                                                                        .length,
                                                                    itemBuilder:
                                                                        (BuildContext
                                                                                context,
                                                                            i) {
                                                                      return Column(
                                                                        children: [
                                                                          Row(
                                                                            children: [
                                                                              SizedBox(width: Get.height * 0.01),
                                                                              Icon(
                                                                                _.webCardDataStandard[i]['tick'] ? Icons.done_all_outlined : Icons.cancel_outlined,
                                                                                size: 17,
                                                                              ),
                                                                              SizedBox(width: Get.width * 0.006),
                                                                              Text(_.webCardDataStandard[i]['offer']),
                                                                            ],
                                                                          ).marginSymmetric(
                                                                              vertical: 5),
                                                                          Divider(
                                                                            // thickness: 1,
                                                                            color: const Color.fromARGB(
                                                                                142,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            endIndent:
                                                                                17,
                                                                            indent:
                                                                                17,
                                                                          )
                                                                        ],
                                                                      );
                                                                    }),
                                                          ),
                                                          ElevatedButton(
                                                            onPressed: () {
                                                              // Add your button click logic here
                                                            },
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              backgroundColor:
                                                                  UIDataColors
                                                                      .commonColor,
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 23,
                                                                      bottom:
                                                                          23,
                                                                      left: 35,
                                                                      right:
                                                                          35),
                                                            ),
                                                            child: Text(
                                                              'Get Now',
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      "Popins",
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 16),
                                                            ),
                                                          ).marginSymmetric(
                                                              vertical: 20),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: Get.width,
                                                      decoration: BoxDecoration(
                                                        color: Color.fromARGB(
                                                            255, 252, 252, 252),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: const Color
                                                                    .fromARGB(
                                                                    255,
                                                                    180,
                                                                    180,
                                                                    180)
                                                                .withOpacity(
                                                                    0.5),
                                                            spreadRadius: 5,
                                                            blurRadius: 7,
                                                            offset:
                                                                Offset(0, 3),
                                                          ),
                                                        ],
                                                      ),
                                                      // height: Get.height / 1.43,
                                                      alignment:
                                                          Alignment.center,
                                                      margin:
                                                          EdgeInsets.all(16.0),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: Get.width,
                                                            height:
                                                                Get.height / 13,
                                                            color: UIDataColors
                                                                .blueColor,
                                                            alignment: Alignment
                                                                .center,
                                                            child: Text(
                                                              'Startup',
                                                              // textAlign: TextAlign.center,
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      28.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .white,
                                                                  fontFamily:
                                                                      "Popins"),
                                                            ),
                                                          ),
                                                          // SizedBox(height: Get.height * 0.034),dddddddd
                                                          Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: const [
                                                              Text(
                                                                'Rs',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      10.0,
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                              ),
                                                              Column(
                                                                children: [
                                                                  Text(
                                                                    '20000',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            29.0,
                                                                        color: Color.fromARGB(
                                                                            176,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w900,
                                                                        fontFamily:
                                                                            "Popins",
                                                                        leadingDistribution:
                                                                            TextLeadingDistribution.even),
                                                                  ),
                                                                  Text(
                                                                    'Monthly',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          16.0,
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ).marginSymmetric(
                                                              vertical: 20),
                                                          // SizedBox(height: Get.height * 0.034),
                                                          Container(
                                                            height: Get.height -
                                                                430,
                                                            width: Get.width,
                                                            // color: Colors.amber,
                                                            child: ListView
                                                                .builder(
                                                                    itemCount: _
                                                                        .webCardDataPlatinium
                                                                        .length,
                                                                    itemBuilder:
                                                                        (BuildContext
                                                                                context,
                                                                            i) {
                                                                      return Column(
                                                                        children: [
                                                                          Row(
                                                                            children: [
                                                                              SizedBox(width: Get.height * 0.01),
                                                                              Icon(
                                                                                _.webCardDataPlatinium[i]['tick'] ? Icons.done_all_outlined : Icons.cancel_outlined,
                                                                                size: 17,
                                                                              ),
                                                                              SizedBox(width: Get.width * 0.006),
                                                                              Text(_.webCardDataPlatinium[i]['offer']),
                                                                            ],
                                                                          ).marginSymmetric(
                                                                              vertical: 5),
                                                                          Divider(
                                                                            // thickness: 1,
                                                                            color: const Color.fromARGB(
                                                                                142,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            endIndent:
                                                                                17,
                                                                            indent:
                                                                                17,
                                                                          )
                                                                        ],
                                                                      );
                                                                    }),
                                                          ),
                                                          ElevatedButton(
                                                            onPressed: () {
                                                              // Add your button click logic here
                                                            },
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              backgroundColor:
                                                                  UIDataColors
                                                                      .commonColor,
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 23,
                                                                      bottom:
                                                                          23,
                                                                      left: 35,
                                                                      right:
                                                                          35),
                                                            ),
                                                            child: Text(
                                                              'Get Now',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontFamily:
                                                                      "Popins",
                                                                  fontSize: 16),
                                                            ),
                                                          ).marginSymmetric(
                                                              vertical: 20),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          : SizedBox())
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    _.social.toggle();
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 70,
                                        width:
                                            Responsive.isMobileContext(context)
                                                ? Get.width / 1.3
                                                : Get.width / 1.6,
                                        color: const Color.fromARGB(
                                            255, 213, 213, 213),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                  "images/portfolioAssets/digital-marketing.svg",
                                                  width: Get.width / 30,
                                                ),
                                                Text(
                                                  "Social Media Marketing",
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          187, 0, 0, 0),
                                                      fontSize: 20,
                                                      fontFamily: 'Popins',
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ).marginOnly(left: 5),
                                              ],
                                            ),
                                            Container(
                                              // height: 20,
                                              // width: 20,
                                              // color: Colors.red,
                                              child: Icon(
                                                Icons.arrow_drop_down_rounded,
                                                size: 50,
                                              ),
                                            )
                                          ],
                                        ).paddingOnly(right: 10, left: 20),
                                      ),
                                      Obx(() => _.social.value
                                          ? Container(
                                              height: 500,
                                              width: Get.width / 2,
                                              child: SingleChildScrollView(
                                                child: Column(children: [
                                                  Container(
                                                    width: Get.width,
                                                    decoration: BoxDecoration(
                                                      color: Color.fromARGB(
                                                          255, 252, 252, 252),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: const Color
                                                                  .fromARGB(255,
                                                                  180, 180, 180)
                                                              .withOpacity(0.5),
                                                          spreadRadius: 5,
                                                          blurRadius: 7,
                                                          offset: Offset(0, 3),
                                                        ),
                                                      ],
                                                    ),
                                                    // height: Get.height / 1.43,
                                                    alignment: Alignment.center,
                                                    margin:
                                                        EdgeInsets.all(16.0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          width: Get.width,
                                                          height:
                                                              Get.height / 13,
                                                          color: UIDataColors
                                                              .blueColor,
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                            'Startup',
                                                            // textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                                fontSize: 28.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .white,
                                                                fontFamily:
                                                                    "Popins"),
                                                          ),
                                                        ),
                                                        // SizedBox(height: Get.height * 0.034),dddddddd
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: const [
                                                            Text(
                                                              'Rs',
                                                              style: TextStyle(
                                                                fontSize: 10.0,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ),
                                                            Column(
                                                              children: [
                                                                Text(
                                                                  '20000',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          29.0,
                                                                      color: Color.fromARGB(
                                                                          176,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900,
                                                                      fontFamily:
                                                                          "Popins",
                                                                      leadingDistribution:
                                                                          TextLeadingDistribution
                                                                              .even),
                                                                ),
                                                                Text(
                                                                  'Monthly',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        16.0,
                                                                    color: Colors
                                                                        .black,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ).marginSymmetric(
                                                            vertical: 20),
                                                        // SizedBox(height: Get.height * 0.034),
                                                        Container(
                                                          height:
                                                              Get.height - 430,
                                                          width: Get.width,
                                                          // color: Colors.amber,
                                                          child:
                                                              ListView.builder(
                                                                  itemCount: _
                                                                      .socialCardDataBasic
                                                                      .length,
                                                                  itemBuilder:
                                                                      (BuildContext
                                                                              context,
                                                                          i) {
                                                                    return Column(
                                                                      children: [
                                                                        Row(
                                                                          children: [
                                                                            SizedBox(width: Get.height * 0.01),
                                                                            Icon(
                                                                              _.socialCardDataBasic[i]['tick'] ? Icons.done_all_outlined : Icons.cancel_outlined,
                                                                              size: 17,
                                                                            ),
                                                                            SizedBox(width: Get.width * 0.006),
                                                                            Text(_.socialCardDataBasic[i]['offer']),
                                                                          ],
                                                                        ).marginSymmetric(
                                                                            vertical:
                                                                                5),
                                                                        Divider(
                                                                          // thickness: 1,
                                                                          color: const Color
                                                                              .fromARGB(
                                                                              142,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          endIndent:
                                                                              17,
                                                                          indent:
                                                                              17,
                                                                        )
                                                                      ],
                                                                    );
                                                                  }),
                                                        ),
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            // Add your button click logic here
                                                          },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            backgroundColor:
                                                                UIDataColors
                                                                    .commonColor,
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 23,
                                                                    bottom: 23,
                                                                    left: 35,
                                                                    right: 35),
                                                          ),
                                                          child: Text(
                                                            'Get Now',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontFamily:
                                                                    "Popins",
                                                                fontSize: 16),
                                                          ),
                                                        ).marginSymmetric(
                                                            vertical: 20),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    width: Get.width,
                                                    decoration: BoxDecoration(
                                                      color: Color.fromARGB(
                                                          255, 252, 252, 252),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: const Color
                                                                  .fromARGB(255,
                                                                  180, 180, 180)
                                                              .withOpacity(0.5),
                                                          spreadRadius: 5,
                                                          blurRadius: 7,
                                                          offset: Offset(0, 3),
                                                        ),
                                                      ],
                                                    ),
                                                    // height: Get.height / 1.43,
                                                    alignment: Alignment.center,
                                                    margin:
                                                        EdgeInsets.all(16.0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          width: Get.width,
                                                          height:
                                                              Get.height / 13,
                                                          color: UIDataColors
                                                              .blueColor,
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                            'Startup',
                                                            // textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                                fontSize: 28.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .white,
                                                                fontFamily:
                                                                    "Popins"),
                                                          ),
                                                        ),
                                                        // SizedBox(height: Get.height * 0.034),dddddddd
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: const [
                                                            Text(
                                                              'Rs',
                                                              style: TextStyle(
                                                                fontSize: 10.0,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ),
                                                            Column(
                                                              children: [
                                                                Text(
                                                                  '20000',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          29.0,
                                                                      color: Color.fromARGB(
                                                                          176,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900,
                                                                      fontFamily:
                                                                          "Popins",
                                                                      leadingDistribution:
                                                                          TextLeadingDistribution
                                                                              .even),
                                                                ),
                                                                Text(
                                                                  'Monthly',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        16.0,
                                                                    color: Colors
                                                                        .black,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ).marginSymmetric(
                                                            vertical: 20),
                                                        // SizedBox(height: Get.height * 0.034),
                                                        Container(
                                                          height:
                                                              Get.height - 430,
                                                          width: Get.width,
                                                          // color: Colors.amber,
                                                          child:
                                                              ListView.builder(
                                                                  itemCount: _
                                                                      .socialCardDataStandard
                                                                      .length,
                                                                  itemBuilder:
                                                                      (BuildContext
                                                                              context,
                                                                          i) {
                                                                    return Column(
                                                                      children: [
                                                                        Row(
                                                                          children: [
                                                                            SizedBox(width: Get.height * 0.01),
                                                                            Icon(
                                                                              _.socialCardDataStandard[i]['tick'] ? Icons.done_all_outlined : Icons.cancel_outlined,
                                                                              size: 17,
                                                                            ),
                                                                            SizedBox(width: Get.width * 0.006),
                                                                            Text(_.socialCardDataStandard[i]['offer']),
                                                                          ],
                                                                        ).marginSymmetric(
                                                                            vertical:
                                                                                5),
                                                                        Divider(
                                                                          // thickness: 1,
                                                                          color: const Color
                                                                              .fromARGB(
                                                                              142,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          endIndent:
                                                                              17,
                                                                          indent:
                                                                              17,
                                                                        )
                                                                      ],
                                                                    );
                                                                  }),
                                                        ),
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            // Add your button click logic here
                                                          },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            backgroundColor:
                                                                UIDataColors
                                                                    .commonColor,
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 23,
                                                                    bottom: 23,
                                                                    left: 35,
                                                                    right: 35),
                                                          ),
                                                          child: Text(
                                                            'Get Now',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontFamily:
                                                                    "Popins",
                                                                fontSize: 16),
                                                          ),
                                                        ).marginSymmetric(
                                                            vertical: 20),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    width: Get.width,
                                                    decoration: BoxDecoration(
                                                      color: Color.fromARGB(
                                                          255, 252, 252, 252),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: const Color
                                                                  .fromARGB(255,
                                                                  180, 180, 180)
                                                              .withOpacity(0.5),
                                                          spreadRadius: 5,
                                                          blurRadius: 7,
                                                          offset: Offset(0, 3),
                                                        ),
                                                      ],
                                                    ),
                                                    // height: Get.height / 1.43,
                                                    alignment: Alignment.center,
                                                    margin:
                                                        EdgeInsets.all(16.0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          width: Get.width,
                                                          height:
                                                              Get.height / 13,
                                                          color: UIDataColors
                                                              .blueColor,
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                            'Startup',
                                                            // textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                                fontSize: 28.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .white,
                                                                fontFamily:
                                                                    "Popins"),
                                                          ),
                                                        ),
                                                        // SizedBox(height: Get.height * 0.034),dddddddd
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: const [
                                                            Text(
                                                              'Rs',
                                                              style: TextStyle(
                                                                fontSize: 10.0,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ),
                                                            Column(
                                                              children: [
                                                                Text(
                                                                  '20000',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          29.0,
                                                                      color: Color.fromARGB(
                                                                          176,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900,
                                                                      fontFamily:
                                                                          "Popins",
                                                                      leadingDistribution:
                                                                          TextLeadingDistribution
                                                                              .even),
                                                                ),
                                                                Text(
                                                                  'Monthly',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        16.0,
                                                                    color: Colors
                                                                        .black,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ).marginSymmetric(
                                                            vertical: 20),
                                                        // SizedBox(height: Get.height * 0.034),
                                                        Container(
                                                          height:
                                                              Get.height - 430,
                                                          width: Get.width,
                                                          // color: Colors.amber,
                                                          child:
                                                              ListView.builder(
                                                                  itemCount: _
                                                                      .socialCardDataPlatinium
                                                                      .length,
                                                                  itemBuilder:
                                                                      (BuildContext
                                                                              context,
                                                                          i) {
                                                                    return Column(
                                                                      children: [
                                                                        Row(
                                                                          children: [
                                                                            SizedBox(width: Get.height * 0.01),
                                                                            Icon(
                                                                              _.socialCardDataPlatinium[i]['tick'] ? Icons.done_all_outlined : Icons.cancel_outlined,
                                                                              size: 17,
                                                                            ),
                                                                            SizedBox(width: Get.width * 0.006),
                                                                            Text(_.socialCardDataPlatinium[i]['offer']),
                                                                          ],
                                                                        ).marginSymmetric(
                                                                            vertical:
                                                                                5),
                                                                        Divider(
                                                                          // thickness: 1,
                                                                          color: const Color
                                                                              .fromARGB(
                                                                              142,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          endIndent:
                                                                              17,
                                                                          indent:
                                                                              17,
                                                                        )
                                                                      ],
                                                                    );
                                                                  }),
                                                        ),
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            // Add your button click logic here
                                                          },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            backgroundColor:
                                                                UIDataColors
                                                                    .commonColor,
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 23,
                                                                    bottom: 23,
                                                                    left: 35,
                                                                    right: 35),
                                                          ),
                                                          child: Text(
                                                            'Get Now',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontFamily:
                                                                    "Popins",
                                                                fontSize: 16),
                                                          ),
                                                        ).marginSymmetric(
                                                            vertical: 20),
                                                      ],
                                                    ),
                                                  ),
                                                ]),
                                              ),
                                            )
                                          : SizedBox())
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    _.photography.toggle();
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 70,
                                        width:
                                            Responsive.isMobileContext(context)
                                                ? Get.width / 1.3
                                                : Get.width / 1.6,
                                        color: const Color.fromARGB(
                                            255, 213, 213, 213),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                  "images/portfolioAssets/photo-camera.svg",
                                                  height: 30,
                                                ),
                                                Text(
                                                  "Product Photography",
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          187, 0, 0, 0),
                                                      fontSize: 20,
                                                      fontFamily: 'Popins',
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ).marginOnly(left: 5),
                                              ],
                                            ),
                                            Container(
                                              // height: 20,
                                              // width: 20,
                                              // color: Colors.red,
                                              child: Icon(
                                                Icons.arrow_drop_down_rounded,
                                                size: 50,
                                              ),
                                            )
                                          ],
                                        ).paddingOnly(right: 10, left: 20),
                                      ),
                                      Obx(() => _.photography.value
                                          ? Container(
                                              height: 500,
                                              width: Get.width / 2,
                                              child: SingleChildScrollView(
                                                child: Column(children: [
                                                  Container(
                                                    width: Get.width,
                                                    decoration: BoxDecoration(
                                                      color: Color.fromARGB(
                                                          255, 252, 252, 252),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: const Color
                                                                  .fromARGB(255,
                                                                  180, 180, 180)
                                                              .withOpacity(0.5),
                                                          spreadRadius: 5,
                                                          blurRadius: 7,
                                                          offset: Offset(0, 3),
                                                        ),
                                                      ],
                                                    ),
                                                    // height: Get.height / 1.43,
                                                    alignment: Alignment.center,
                                                    margin:
                                                        EdgeInsets.all(16.0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          width: Get.width,
                                                          height:
                                                              Get.height / 13,
                                                          color: UIDataColors
                                                              .blueColor,
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                            'Startup',
                                                            // textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                                fontSize: 28.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .white,
                                                                fontFamily:
                                                                    "Popins"),
                                                          ),
                                                        ),
                                                        // SizedBox(height: Get.height * 0.034),dddddddd
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: const [
                                                            Text(
                                                              'Rs',
                                                              style: TextStyle(
                                                                fontSize: 10.0,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ),
                                                            Column(
                                                              children: [
                                                                Text(
                                                                  '20000',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          29.0,
                                                                      color: Color.fromARGB(
                                                                          176,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900,
                                                                      fontFamily:
                                                                          "Popins",
                                                                      leadingDistribution:
                                                                          TextLeadingDistribution
                                                                              .even),
                                                                ),
                                                                Text(
                                                                  'Monthly',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        16.0,
                                                                    color: Colors
                                                                        .black,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ).marginSymmetric(
                                                            vertical: 20),
                                                        // SizedBox(height: Get.height * 0.034),
                                                        Container(
                                                          height:
                                                              Get.height - 430,
                                                          width: Get.width,
                                                          // color: Colors.amber,
                                                          child:
                                                              ListView.builder(
                                                                  itemCount: _
                                                                      .productCardDataBasic
                                                                      .length,
                                                                  itemBuilder:
                                                                      (BuildContext
                                                                              context,
                                                                          i) {
                                                                    return Column(
                                                                      children: [
                                                                        Row(
                                                                          children: [
                                                                            SizedBox(width: Get.height * 0.01),
                                                                            Icon(
                                                                              _.productCardDataBasic[i]['tick'] ? Icons.done_all_outlined : Icons.cancel_outlined,
                                                                              size: 17,
                                                                            ),
                                                                            SizedBox(width: Get.width * 0.006),
                                                                            Text(_.productCardDataBasic[i]['offer']),
                                                                          ],
                                                                        ).marginSymmetric(
                                                                            vertical:
                                                                                5),
                                                                        Divider(
                                                                          // thickness: 1,
                                                                          color: const Color
                                                                              .fromARGB(
                                                                              142,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          endIndent:
                                                                              17,
                                                                          indent:
                                                                              17,
                                                                        )
                                                                      ],
                                                                    );
                                                                  }),
                                                        ),
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            // Add your button click logic here
                                                          },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            backgroundColor:
                                                                UIDataColors
                                                                    .commonColor,
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 23,
                                                                    bottom: 23,
                                                                    left: 35,
                                                                    right: 35),
                                                          ),
                                                          child: Text(
                                                            'Get Now',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontFamily:
                                                                    "Popins",
                                                                fontSize: 16),
                                                          ),
                                                        ).marginSymmetric(
                                                            vertical: 20),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    width: Get.width,
                                                    decoration: BoxDecoration(
                                                      color: Color.fromARGB(
                                                          255, 252, 252, 252),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: const Color
                                                                  .fromARGB(255,
                                                                  180, 180, 180)
                                                              .withOpacity(0.5),
                                                          spreadRadius: 5,
                                                          blurRadius: 7,
                                                          offset: Offset(0, 3),
                                                        ),
                                                      ],
                                                    ),
                                                    // height: Get.height / 1.43,
                                                    alignment: Alignment.center,
                                                    margin:
                                                        EdgeInsets.all(16.0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          width: Get.width,
                                                          height:
                                                              Get.height / 13,
                                                          color: UIDataColors
                                                              .blueColor,
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                            'Startup',
                                                            // textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                                fontSize: 28.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .white,
                                                                fontFamily:
                                                                    "Popins"),
                                                          ),
                                                        ),
                                                        // SizedBox(height: Get.height * 0.034),dddddddd
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: const [
                                                            Text(
                                                              'Rs',
                                                              style: TextStyle(
                                                                fontSize: 10.0,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ),
                                                            Column(
                                                              children: [
                                                                Text(
                                                                  '20000',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          29.0,
                                                                      color: Color.fromARGB(
                                                                          176,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900,
                                                                      fontFamily:
                                                                          "Popins",
                                                                      leadingDistribution:
                                                                          TextLeadingDistribution
                                                                              .even),
                                                                ),
                                                                Text(
                                                                  'Monthly',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        16.0,
                                                                    color: Colors
                                                                        .black,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ).marginSymmetric(
                                                            vertical: 20),
                                                        // SizedBox(height: Get.height * 0.034),
                                                        Container(
                                                          height:
                                                              Get.height - 430,
                                                          width: Get.width,
                                                          // color: Colors.amber,
                                                          child:
                                                              ListView.builder(
                                                                  itemCount: _
                                                                      .productCardDataStandard
                                                                      .length,
                                                                  itemBuilder:
                                                                      (BuildContext
                                                                              context,
                                                                          i) {
                                                                    return Column(
                                                                      children: [
                                                                        Row(
                                                                          children: [
                                                                            SizedBox(width: Get.height * 0.01),
                                                                            Icon(
                                                                              _.productCardDataStandard[i]['tick'] ? Icons.done_all_outlined : Icons.cancel_outlined,
                                                                              size: 17,
                                                                            ),
                                                                            SizedBox(width: Get.width * 0.006),
                                                                            Text(_.productCardDataStandard[i]['offer']),
                                                                          ],
                                                                        ).marginSymmetric(
                                                                            vertical:
                                                                                5),
                                                                        Divider(
                                                                          // thickness: 1,
                                                                          color: const Color
                                                                              .fromARGB(
                                                                              142,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          endIndent:
                                                                              17,
                                                                          indent:
                                                                              17,
                                                                        )
                                                                      ],
                                                                    );
                                                                  }),
                                                        ),
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            // Add your button click logic here
                                                          },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            backgroundColor:
                                                                UIDataColors
                                                                    .commonColor,
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 23,
                                                                    bottom: 23,
                                                                    left: 35,
                                                                    right: 35),
                                                          ),
                                                          child: Text(
                                                            'Get Now',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontFamily:
                                                                    "Popins",
                                                                fontSize: 16),
                                                          ),
                                                        ).marginSymmetric(
                                                            vertical: 20),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    width: Get.width,
                                                    decoration: BoxDecoration(
                                                      color: Color.fromARGB(
                                                          255, 252, 252, 252),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: const Color
                                                                  .fromARGB(255,
                                                                  180, 180, 180)
                                                              .withOpacity(0.5),
                                                          spreadRadius: 5,
                                                          blurRadius: 7,
                                                          offset: Offset(0, 3),
                                                        ),
                                                      ],
                                                    ),
                                                    // height: Get.height / 1.43,
                                                    alignment: Alignment.center,
                                                    margin:
                                                        EdgeInsets.all(16.0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          width: Get.width,
                                                          height:
                                                              Get.height / 13,
                                                          color: UIDataColors
                                                              .commonColor,
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                            'Startup',
                                                            // textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                                fontSize: 28.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .white,
                                                                fontFamily:
                                                                    "Popins"),
                                                          ),
                                                        ),
                                                        // SizedBox(height: Get.height * 0.034),dddddddd
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: const [
                                                            Text(
                                                              'Rs',
                                                              style: TextStyle(
                                                                fontSize: 10.0,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ),
                                                            Column(
                                                              children: [
                                                                Text(
                                                                  '20000',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          29.0,
                                                                      color: Color.fromARGB(
                                                                          176,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900,
                                                                      fontFamily:
                                                                          "Popins",
                                                                      leadingDistribution:
                                                                          TextLeadingDistribution
                                                                              .even),
                                                                ),
                                                                Text(
                                                                  'Monthly',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        16.0,
                                                                    color: Colors
                                                                        .black,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ).marginSymmetric(
                                                            vertical: 20),
                                                        // SizedBox(height: Get.height * 0.034),
                                                        Container(
                                                          height:
                                                              Get.height - 430,
                                                          width: Get.width,
                                                          // color: Colors.amber,
                                                          child:
                                                              ListView.builder(
                                                                  itemCount: _
                                                                      .productCardDataPlatinium
                                                                      .length,
                                                                  itemBuilder:
                                                                      (BuildContext
                                                                              context,
                                                                          i) {
                                                                    return Column(
                                                                      children: [
                                                                        Row(
                                                                          children: [
                                                                            SizedBox(width: Get.height * 0.01),
                                                                            Icon(
                                                                              _.productCardDataPlatinium[i]['tick'] ? Icons.done_all_outlined : Icons.cancel_outlined,
                                                                              size: 17,
                                                                            ),
                                                                            SizedBox(width: Get.width * 0.006),
                                                                            Text(_.productCardDataPlatinium[i]['offer']),
                                                                          ],
                                                                        ).marginSymmetric(
                                                                            vertical:
                                                                                5),
                                                                        Divider(
                                                                          // thickness: 1,
                                                                          color: const Color
                                                                              .fromARGB(
                                                                              142,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          endIndent:
                                                                              17,
                                                                          indent:
                                                                              17,
                                                                        )
                                                                      ],
                                                                    );
                                                                  }),
                                                        ),
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            // Add your button click logic here
                                                          },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            backgroundColor:
                                                                UIDataColors
                                                                    .commonColor,
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 23,
                                                                    bottom: 23,
                                                                    left: 35,
                                                                    right: 35),
                                                          ),
                                                          child: Text(
                                                            'Get Now',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontFamily:
                                                                    "Popins",
                                                                fontSize: 16),
                                                          ),
                                                        ).marginSymmetric(
                                                            vertical: 20),
                                                      ],
                                                    ),
                                                  ),
                                                ]),
                                              ),
                                            )
                                          : SizedBox())
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      : Container(
                          height: Get.height,
                          child: ReusableTabWithFilterList(
                            tabLength: 3,
                            tabs: [
                              Tab(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "images/portfolioAssets/www.svg",
                                      width: Get.width / 30,
                                    ),
                                    Text(
                                      "Website",
                                      style: TextStyle(
                                          // color: UIDataColors.whiteColor,
                                          fontSize: Get.width * 0.015),
                                    ),
                                  ],
                                ),
                              ),
                              Tab(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "images/portfolioAssets/digital-marketing.svg",
                                      width: Get.width / 30,
                                    ),
                                    Text(
                                      "Social Media Marketing",
                                      style: TextStyle(
                                          // color: UIDataColors.secondaryOrangeColor,
                                          fontSize: Get.width * 0.015),
                                    ),
                                  ],
                                ),
                              ),
                              Tab(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "images/portfolioAssets/photo-camera.svg",
                                    ),
                                    Text(
                                      "Product Photography",
                                      style: TextStyle(
                                        // color: UIDataColors.whiteColor,
                                        fontSize: Get.width * 0.015,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                            tabBarView: [
                              /////////////////////////////tab1///////////////////////////

                              Container(
                                // color: Colors.amber,
                                width: Get.width,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: Get.width / 5,
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 252, 252, 252),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color.fromARGB(
                                                    255, 180, 180, 180)
                                                .withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                      // height: Get.height / 1.43,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: Get.width,
                                            height: Get.height / 13,
                                            color: UIDataColors.commonColor,
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Startup',
                                              // textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 28.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontFamily: "Popins"),
                                            ),
                                          ),
                                          // SizedBox(height: Get.height * 0.034),dddddddd
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Text(
                                                'Rs',
                                                style: TextStyle(
                                                  fontSize: 10.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Column(
                                                children: [
                                                  Text(
                                                    '20000',
                                                    style: TextStyle(
                                                        fontSize: 29.0,
                                                        color: Color.fromARGB(
                                                            176, 0, 0, 0),
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontFamily: "Popins",
                                                        leadingDistribution:
                                                            TextLeadingDistribution
                                                                .even),
                                                  ),
                                                  Text(
                                                    'Monthly',
                                                    style: TextStyle(
                                                      fontSize: 16.0,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ).marginSymmetric(vertical: 20),
                                          // SizedBox(height: Get.height * 0.034),
                                          Container(
                                            height: Get.height - 430,
                                            width: Get.width,
                                            // color: Colors.amber,
                                            child: ListView.builder(
                                                itemCount:
                                                    _.webCardDataBasic.length,
                                                itemBuilder:
                                                    (BuildContext context, i) {
                                                  return Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                              width:
                                                                  Get.height *
                                                                      0.01),
                                                          Icon(
                                                            _.webCardDataBasic[
                                                                    i]['tick']
                                                                ? Icons
                                                                    .done_all_outlined
                                                                : Icons
                                                                    .cancel_outlined,
                                                            size: 17,
                                                          ),
                                                          SizedBox(
                                                              width: Get.width *
                                                                  0.006),
                                                          Text(
                                                              _.webCardDataBasic[
                                                                  i]['offer']),
                                                        ],
                                                      ).marginSymmetric(
                                                          vertical: 5),
                                                      Divider(
                                                        // thickness: 1,
                                                        color: const Color
                                                            .fromARGB(
                                                            142, 0, 0, 0),
                                                        endIndent: 17,
                                                        indent: 17,
                                                      )
                                                    ],
                                                  );
                                                }),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              // Add your button click logic here
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  UIDataColors.commonColor,
                                              padding: EdgeInsets.only(
                                                  top: 23,
                                                  bottom: 23,
                                                  left: 35,
                                                  right: 35),
                                            ),
                                            child: Text(
                                              'Get Now',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "Popins",
                                                  fontSize: 16),
                                            ),
                                          ).marginSymmetric(vertical: 20),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: Get.width / 5,
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 252, 252, 252),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color.fromARGB(
                                                    255, 180, 180, 180)
                                                .withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                      // height: Get.height / 1.43,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: Get.width,
                                            height: Get.height / 13,
                                            color: UIDataColors.commonColor,
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Startup',
                                              // textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 28.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontFamily: "Popins"),
                                            ),
                                          ),
                                          // SizedBox(height: Get.height * 0.034),dddddddd
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Text(
                                                'Rs',
                                                style: TextStyle(
                                                  fontSize: 10.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Column(
                                                children: [
                                                  Text(
                                                    '20000',
                                                    style: TextStyle(
                                                        fontSize: 29.0,
                                                        color: Color.fromARGB(
                                                            176, 0, 0, 0),
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontFamily: "Popins",
                                                        leadingDistribution:
                                                            TextLeadingDistribution
                                                                .even),
                                                  ),
                                                  Text(
                                                    'Monthly',
                                                    style: TextStyle(
                                                      fontSize: 16.0,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ).marginSymmetric(vertical: 20),
                                          // SizedBox(height: Get.height * 0.034),
                                          Container(
                                            height: Get.height - 430,
                                            width: Get.width,
                                            // color: Colors.amber,
                                            child: ListView.builder(
                                                itemCount: _
                                                    .webCardDataStandard.length,
                                                itemBuilder:
                                                    (BuildContext context, i) {
                                                  return Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                              width:
                                                                  Get.height *
                                                                      0.01),
                                                          Icon(
                                                            _.webCardDataStandard[
                                                                    i]['tick']
                                                                ? Icons
                                                                    .done_all_outlined
                                                                : Icons
                                                                    .cancel_outlined,
                                                            size: 17,
                                                          ),
                                                          SizedBox(
                                                              width: Get.width *
                                                                  0.006),
                                                          Text(
                                                              _.webCardDataStandard[
                                                                  i]['offer']),
                                                        ],
                                                      ).marginSymmetric(
                                                          vertical: 5),
                                                      Divider(
                                                        // thickness: 1,
                                                        color: const Color
                                                            .fromARGB(
                                                            142, 0, 0, 0),
                                                        endIndent: 17,
                                                        indent: 17,
                                                      )
                                                    ],
                                                  );
                                                }),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              // Add your button click logic here
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  UIDataColors.commonColor,
                                              padding: EdgeInsets.only(
                                                  top: 23,
                                                  bottom: 23,
                                                  left: 35,
                                                  right: 35),
                                            ),
                                            child: Text(
                                              'Get Now',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "Popins",
                                                  fontSize: 16),
                                            ),
                                          ).marginSymmetric(vertical: 20),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: Get.width / 5,
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 252, 252, 252),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color.fromARGB(
                                                    255, 180, 180, 180)
                                                .withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                      // height: Get.height / 1.43,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: Get.width,
                                            height: Get.height / 13,
                                            color: UIDataColors.commonColor,
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Startup',
                                              // textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 28.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontFamily: "Popins"),
                                            ),
                                          ),
                                          // SizedBox(height: Get.height * 0.034),dddddddd
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Text(
                                                'Rs',
                                                style: TextStyle(
                                                  fontSize: 10.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Column(
                                                children: [
                                                  Text(
                                                    '20000',
                                                    style: TextStyle(
                                                        fontSize: 29.0,
                                                        color: Color.fromARGB(
                                                            176, 0, 0, 0),
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontFamily: "Popins",
                                                        leadingDistribution:
                                                            TextLeadingDistribution
                                                                .even),
                                                  ),
                                                  Text(
                                                    'Monthly',
                                                    style: TextStyle(
                                                      fontSize: 16.0,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ).marginSymmetric(vertical: 20),
                                          // SizedBox(height: Get.height * 0.034),
                                          Container(
                                            height: Get.height - 430,
                                            width: Get.width,
                                            // color: Colors.amber,
                                            child: ListView.builder(
                                                itemCount: _
                                                    .webCardDataPlatinium
                                                    .length,
                                                itemBuilder:
                                                    (BuildContext context, i) {
                                                  return Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                              width:
                                                                  Get.height *
                                                                      0.01),
                                                          Icon(
                                                            _.webCardDataPlatinium[
                                                                    i]['tick']
                                                                ? Icons
                                                                    .done_all_outlined
                                                                : Icons
                                                                    .cancel_outlined,
                                                            size: 17,
                                                          ),
                                                          SizedBox(
                                                              width: Get.width *
                                                                  0.006),
                                                          Text(
                                                              _.webCardDataPlatinium[
                                                                  i]['offer']),
                                                        ],
                                                      ).marginSymmetric(
                                                          vertical: 5),
                                                      Divider(
                                                        // thickness: 1,
                                                        color: const Color
                                                            .fromARGB(
                                                            142, 0, 0, 0),
                                                        endIndent: 17,
                                                        indent: 17,
                                                      )
                                                    ],
                                                  );
                                                }),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              // Add your button click logic here
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  UIDataColors.commonColor,
                                              padding: EdgeInsets.only(
                                                  top: 23,
                                                  bottom: 23,
                                                  left: 35,
                                                  right: 35),
                                            ),
                                            child: Text(
                                              'Get Now',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "Popins",
                                                  fontSize: 16),
                                            ),
                                          ).marginSymmetric(vertical: 20),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              //////////////////////////////tab2///////////////////////////

                              Container(
                                // color: Colors.amber,
                                width: Get.width,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: Get.width / 5,
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 252, 252, 252),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color.fromARGB(
                                                    255, 180, 180, 180)
                                                .withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                      // height: Get.height / 1.43,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: Get.width,
                                            height: Get.height / 13,
                                            color: UIDataColors.commonColor,
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Startup',
                                              // textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 28.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontFamily: "Popins"),
                                            ),
                                          ),
                                          // SizedBox(height: Get.height * 0.034),dddddddd
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Text(
                                                'Rs',
                                                style: TextStyle(
                                                  fontSize: 10.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Column(
                                                children: [
                                                  Text(
                                                    '20000',
                                                    style: TextStyle(
                                                        fontSize: 29.0,
                                                        color: Color.fromARGB(
                                                            176, 0, 0, 0),
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontFamily: "Popins",
                                                        leadingDistribution:
                                                            TextLeadingDistribution
                                                                .even),
                                                  ),
                                                  Text(
                                                    'Monthly',
                                                    style: TextStyle(
                                                      fontSize: 16.0,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ).marginSymmetric(vertical: 20),
                                          // SizedBox(height: Get.height * 0.034),
                                          Container(
                                            height: Get.height - 430,
                                            width: Get.width,
                                            // color: Colors.amber,
                                            child: ListView.builder(
                                                itemCount: _
                                                    .socialCardDataBasic.length,
                                                itemBuilder:
                                                    (BuildContext context, i) {
                                                  return Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                              width:
                                                                  Get.height *
                                                                      0.01),
                                                          Icon(
                                                            _.socialCardDataBasic[
                                                                    i]['tick']
                                                                ? Icons
                                                                    .done_all_outlined
                                                                : Icons
                                                                    .cancel_outlined,
                                                            size: 17,
                                                          ),
                                                          SizedBox(
                                                              width: Get.width *
                                                                  0.006),
                                                          Text(
                                                              _.socialCardDataBasic[
                                                                  i]['offer']),
                                                        ],
                                                      ).marginSymmetric(
                                                          vertical: 5),
                                                      Divider(
                                                        // thickness: 1,
                                                        color: const Color
                                                            .fromARGB(
                                                            142, 0, 0, 0),
                                                        endIndent: 17,
                                                        indent: 17,
                                                      )
                                                    ],
                                                  );
                                                }),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              // Add your button click logic here
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  UIDataColors.commonColor,
                                              padding: EdgeInsets.only(
                                                  top: 23,
                                                  bottom: 23,
                                                  left: 35,
                                                  right: 35),
                                            ),
                                            child: Text(
                                              'Get Now',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "Popins",
                                                  fontSize: 16),
                                            ),
                                          ).marginSymmetric(vertical: 20),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: Get.width / 5,
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 252, 252, 252),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color.fromARGB(
                                                    255, 180, 180, 180)
                                                .withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                      // height: Get.height / 1.43,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: Get.width,
                                            height: Get.height / 13,
                                            color: UIDataColors.commonColor,
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Startup',
                                              // textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 28.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontFamily: "Popins"),
                                            ),
                                          ),
                                          // SizedBox(height: Get.height * 0.034),dddddddd
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Text(
                                                'Rs',
                                                style: TextStyle(
                                                  fontSize: 10.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Column(
                                                children: [
                                                  Text(
                                                    '20000',
                                                    style: TextStyle(
                                                        fontSize: 29.0,
                                                        color: Color.fromARGB(
                                                            176, 0, 0, 0),
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontFamily: "Popins",
                                                        leadingDistribution:
                                                            TextLeadingDistribution
                                                                .even),
                                                  ),
                                                  Text(
                                                    'Monthly',
                                                    style: TextStyle(
                                                      fontSize: 16.0,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ).marginSymmetric(vertical: 20),
                                          // SizedBox(height: Get.height * 0.034),
                                          Container(
                                            height: Get.height - 430,
                                            width: Get.width,
                                            // color: Colors.amber,
                                            child: ListView.builder(
                                                itemCount: _
                                                    .socialCardDataStandard
                                                    .length,
                                                itemBuilder:
                                                    (BuildContext context, i) {
                                                  return Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                              width:
                                                                  Get.height *
                                                                      0.01),
                                                          Icon(
                                                            _.socialCardDataStandard[
                                                                    i]['tick']
                                                                ? Icons
                                                                    .done_all_outlined
                                                                : Icons
                                                                    .cancel_outlined,
                                                            size: 17,
                                                          ),
                                                          SizedBox(
                                                              width: Get.width *
                                                                  0.006),
                                                          Text(
                                                              _.socialCardDataStandard[
                                                                  i]['offer']),
                                                        ],
                                                      ).marginSymmetric(
                                                          vertical: 5),
                                                      Divider(
                                                        // thickness: 1,
                                                        color: const Color
                                                            .fromARGB(
                                                            142, 0, 0, 0),
                                                        endIndent: 17,
                                                        indent: 17,
                                                      )
                                                    ],
                                                  );
                                                }),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              // Add your button click logic here
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  UIDataColors.commonColor,
                                              padding: EdgeInsets.only(
                                                  top: 23,
                                                  bottom: 23,
                                                  left: 35,
                                                  right: 35),
                                            ),
                                            child: Text(
                                              'Get Now',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "Popins",
                                                  fontSize: 16),
                                            ),
                                          ).marginSymmetric(vertical: 20),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: Get.width / 5,
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 252, 252, 252),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color.fromARGB(
                                                    255, 180, 180, 180)
                                                .withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                      // height: Get.height / 1.43,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: Get.width,
                                            height: Get.height / 13,
                                            color: UIDataColors.commonColor,
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Startup',
                                              // textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 28.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontFamily: "Popins"),
                                            ),
                                          ),
                                          // SizedBox(height: Get.height * 0.034),dddddddd
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Text(
                                                'Rs',
                                                style: TextStyle(
                                                  fontSize: 10.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Column(
                                                children: [
                                                  Text(
                                                    '20000',
                                                    style: TextStyle(
                                                        fontSize: 29.0,
                                                        color: Color.fromARGB(
                                                            176, 0, 0, 0),
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontFamily: "Popins",
                                                        leadingDistribution:
                                                            TextLeadingDistribution
                                                                .even),
                                                  ),
                                                  Text(
                                                    'Monthly',
                                                    style: TextStyle(
                                                      fontSize: 16.0,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ).marginSymmetric(vertical: 20),
                                          // SizedBox(height: Get.height * 0.034),
                                          Container(
                                            height: Get.height - 430,
                                            width: Get.width,
                                            // color: Colors.amber,
                                            child: ListView.builder(
                                                itemCount: _
                                                    .socialCardDataPlatinium
                                                    .length,
                                                itemBuilder:
                                                    (BuildContext context, i) {
                                                  return Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                              width:
                                                                  Get.height *
                                                                      0.01),
                                                          Icon(
                                                            _.socialCardDataPlatinium[
                                                                    i]['tick']
                                                                ? Icons
                                                                    .done_all_outlined
                                                                : Icons
                                                                    .cancel_outlined,
                                                            size: 17,
                                                          ),
                                                          SizedBox(
                                                              width: Get.width *
                                                                  0.006),
                                                          Text(
                                                              _.socialCardDataPlatinium[
                                                                  i]['offer']),
                                                        ],
                                                      ).marginSymmetric(
                                                          vertical: 5),
                                                      Divider(
                                                        // thickness: 1,
                                                        color: const Color
                                                            .fromARGB(
                                                            142, 0, 0, 0),
                                                        endIndent: 17,
                                                        indent: 17,
                                                      )
                                                    ],
                                                  );
                                                }),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              // Add your button click logic here
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  UIDataColors.commonColor,
                                              padding: EdgeInsets.only(
                                                  top: 23,
                                                  bottom: 23,
                                                  left: 35,
                                                  right: 35),
                                            ),
                                            child: Text(
                                              'Get Now',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "Popins",
                                                  fontSize: 16),
                                            ),
                                          ).marginSymmetric(vertical: 20),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //////////////////////////////tab3///////////////////////////

                              Container(
                                // color: Colors.amber,
                                width: Get.width,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: Get.width / 5,
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 252, 252, 252),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color.fromARGB(
                                                    255, 180, 180, 180)
                                                .withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                      // height: Get.height / 1.43,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: Get.width,
                                            height: Get.height / 13,
                                            color: UIDataColors.commonColor,
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Startup',
                                              // textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 28.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontFamily: "Popins"),
                                            ),
                                          ),
                                          // SizedBox(height: Get.height * 0.034),dddddddd
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Text(
                                                'Rs',
                                                style: TextStyle(
                                                  fontSize: 10.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Column(
                                                children: [
                                                  Text(
                                                    '20000',
                                                    style: TextStyle(
                                                        fontSize: 29.0,
                                                        color: Color.fromARGB(
                                                            176, 0, 0, 0),
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontFamily: "Popins",
                                                        leadingDistribution:
                                                            TextLeadingDistribution
                                                                .even),
                                                  ),
                                                  Text(
                                                    'Monthly',
                                                    style: TextStyle(
                                                      fontSize: 16.0,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ).marginSymmetric(vertical: 20),
                                          // SizedBox(height: Get.height * 0.034),
                                          Container(
                                            height: Get.height - 430,
                                            width: Get.width,
                                            // color: Colors.amber,
                                            child: ListView.builder(
                                                itemCount: _
                                                    .productCardDataBasic
                                                    .length,
                                                itemBuilder:
                                                    (BuildContext context, i) {
                                                  return Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                              width:
                                                                  Get.height *
                                                                      0.01),
                                                          Icon(
                                                            _.productCardDataBasic[
                                                                    i]['tick']
                                                                ? Icons
                                                                    .done_all_outlined
                                                                : Icons
                                                                    .cancel_outlined,
                                                            size: 17,
                                                          ),
                                                          SizedBox(
                                                              width: Get.width *
                                                                  0.006),
                                                          Text(
                                                              _.productCardDataBasic[
                                                                  i]['offer']),
                                                        ],
                                                      ).marginSymmetric(
                                                          vertical: 5),
                                                      Divider(
                                                        // thickness: 1,
                                                        color: const Color
                                                            .fromARGB(
                                                            142, 0, 0, 0),
                                                        endIndent: 17,
                                                        indent: 17,
                                                      )
                                                    ],
                                                  );
                                                }),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              // Add your button click logic here
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  UIDataColors.commonColor,
                                              padding: EdgeInsets.only(
                                                  top: 23,
                                                  bottom: 23,
                                                  left: 35,
                                                  right: 35),
                                            ),
                                            child: Text(
                                              'Get Now',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "Popins",
                                                  fontSize: 16),
                                            ),
                                          ).marginSymmetric(vertical: 20),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: Get.width / 5,
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 252, 252, 252),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color.fromARGB(
                                                    255, 180, 180, 180)
                                                .withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                      // height: Get.height / 1.43,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: Get.width,
                                            height: Get.height / 13,
                                            color: UIDataColors.commonColor,
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Startup',
                                              // textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 28.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontFamily: "Popins"),
                                            ),
                                          ),
                                          // SizedBox(height: Get.height * 0.034),dddddddd
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Text(
                                                'Rs',
                                                style: TextStyle(
                                                  fontSize: 10.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Column(
                                                children: [
                                                  Text(
                                                    '20000',
                                                    style: TextStyle(
                                                        fontSize: 29.0,
                                                        color: Color.fromARGB(
                                                            176, 0, 0, 0),
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontFamily: "Popins",
                                                        leadingDistribution:
                                                            TextLeadingDistribution
                                                                .even),
                                                  ),
                                                  Text(
                                                    'Monthly',
                                                    style: TextStyle(
                                                      fontSize: 16.0,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ).marginSymmetric(vertical: 20),
                                          // SizedBox(height: Get.height * 0.034),
                                          Container(
                                            height: Get.height - 430,
                                            width: Get.width,
                                            // color: Colors.amber,
                                            child: ListView.builder(
                                                itemCount: _
                                                    .productCardDataStandard
                                                    .length,
                                                itemBuilder:
                                                    (BuildContext context, i) {
                                                  return Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                              width:
                                                                  Get.height *
                                                                      0.01),
                                                          Icon(
                                                            _.productCardDataStandard[
                                                                    i]['tick']
                                                                ? Icons
                                                                    .done_all_outlined
                                                                : Icons
                                                                    .cancel_outlined,
                                                            size: 17,
                                                          ),
                                                          SizedBox(
                                                              width: Get.width *
                                                                  0.006),
                                                          Text(
                                                              _.productCardDataStandard[
                                                                  i]['offer']),
                                                        ],
                                                      ).marginSymmetric(
                                                          vertical: 5),
                                                      Divider(
                                                        // thickness: 1,
                                                        color: const Color
                                                            .fromARGB(
                                                            142, 0, 0, 0),
                                                        endIndent: 17,
                                                        indent: 17,
                                                      )
                                                    ],
                                                  );
                                                }),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              // Add your button click logic here
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  UIDataColors.commonColor,
                                              padding: EdgeInsets.only(
                                                  top: 23,
                                                  bottom: 23,
                                                  left: 35,
                                                  right: 35),
                                            ),
                                            child: Text(
                                              'Get Now',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "Popins",
                                                  fontSize: 16),
                                            ),
                                          ).marginSymmetric(vertical: 20),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: Get.width / 5,
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 252, 252, 252),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color.fromARGB(
                                                    255, 180, 180, 180)
                                                .withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                      // height: Get.height / 1.43,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: Get.width,
                                            height: Get.height / 13,
                                            color: UIDataColors.commonColor,
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Startup',
                                              // textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 28.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontFamily: "Popins"),
                                            ),
                                          ),
                                          // SizedBox(height: Get.height * 0.034),dddddddd
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Text(
                                                'Rs',
                                                style: TextStyle(
                                                  fontSize: 10.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Column(
                                                children: [
                                                  Text(
                                                    '20000',
                                                    style: TextStyle(
                                                        fontSize: 29.0,
                                                        color: Color.fromARGB(
                                                            176, 0, 0, 0),
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        fontFamily: "Popins",
                                                        leadingDistribution:
                                                            TextLeadingDistribution
                                                                .even),
                                                  ),
                                                  Text(
                                                    'Monthly',
                                                    style: TextStyle(
                                                      fontSize: 16.0,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ).marginSymmetric(vertical: 20),
                                          // SizedBox(height: Get.height * 0.034),
                                          Container(
                                            height: Get.height - 430,
                                            width: Get.width,
                                            // color: Colors.amber,
                                            child: ListView.builder(
                                                itemCount: _
                                                    .productCardDataPlatinium
                                                    .length,
                                                itemBuilder:
                                                    (BuildContext context, i) {
                                                  return Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                              width:
                                                                  Get.height *
                                                                      0.01),
                                                          Icon(
                                                            _.productCardDataPlatinium[
                                                                    i]['tick']
                                                                ? Icons
                                                                    .done_all_outlined
                                                                : Icons
                                                                    .cancel_outlined,
                                                            size: 17,
                                                          ),
                                                          SizedBox(
                                                              width: Get.width *
                                                                  0.006),
                                                          Text(
                                                              _.productCardDataPlatinium[
                                                                  i]['offer']),
                                                        ],
                                                      ).marginSymmetric(
                                                          vertical: 5),
                                                      Divider(
                                                        // thickness: 1,
                                                        color: const Color
                                                            .fromARGB(
                                                            142, 0, 0, 0),
                                                        endIndent: 17,
                                                        indent: 17,
                                                      )
                                                    ],
                                                  );
                                                }),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              // Add your button click logic here
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  UIDataColors.commonColor,
                                              padding: EdgeInsets.only(
                                                  top: 23,
                                                  bottom: 23,
                                                  left: 35,
                                                  right: 35),
                                            ),
                                            child: Text(
                                              'Get Now',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "Popins",
                                                  fontSize: 16),
                                            ),
                                          ).marginSymmetric(vertical: 20),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                ],
              ).marginSymmetric(
                  horizontal: Responsive.isDesktopContext(context) ? 150 : 50),
            ),
            SizedBox(height: Get.height * 0.02),
            Stack(
              children: [
                // Background widget
                Container(
                  width: Get.width,
                  height: Get.height / 1.2,
                ),
                Container(
                  // alignment: Alignment.center,
                  transformAlignment: Alignment.topCenter,
                  width: Get.width,
                  height: Get.height / 1.7,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(234, 116, 60, 247),
                      image: DecorationImage(
                          opacity: 0.6,
                          image: AssetImage(
                              "images/portfolioAssets/pricing-img-3.png"),
                          fit: BoxFit.fitHeight)),
                  child: Text(
                    "Not Sure Which Plan is Right For You? Let’s Drop Us A \n Message!",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Popins"),
                    textAlign: TextAlign.center,
                  ).paddingOnly(
                    top: Get.height / 7,
                  ),
                ),
                // Centered text widget
                Positioned(
                    bottom: Get.height * 0.04,
                    left: Get.width / 2.3 - ((Get.height / 1.5) / 2),
                    child: Row(
                      children: [
                        Image.asset("images/portfolioAssets/pricing-img-1.png"),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 247, 247, 247),
                              borderRadius: BorderRadius.circular(10)),
                          width: Get.width / 2.5,
                          // height: Get.height / 2.2,
                          height: 400,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(128, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Full Name',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        width: 2.0),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  // contentPadding: EdgeInsets.all(0)
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(128, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Email',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 2.0),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  // contentPadding: EdgeInsets.all(0)
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(128, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Subject',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 2.0),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  // contentPadding: EdgeInsets.all(0)
                                ),
                              ),
                              TextField(
                                maxLines: 5,
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(128, 255, 255, 255),
                                  filled: true,
                                  hintText: 'Message',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 2.0),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  // contentPadding: EdgeInsets.all(0)
                                ),
                              ),
                            ],
                          ),
                        ),
                        Image.asset("images/portfolioAssets/pricing-img-2.png"),
                      ],
                    )),
              ],
            ),
            SizedBox(height: Get.height * 0.02),
            SafeArea(
                minimum:
                    EdgeInsets.fromLTRB(Get.width / 5, 0, Get.width / 5, 0),
                child: Column(
                  children: [
                    Text(
                      "Our Satisfied Customer",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Popins"),
                    ),
                    // SizedBox(height: Get.height * 0.002),
                    CarouselSlider(
                      options: CarouselOptions(
                        height: Get.height / 6.8,
                        // enlargeCenterPage: true,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 2),
                        autoPlayAnimationDuration: Duration(milliseconds: 1200),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        pauseAutoPlayOnTouch: true,
                        // aspectRatio: 3,
                        viewportFraction: 0.08,
                      ),
                      items: [
                        Container(
                          width: Get.width / 5,
                          height: Get.height / 4,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              // alignment: Alignment.centerRight,
                              image: AssetImage(
                                "images/portfolioAssets/customer1.png",
                              ),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        SizedBox(height: Get.width / 30),
                        Container(
                          width: Get.width,
                          height: Get.height / 1.2,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              // alignment: Alignment.centerRight,
                              image: AssetImage(
                                "images/portfolioAssets/customer2.png",
                              ),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        SizedBox(height: Get.width / 30),
                        Container(
                          width: Get.width,
                          height: Get.height / 1,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              // alignment: Alignment.centerRight,
                              image: AssetImage(
                                "images/portfolioAssets/customer3.png",
                              ),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        SizedBox(height: Get.width / 30),
                        Container(
                          width: Get.width,
                          height: Get.height / 1,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              // alignment: Alignment.centerRight,
                              image: AssetImage(
                                "images/portfolioAssets/customer4.png",
                              ),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        SizedBox(height: Get.width / 30),
                        Container(
                          width: Get.width,
                          height: Get.height / 1,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              // alignment: Alignment.centerRight,
                              image: AssetImage(
                                "images/portfolioAssets/customer5.png",
                              ),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        SizedBox(height: Get.width / 30),
                        Container(
                          width: Get.width,
                          height: Get.height / 1,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              // alignment: Alignment.centerRight,
                              image: AssetImage(
                                "images/portfolioAssets/customer6.png",
                              ),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        SizedBox(height: Get.width / 30),
                      ],
                    ),
                  ],
                )),
            FooterWidget(),
          ],
        ),
      ),
      bottomNav: false,
    );
  }
}
