import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/common/translations/localization_service.dart';

class LanguageSelector extends StatefulWidget {
  const LanguageSelector({super.key});

  @override
  State<LanguageSelector> createState() => _LanguageSelectorState();
}

class _LanguageSelectorState extends State<LanguageSelector> {
  final Map<String, String> _langs = {"en": "english".tr, "ko": "korean".tr};
  final List<String> _item = [];
  List<bool> _isSelected = [];

  List<Widget> _itemGenerater() => List.generate(
        _item.length,
        (index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            _item[index],
          ),
        ),
      );

  @override
  void initState() {
    _langs.forEach((key, value) {
      _item.add(value);
    });
    _isSelected =
        List.generate(_item.length, (index) => index == 0 ? true : false);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      isSelected: _isSelected,
      onPressed: (index) {
        LocalizationService.changeLocale(
            _langs.keys.toList()[_langs.values.toList().indexOf(_item[index])]);
        setState(() {
          _isSelected = List.generate(_item.length, (i) => false);
          _isSelected[index] = true;
        });
      },
      children: _itemGenerater(),
    );
  }
}
