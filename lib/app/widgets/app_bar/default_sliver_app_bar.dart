import 'package:flutter/material.dart';

class DefaultSliverAppBar extends StatelessWidget {
  final Widget? title;
  final Widget? flexibleSpace;
  const DefaultSliverAppBar({Key? key, this.title, this.flexibleSpace}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        expandedHeight: 400.0,
        floating: false,
        pinned: true,
        elevation: 0,
        title: title,
        flexibleSpace: flexibleSpace);
  }
}
