import 'package:auto_size_text/auto_size_text.dart';
import 'package:bee/global_widgets/search_bar.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../../global_widgets/cutom_appbar.dart';
import 'home_page.dart';

class ServiceTwoPage extends StatelessWidget {
  const ServiceTwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomAppBar(height: height, width: width),
            Divider(height: height * 0.01, color: Colors.transparent),
            SearchBar(height: height, width: width),
            Divider(height: height * 0.02, color: Colors.transparent),
            SelectionList(height: height, width: width),
            Divider(height: height * 0.02, color: Colors.transparent),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: AutoSizeText(
                          "Select Services",
                          maxFontSize: 22,
                          minFontSize: 10,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontWeight: FontWeight.w700),
                        ),
                      ),
                      Divider(height: height * 0.01, color: Colors.transparent),
                      MostPopular(height: height, width: width),
                      Divider(height: height * 0.01, color: Colors.transparent),
                      MostPopular(height: height, width: width),
                      Divider(height: height * 0.01, color: Colors.transparent),
                      MostPopular(height: height, width: width),
                      Divider(height: height * 0.01, color: Colors.transparent),
                      AutoSizeText(
                        "Trending",
                        maxFontSize: 22,
                        minFontSize: 10,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                      Divider(height: height * 0.01, color: Colors.transparent),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TrendingTile(
                            height: height,
                            width: width,
                            gradient: [Colors.red, Colors.red.shade300],
                            title: 'Complete Car Service',
                            label: 'Offer Price Rs 999',
                          ),
                          TrendingTile(
                            height: height,
                            width: width,
                            gradient: [Colors.indigo, Colors.indigo.shade300],
                            title: 'Complete Car Service',
                            label: 'Offer Price Rs 999',
                          ),
                          TrendingTile(
                            height: height,
                            width: width,
                            gradient: [Colors.green, Colors.green.shade300],
                            title: 'Complete Car Service',
                            label: 'Offer Price Rs 999',
                          ),
                          TrendingTile(
                            height: height,
                            width: width,
                            gradient: [Colors.black, Colors.grey.shade300],
                            title: 'Complete Car Service',
                            label: 'Offer Price Rs 999',
                          ),
                        ],
                      ),
                      Divider(height: height * 0.01, color: Colors.transparent),
                      RedStripWidget(height: height),
                      Divider(height: height * 0.01, color: Colors.transparent),
                      AutoSizeText("Happy Costumers",
                          maxFontSize: 22,
                          minFontSize: 10,
                          maxLines: 1,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontWeight: FontWeight.w700)),
                      Divider(height: height * 0.02, color: Colors.transparent),
                      Container(
                        height: height * 0.25,
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            AutoSizeText(
                              "Expert Care",
                              maxFontSize: 28,
                              minFontSize: 16,
                              maxLines: 1,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.red.shade900),
                            ),
                            AutoSizeText(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna  Lorem ipsum dolor sit amet, consectetur adipiscing elit ut",
                              maxFontSize: 16,
                              minFontSize: 10,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(fontWeight: FontWeight.w500),
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey.shade400,
                                  radius: (height / width) * 10,
                                ),
                                SizedBox(width: 5),
                                AutoSizeText(
                                  "Amit Kumar",
                                  maxFontSize: 12,
                                  minFontSize: 5,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(fontWeight: FontWeight.w700),
                                ),
                                Spacer(),
                                AutoSizeText(
                                  "1 month ago",
                                  maxFontSize: 12,
                                  minFontSize: 5,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(height: height * 0.02, color: Colors.transparent),
                      Container(
                        height: height * 0.25,
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            AutoSizeText(
                              "Expert Care",
                              maxFontSize: 28,
                              minFontSize: 16,
                              maxLines: 1,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.red.shade900),
                            ),
                            AutoSizeText(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna  Lorem ipsum dolor sit amet, consectetur adipiscing elit ut",
                              maxFontSize: 16,
                              minFontSize: 10,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(fontWeight: FontWeight.w500),
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey.shade400,
                                  radius: (height / width) * 10,
                                ),
                                SizedBox(width: 5),
                                AutoSizeText(
                                  "Amit Kumar",
                                  maxFontSize: 12,
                                  minFontSize: 5,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(fontWeight: FontWeight.w700),
                                ),
                                Spacer(),
                                AutoSizeText(
                                  "1 month ago",
                                  maxFontSize: 12,
                                  minFontSize: 5,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MostPopular extends StatelessWidget {
  const MostPopular({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: height * 0.2,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topCenter,
              width: width * 0.35,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/service.png"),
                    fit: BoxFit.cover),
              ),
              child: Container(
                height: 20,
                alignment: Alignment.center,
                color: Theme.of(context).primaryColor,
                child: AutoSizeText(
                  "Most Popular",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        AutoSizeText(
                          "Complete Car Service",
                          maxFontSize: 22,
                          minFontSize: 10,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                        ),
                        AutoSizeText(
                          "Rs 699",
                          maxFontSize: 22,
                          minFontSize: 10,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: Theme.of(context).primaryColor),
                        ),
                        AutoSizeText(
                          "Save upto Rs 299",
                          maxFontSize: 12,
                          minFontSize: 10,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.green),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SelectionList extends StatefulWidget {
  const SelectionList({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;
  static const List<String> items = [
    'Periodic Services',
    'Body Repair',
    'Battries',
    'Custom Services',
    'Engine Repair'
  ];

  @override
  State<SelectionList> createState() => _SelectionListState();
}

class _SelectionListState extends State<SelectionList> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          maxHeight: widget.height * 0.035, maxWidth: widget.width * 0.95),
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (c, _) => SizedBox(width: 10),
        itemCount: SelectionList.items.length,
        itemBuilder: (ctx, indx) => GestureDetector(
          onTap: () => setState(() {
            selected = indx;
          }),
          child: Container(
            padding: const EdgeInsets.all(5),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: selected == indx ? Colors.red : Colors.transparent,
                borderRadius: BorderRadius.circular(5)),
            child: AutoSizeText(
              SelectionList.items[indx],
              maxFontSize: 14,
              maxLines: 1,
              minFontSize: 5,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: selected == indx ? Colors.white : Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
