// ignore_for_file: sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/config/uidata.dart';

// class TabwithFilters extends GetxController with SingleGetTickerProviderMixin {
class TabwithFilters extends GetxController
    with GetSingleTickerProviderStateMixin {
  int tab = 0;
  int length = 1;
  dynamic tabIndex;
  int initialTab = 0;
  final Function? tabTap;
  TabController? tabController;
  TabwithFilters(this.initialTab, this.length, this.tabTap);
  @override
  void onInit() {
    tabController =
        TabController(initialIndex: initialTab, vsync: this, length: length);
    tabController!.addListener(_handleTabSelection);
    // print('tab controller init');
    super.onInit();
  }

  void _handleTabSelection() {
    //  print('callback for tabs listener');
    // print('scroll for tab: ${tabController.index}');
    if (tabTap != null) tabTap!(tabController!.index);
    if (tabController!.indexIsChanging) {
      print(tabController!.index);
      tabIndex = tabController!.index;
      print("oyeeeeeeeeeeeeeeeee index$tabIndex");
    }
  }

  @override
  void onClose() {
    tabController?.dispose();
    super.onClose();
  }
}

class ReusableTabWithFilterList extends StatelessWidget {
  const ReusableTabWithFilterList({
    this.headFirstRow = '',
    this.filterIconClick,
    this.inviteIconClick,
    this.isFilterEnable = false,
    this.isInviteEnabled = false,
    required this.tabBarView,
    required this.tabs,
    this.headSecondRow = '',
    required this.tabLength,
    this.tabTap,
    this.initialTab = 0,
    this.filterInvert = false,
  });
  final String headFirstRow;
  final String headSecondRow;
  final void Function()? filterIconClick;
  final void Function()? inviteIconClick;
  final bool isFilterEnable;
  final bool isInviteEnabled;
  final List<Widget> tabBarView;
  final List<Widget> tabs;
  final int tabLength;
  final int initialTab;
  final void Function(int)? tabTap;
  final bool filterInvert;

  @override
  Widget build(BuildContext context) {
    TabwithFilters tabController =
        Get.put(TabwithFilters(initialTab, tabLength, tabTap));
    return Container(
      height:
          // UIData.responsiveHeight / 1.2,
          Get.height / 1.52,
      width: UIData.responsiveWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Divider(),
          Expanded(
            child: DefaultTabController(
              initialIndex: initialTab,
              length: tabLength,
              child: Column(
                children: [
                  Expanded(
                    child: Center(
                      child: Container(
                        // padding: EdgeInsets.all(40),
                        // height: Get.height / 2,
                        // width: Get.width / 2,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(148, 218, 218, 218),
                            borderRadius: BorderRadius.circular(100)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                              flex: isFilterEnable ? 13 : 10,
                              child: TabBar(
                                labelPadding: EdgeInsets.all(Get.height * 0.02),
                                onTap: tabTap,
                                isScrollable: false,
                                indicatorSize: TabBarIndicatorSize.tab,

                                unselectedLabelColor:
                                    Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? null
                                        : UIDataColors.blackColor,
                                unselectedLabelStyle: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? null
                                      : Color.fromARGB(255, 113, 113, 113),
                                  // fontSize: 20,
                                ),
                                labelColor: Colors.white,
                                labelStyle: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600,
                                  // fontSize: 40,
                                ),
                                controller: tabController.tabController,
                                indicatorColor: UIDataColors.commonColor,
                                indicator: BoxDecoration(
                                  color: UIDataColors.commonColor,
                                  boxShadow: [
                                    BoxShadow(
                                      color: UIDataColors.commonColor
                                          .withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      offset: Offset(5,
                                          5), // Adjust the offset to control the shadow direction
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                // UnderlineTabIndicator(
                                //   borderSide: BorderSide(
                                //     color: UIDataColors.commonColor,
                                //     width: 1.0,
                                //   ),
                                // ),
                                tabs: tabs,
                              ),
                            ),
                            isFilterEnable
                                ? Flexible(
                                    flex: 2,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.all(5.0),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            color: filterIconClick != null
                                                ? UIDataColors.commonColor
                                                : Colors.white,
                                            width: 2,
                                          ),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(15),
                                          ),
                                        ), disabledForegroundColor: Colors.white.withOpacity(0.38), disabledBackgroundColor: Colors.white.withOpacity(0.12),
                                        backgroundColor: filterInvert
                                            ? filterIconClick != null
                                                ? UIDataColors.commonColor
                                                : Colors.white
                                            : Colors.white,
                                      ),
                                      child: Icon(
                                        Icons.filter_alt_outlined,
                                        color: filterInvert
                                            ? Colors.white
                                            : filterIconClick != null
                                                ? UIDataColors.commonColor
                                                : Colors.white,
                                        size: 20.0,
                                      ),
                                      onPressed: filterIconClick,
                                    ),
                                  )
                                : SizedBox(width: 0.0),
                            isInviteEnabled
                                ? Flexible(
                                    flex: 2,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.all(5.0),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              color: UIDataColors.commonColor,
                                              width: 2),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(30),
                                          ),
                                        ),
                                        backgroundColor: Colors.white,
                                      ),
                                      child: Icon(Icons.qr_code_outlined,
                                          color: UIDataColors.commonColor,
                                          size: 20.0),
                                      onPressed: inviteIconClick,
                                    ),
                                  )
                                : SizedBox(width: 0.0),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: TabBarView(
                      controller: tabController.tabController,
                      children: tabBarView,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
