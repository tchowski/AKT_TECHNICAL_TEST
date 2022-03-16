import 'dart:math';

import 'package:flutter/material.dart';
import 'package:vrouter/vrouter.dart';

bool randomBoolean() {
  final Random r = Random();
  final bool result = r.nextDouble() <= 0.7;
  return result;
}

void navigateTo(BuildContext context, String path,
    {Map<String, String> queryParameters = const <String, String>{},
    Map<String, String> historyState = const <String, String>{}}) {
  VRouter.of(context).to(path, queryParameters: queryParameters, historyState: historyState);
}
