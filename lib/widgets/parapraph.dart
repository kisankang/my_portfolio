import 'package:flutter/material.dart';

class Paragraph extends StatelessWidget {
  final IconData? titleIcon;
  final String titleString;
  final Widget? content;
  const Paragraph({
    this.titleIcon,
    required this.titleString,
    this.content,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    getColorTitle(String string) {
      String first = string[0];
      String remains = string.substring(1);
      var widget = RichText(
        text: TextSpan(
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
            children: <TextSpan>[
              TextSpan(
                text: first,
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              TextSpan(text: remains),
            ]),
      );
      return widget;
    }

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom:
                    BorderSide(color: Theme.of(context).colorScheme.outline),
              ),
            ),
            child: Row(
              children: [
                Icon(titleIcon),
                getColorTitle(titleString),
              ],
            ),
          ),
          content ?? const SizedBox(),
        ],
      ),
    );
  }
}
