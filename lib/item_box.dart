// import 'package:dha/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ricoz/utils.dart';

class ItemBox extends StatefulWidget {
  final String title;
  final List<ItemBlockData> dataRow1;
  final List<ItemBlockData>? dataRow2;

  const ItemBox({
    super.key,
    required this.title,
    required this.dataRow1,
    this.dataRow2,
  });

  @override
  State<ItemBox> createState() => _ItemBoxState();
}

class _ItemBoxState extends State<ItemBox> {
  Widget _oneBlock({
    required double width,
    required String title,
    required Widget icon,
  }) {
    return SizedBox(
      width: width,
      height: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 12,
                color: Color(0xFF430102),
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final oneBlockWidth = MediaQuery.of(context).size.width * 0.2;
    return Container(
        padding: const EdgeInsets.all(
          15,
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 8,
        ),
        decoration: Utils.mainContainerDecoration,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                SvgPicture.asset(
                  "asset/svg/three_right_arrow.svg",
                  width: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: widget.dataRow1
                      .map(
                        (e) => _oneBlock(
                          title: e.title,
                          width: oneBlockWidth,
                          icon: e.icon,
                        ),
                      )
                      .toList(),
                ),
                if (widget.dataRow2 != null)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: widget.dataRow2!
                        .map(
                          (e) => _oneBlock(
                            title: e.title,
                            width: oneBlockWidth,
                            icon: e.icon,
                          ),
                        )
                        .toList(),
                  ),
              ],
            ),
          ],
        ));
  }
}

class ItemBlockData {
  final String title;
  final Widget icon;

  ItemBlockData({required this.title, required this.icon});
}
