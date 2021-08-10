import 'package:flutter/material.dart';
import '../constants.dart';
import '../colors.dart';

class ListItemButton extends StatelessWidget {
  const ListItemButton({
    Key? key,
    required this.onPress,
    required this.title,
    this.titleData = '',
    this.iconData = Icons.smartphone,
    this.showRightAction = true,
  }) : super(key: key);

  final VoidCallback onPress;
  final String title;
  final String titleData;
  final IconData iconData;
  final bool showRightAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: TextButton(
        onPressed: onPress,
        style: TextButton.styleFrom(
          minimumSize: Size.zero,
          padding: EdgeInsets.only(
            left: kDefaultPadding,
            right: showRightAction ? kDefaultPadding / 2 : kDefaultPadding,
          ),
        ),
        child: Row(
          children: [
            Icon(
              iconData,
              size: 45,
              color: kTextColor,
            ),
            SizedBox(width: kDefaultPadding / 2),
            Text(
              title,
              style: TextStyle(
                color: kTextColor,
                fontSize: 18,
              ),
            ),
            Spacer(),
            Text(
              titleData,
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 18,
              ),
            ),
            if (showRightAction)
              Icon(
                Icons.chevron_right,
                size: 35,
                color: Color(0xffD8D8D8),
              ),
          ],
        ),
      ),
    );
  }
}
