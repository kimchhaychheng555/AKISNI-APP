import 'package:akisni/components/drawer_component.dart';
import 'package:akisni/components/text_header_component.dart';
import 'package:akisni/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainViewLayout extends StatefulWidget {
  final Widget body;
  final String? title;
  final Function(String?) onSearch;
  const MainViewLayout({
    super.key,
    required this.body,
    required this.onSearch,
    this.title,
  });

  @override
  State<MainViewLayout> createState() => _MainViewLayoutState();
}

class _MainViewLayoutState extends State<MainViewLayout> {
  var isSearch = false;
  var textCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: BluePrimary,
        title: isSearch
            ? _searchTextComponent()
            : TextHeaderComponent(
                text: widget.title ?? "",
              ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isSearch = !isSearch;
                textCtrl.text = "";
              });
            },
            splashRadius: 25,
            icon: Icon(isSearch ? Icons.close_rounded : Icons.search),
          ),
        ],
      ),
      drawer: isSearch ? null : const DrawerComponent(),
      body: widget.body,
    );
  }

  Widget _searchTextComponent() {
    return TextField(
      controller: textCtrl,
      cursorColor: GraySeconday,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        suffixIcon: IconButton(
          splashRadius: 25,
          icon: Icon(
            Icons.search_rounded,
            color: GraySeconday,
          ),
          onPressed: () => widget.onSearch(textCtrl.text),
        ),
        isCollapsed: true,
        hintStyle: TextStyle(
          fontSize: DEFAULT_FONT_SIZE,
          color: GraySeconday,
        ),
        fillColor: Colors.transparent,
        contentPadding:
            EdgeInsets.symmetric(vertical: DEFAULT_PADDING, horizontal: 5),
        filled: true,
        border: InputBorder.none,
        hintText: 'search'.tr,
      ),
    );
  }
}
