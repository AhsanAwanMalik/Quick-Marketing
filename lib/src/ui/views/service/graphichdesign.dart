import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:quickmarket/src/utils/config/responsive.dart';
import 'package:quickmarket/src/utils/config/widgetresponsive.dart';

import '../../../utils/config/commonscafold.dart';
import '../../../utils/config/uidata.dart';
import '../../widgets/footerWidget.dart';
import '../../widgets/hoverWidget.dart';

class GraphicDesign extends StatelessWidget {
  const GraphicDesign({super.key});

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
                    alignment: Alignment.center,
                    height: !Responsive.isMobileContext(context)
                        ? Responsive.isTabletContext(context)
                            ? 170
                            : 200
                        : 100,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "images/services/graphicdesign/innerpage-banner-3.jpg"),
                            fit: BoxFit.cover)),
                    child: Text(
                      'Graphic Designing',
                      style: TextStyle(
                          fontSize: !Responsive.isMobileContext(context)
                              ? Responsive.isTabletContext(context)
                                  ? 40
                                  : 50
                              : 30,
                          fontWeight: FontWeight.bold,
                          color: UIDataColors.whiteColor,
                          decoration: TextDecoration.none),
                    ),
                  ),
                  Container(
                          width: Get.width / 1.1,
                          child: ResponsiveTextFieldRow(
                            firstTextField: Container(
                              alignment: Responsive.isMobileContext(context)
                                  ? Alignment.center
                                  : Alignment.centerRight,
                              width: Responsive.isMobileContext(context)
                                  ? Get.width / 1.1
                                  : Get.width / 2.5,
                              height: Responsive.isMobileContext(context)
                                  ? 400
                                  : 600,
                              child: Image.asset(
                                  "images/services/graphicdesign/gdimg.png"),
                            ).paddingSymmetric(horizontal: 20),
                            secondTextField: Container(
                              alignment: Alignment.topLeft,
                              width: Responsive.isMobileContext(context)
                                  ? Get.width / 1.1
                                  : Get.width / 2.5,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      alignment:
                                          Responsive.isMobileContext(context)
                                              ? Alignment.center
                                              : Alignment.topLeft,
                                      width: Responsive.isMobileContext(context)
                                          ? Get.width / 1.1
                                          : Get.width / 2.5,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Graphic Designing',
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
                                                  color:
                                                      UIDataColors.blackColor,
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
                                      "What Is Graphic Designing?",
                                      style: TextStyle(
                                          color: UIDataColors.blackColor,
                                          fontSize: !Responsive.isMobileContext(
                                                  context)
                                              ? Responsive.isTabletContext(
                                                      context)
                                                  ? 16
                                                  : 18
                                              : 14,
                                          height: !Responsive.isMobileContext(
                                                  context)
                                              ? Responsive.isTabletContext(
                                                      context)
                                                  ? 1.4
                                                  : 1.6
                                              : 1.4,
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.none),
                                    ).paddingOnly(top: 0, bottom: 10),
                                    Text(
                                      'Graphic design is really important today in our world. Through its informative, conclusive, educational, and entertaining functions, graphic design shapes our perception, facilitates communication, and enriches our visual experience. By understanding and appreciating the various tasks of graphic design, we can harness its full potential to create impactful, memorable, and effective messages in a visually oriented-world.',
                                      style: TextStyle(
                                          color: UIDataColors.blackColor,
                                          fontSize: !Responsive.isMobileContext(
                                                  context)
                                              ? Responsive.isTabletContext(
                                                      context)
                                                  ? 14
                                                  : 16
                                              : 14,
                                          height: !Responsive.isMobileContext(
                                                  context)
                                              ? Responsive.isTabletContext(
                                                      context)
                                                  ? 1.4
                                                  : 1.6
                                              : 1.4,
                                          fontWeight: FontWeight.normal,
                                          decoration: TextDecoration.none),
                                    ).paddingOnly(top: 0, bottom: 10),
                                    Text(
                                      'This creative discipline focuses on creating and combining visual elements, such as images, typography, colors, and shapes, to communicate clear, effective, and attractive messages. Using adjective principles and composition techniques, graphic design seeks to convey ideas, concepts, or information in a visually unusual and accessible way.',
                                      style: TextStyle(
                                          color: UIDataColors.blackColor,
                                          fontSize: !Responsive.isMobileContext(
                                                  context)
                                              ? Responsive.isTabletContext(
                                                      context)
                                                  ? 14
                                                  : 16
                                              : 14,
                                          height: !Responsive.isMobileContext(
                                                  context)
                                              ? Responsive.isTabletContext(
                                                      context)
                                                  ? 1.4
                                                  : 1.6
                                              : 1.4,
                                          fontWeight: FontWeight.normal,
                                          decoration: TextDecoration.none),
                                    ),
                                    Text(
                                      'In addition, it covers a wide range of applications and fields, including advertising, marketing, branding, editorial design, web design, interface design, packaging, and signage, among others. It is an essential tool for creating visual identities, logos, posters, brochures, web pages, advertisements, and any other medium where visual communication plays a fundamental role.',
                                      style: TextStyle(
                                          color: UIDataColors.blackColor,
                                          fontSize: !Responsive.isMobileContext(
                                                  context)
                                              ? Responsive.isTabletContext(
                                                      context)
                                                  ? 14
                                                  : 16
                                              : 14,
                                          height: !Responsive.isMobileContext(
                                                  context)
                                              ? Responsive.isTabletContext(
                                                      context)
                                                  ? 1.4
                                                  : 1.6
                                              : 1.4,
                                          fontWeight: FontWeight.normal,
                                          decoration: TextDecoration.none),
                                    ).paddingOnly(top: 10, bottom: 10),
                                    Text(
                                      "Where does the graphic designer work?",
                                      style: TextStyle(
                                          color: UIDataColors.blackColor,
                                          fontSize: !Responsive.isMobileContext(
                                                  context)
                                              ? Responsive.isTabletContext(
                                                      context)
                                                  ? 16
                                                  : 18
                                              : 14,
                                          height: !Responsive.isMobileContext(
                                                  context)
                                              ? Responsive.isTabletContext(
                                                      context)
                                                  ? 1.4
                                                  : 1.6
                                              : 1.4,
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.none),
                                    ).paddingOnly(top: 0, bottom: 10),
                                    Text(
                                      'Graphic designers can work in a variety of environments and sectors. Some of the common places where graphic designers can find employment include:',
                                      style: TextStyle(
                                          color: UIDataColors.blackColor,
                                          fontSize: !Responsive.isMobileContext(
                                                  context)
                                              ? Responsive.isTabletContext(
                                                      context)
                                                  ? 14
                                                  : 16
                                              : 14,
                                          height: !Responsive.isMobileContext(
                                                  context)
                                              ? Responsive.isTabletContext(
                                                      context)
                                                  ? 1.4
                                                  : 1.6
                                              : 1.4,
                                          fontWeight: FontWeight.normal,
                                          decoration: TextDecoration.none),
                                    ).paddingOnly(top: 0, bottom: 10),
                                    RichText(
                                      text: TextSpan(
                                        text: 'Advertising Agencies. ',
                                        style: TextStyle(
                                            color: UIDataColors.blackColor,
                                            fontSize: !Responsive
                                                    .isMobileContext(context)
                                                ? Responsive.isTabletContext(
                                                        context)
                                                    ? 14
                                                    : 16
                                                : 14,
                                            fontFamily: 'Popins',
                                            height: !Responsive.isMobileContext(
                                                    context)
                                                ? Responsive.isTabletContext(
                                                        context)
                                                    ? 1.4
                                                    : 1.6
                                                : 1.4,
                                            fontWeight: FontWeight.bold,
                                            decoration: TextDecoration.none),
                                        children: const <TextSpan>[
                                          TextSpan(
                                              text:
                                                  ' Many graphic designers work in advertising agencies, creating promotional materials, advertisements, campaigns, and designs for clients.',
                                              style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                              )),
                                        ],
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        text: 'Design studios.',
                                        style: TextStyle(
                                            color: UIDataColors.blackColor,
                                            fontSize: !Responsive
                                                    .isMobileContext(context)
                                                ? Responsive.isTabletContext(
                                                        context)
                                                    ? 14
                                                    : 16
                                                : 14,
                                            fontFamily: 'Popins',
                                            height: !Responsive.isMobileContext(
                                                    context)
                                                ? Responsive.isTabletContext(
                                                        context)
                                                    ? 1.4
                                                    : 1.6
                                                : 1.4,
                                            fontWeight: FontWeight.bold,
                                            decoration: TextDecoration.none),
                                        children: const <TextSpan>[
                                          TextSpan(
                                              text:
                                                  'Design studios specialize in creating graphic designs for various purposes, such as brand identity design, web design, editorial design, and more.',
                                              style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                              )),
                                        ],
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        text:
                                            'Marketing And Communication Companies. ',
                                        style: TextStyle(
                                            color: UIDataColors.blackColor,
                                            fontSize: !Responsive
                                                    .isMobileContext(context)
                                                ? Responsive.isTabletContext(
                                                        context)
                                                    ? 14
                                                    : 16
                                                : 14,
                                            fontFamily: 'Popins',
                                            height: !Responsive.isMobileContext(
                                                    context)
                                                ? Responsive.isTabletContext(
                                                        context)
                                                    ? 1.4
                                                    : 1.6
                                                : 1.4,
                                            fontWeight: FontWeight.bold,
                                            decoration: TextDecoration.none),
                                        children: const <TextSpan>[
                                          TextSpan(
                                              text:
                                                  ' Marketing and communication companies engage graphic designers to develop visual materials for advertising campaigns, communication strategies, and promotion of products or services.',
                                              style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                              )),
                                        ],
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        text:
                                            'Internal Marketing Departments. ',
                                        style: TextStyle(
                                            color: UIDataColors.blackColor,
                                            fontSize: !Responsive
                                                    .isMobileContext(context)
                                                ? Responsive.isTabletContext(
                                                        context)
                                                    ? 14
                                                    : 16
                                                : 14,
                                            fontFamily: 'Popins',
                                            height: !Responsive.isMobileContext(
                                                    context)
                                                ? Responsive.isTabletContext(
                                                        context)
                                                    ? 1.4
                                                    : 1.6
                                                : 1.4,
                                            fontWeight: FontWeight.bold,
                                            decoration: TextDecoration.none),
                                        children: const <TextSpan>[
                                          TextSpan(
                                              text:
                                                  ' Many companies have their internal marketing departments, where graphic designers work on developing promotional materials, presentations, packaging design, and other visual elements for the company.',
                                              style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                              )),
                                        ],
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        text: 'Editorial Industry.',
                                        style: TextStyle(
                                            color: UIDataColors.blackColor,
                                            fontSize: !Responsive
                                                    .isMobileContext(context)
                                                ? Responsive.isTabletContext(
                                                        context)
                                                    ? 14
                                                    : 16
                                                : 14,
                                            fontFamily: 'Popins',
                                            height: !Responsive.isMobileContext(
                                                    context)
                                                ? Responsive.isTabletContext(
                                                        context)
                                                    ? 1.4
                                                    : 1.6
                                                : 1.4,
                                            fontWeight: FontWeight.bold,
                                            decoration: TextDecoration.none),
                                        children: const <TextSpan>[
                                          TextSpan(
                                              text:
                                                  'Graphic designers can work in publishing companies, creating cover designs, illustrations, and layouts for books, magazines, and newspapers.',
                                              style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                              )),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      'If you need a graphic designer expert for your company, business, or projects, please get in touch with our expert team. They will entertain you with creative design and fulfill your requirements as per demand.',
                                      style: TextStyle(
                                          color: UIDataColors.blackColor,
                                          fontSize: !Responsive.isMobileContext(
                                                  context)
                                              ? Responsive.isTabletContext(
                                                      context)
                                                  ? 14
                                                  : 16
                                              : 14,
                                          height: !Responsive.isMobileContext(
                                                  context)
                                              ? Responsive.isTabletContext(
                                                      context)
                                                  ? 1.4
                                                  : 1.6
                                              : 1.4,
                                          fontWeight: FontWeight.normal,
                                          decoration: TextDecoration.none),
                                    ).paddingOnly(top: 10, bottom: 10),
                                  ]),
                            ),
                          ))
                      .paddingOnly(
                          top: 50,
                          bottom: Responsive.isMobileContext(context) ? 30 : 0),
                  SizedBox(
                    child: Text('Comprehensive Design Services',
                        style: TextStyle(
                            fontSize: !Responsive.isMobileContext(context)
                                ? Responsive.isTabletContext(context)
                                    ? 30
                                    : 45
                                : 30,
                            fontWeight: FontWeight.bold,
                            color: UIDataColors.blackColor,
                            decoration: TextDecoration.none)),
                  ),
                  Container(
                    width: Responsive.isMobileContext(context)
                        ? Get.width / 1.1
                        : Get.width / 1.2,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                              text: TextSpan(
                                  text: 'Logo Design: ',
                                  style: TextStyle(
                                      color: UIDataColors.blackColor,
                                      fontSize: !Responsive.isMobileContext(
                                              context)
                                          ? Responsive.isTabletContext(context)
                                              ? 14
                                              : 16
                                          : 14,
                                      height: !Responsive.isMobileContext(
                                              context)
                                          ? Responsive.isTabletContext(context)
                                              ? 1.4
                                              : 1.6
                                          : 1.4,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none),
                                  children: <TextSpan>[
                                TextSpan(
                                  text:
                                      ' Craft a memorable and meaningful logo that represents your brand identity.',
                                  style: TextStyle(
                                      color: UIDataColors.blackColor,
                                      fontSize: !Responsive.isMobileContext(
                                              context)
                                          ? Responsive.isTabletContext(context)
                                              ? 14
                                              : 16
                                          : 14,
                                      height: !Responsive.isMobileContext(
                                              context)
                                          ? Responsive.isTabletContext(context)
                                              ? 1.4
                                              : 1.6
                                          : 1.4,
                                      fontWeight: FontWeight.normal,
                                      decoration: TextDecoration.none),
                                )
                              ])).paddingOnly(top: 40),
                          RichText(
                              text: TextSpan(
                                  text: 'Branding and Identity: ',
                                  style: TextStyle(
                                      color: UIDataColors.blackColor,
                                      fontSize: !Responsive.isMobileContext(
                                              context)
                                          ? Responsive.isTabletContext(context)
                                              ? 14
                                              : 16
                                          : 14,
                                      height: !Responsive.isMobileContext(
                                              context)
                                          ? Responsive.isTabletContext(context)
                                              ? 1.4
                                              : 1.6
                                          : 1.4,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none),
                                  children: <TextSpan>[
                                TextSpan(
                                  text:
                                      ' Develop a cohesive brand identity with consistent and visually appealing design elements across all platforms.',
                                  style: TextStyle(
                                      color: UIDataColors.blackColor,
                                      fontSize: !Responsive.isMobileContext(
                                              context)
                                          ? Responsive.isTabletContext(context)
                                              ? 14
                                              : 16
                                          : 14,
                                      height: !Responsive.isMobileContext(
                                              context)
                                          ? Responsive.isTabletContext(context)
                                              ? 1.4
                                              : 1.6
                                          : 1.4,
                                      fontWeight: FontWeight.normal,
                                      decoration: TextDecoration.none),
                                )
                              ])).paddingOnly(top: 10),
                          RichText(
                              text: TextSpan(
                                  text: 'Print Design: ',
                                  style: TextStyle(
                                      color: UIDataColors.blackColor,
                                      fontSize: !Responsive.isMobileContext(
                                              context)
                                          ? Responsive.isTabletContext(context)
                                              ? 14
                                              : 16
                                          : 14,
                                      height: !Responsive.isMobileContext(
                                              context)
                                          ? Responsive.isTabletContext(context)
                                              ? 1.4
                                              : 1.6
                                          : 1.4,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none),
                                  children: <TextSpan>[
                                TextSpan(
                                  text:
                                      ' Create impactful print materials such as brochures, flyers, posters, and business cards that leave a lasting impression.',
                                  style: TextStyle(
                                      color: UIDataColors.blackColor,
                                      fontSize: !Responsive.isMobileContext(
                                              context)
                                          ? Responsive.isTabletContext(context)
                                              ? 14
                                              : 16
                                          : 14,
                                      height: !Responsive.isMobileContext(
                                              context)
                                          ? Responsive.isTabletContext(context)
                                              ? 1.4
                                              : 1.6
                                          : 1.4,
                                      fontWeight: FontWeight.normal,
                                      decoration: TextDecoration.none),
                                )
                              ])).paddingOnly(top: 10),
                          RichText(
                              text: TextSpan(
                                  text: 'Web Graphics: ',
                                  style: TextStyle(
                                      color: UIDataColors.blackColor,
                                      fontSize: !Responsive.isMobileContext(
                                              context)
                                          ? Responsive.isTabletContext(context)
                                              ? 14
                                              : 16
                                          : 14,
                                      height: !Responsive.isMobileContext(
                                              context)
                                          ? Responsive.isTabletContext(context)
                                              ? 1.4
                                              : 1.6
                                          : 1.4,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none),
                                  children: <TextSpan>[
                                TextSpan(
                                  text:
                                      ' Enhance your online presence with visually striking website graphics, banners, and social media visuals.',
                                  style: TextStyle(
                                      color: UIDataColors.blackColor,
                                      fontSize: !Responsive.isMobileContext(
                                              context)
                                          ? Responsive.isTabletContext(context)
                                              ? 14
                                              : 16
                                          : 14,
                                      height: !Responsive.isMobileContext(
                                              context)
                                          ? Responsive.isTabletContext(context)
                                              ? 1.4
                                              : 1.6
                                          : 1.4,
                                      fontWeight: FontWeight.normal,
                                      decoration: TextDecoration.none),
                                )
                              ])).paddingOnly(top: 10),
                          RichText(
                              text: TextSpan(
                                  text: 'Packaging Design: ',
                                  style: TextStyle(
                                      color: UIDataColors.blackColor,
                                      fontSize: !Responsive.isMobileContext(
                                              context)
                                          ? Responsive.isTabletContext(context)
                                              ? 14
                                              : 16
                                          : 14,
                                      height: !Responsive.isMobileContext(
                                              context)
                                          ? Responsive.isTabletContext(context)
                                              ? 1.4
                                              : 1.6
                                          : 1.4,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none),
                                  children: <TextSpan>[
                                TextSpan(
                                  text:
                                      ' Elevate the shelf appeal of your products with innovative and attractive packaging designs.',
                                  style: TextStyle(
                                      color: UIDataColors.blackColor,
                                      fontSize: !Responsive.isMobileContext(
                                              context)
                                          ? Responsive.isTabletContext(context)
                                              ? 14
                                              : 16
                                          : 14,
                                      height: !Responsive.isMobileContext(
                                              context)
                                          ? Responsive.isTabletContext(context)
                                              ? 1.4
                                              : 1.6
                                          : 1.4,
                                      fontWeight: FontWeight.normal,
                                      decoration: TextDecoration.none),
                                )
                              ])).paddingOnly(top: 10, bottom: 60),
                        ]),
                  ),
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
