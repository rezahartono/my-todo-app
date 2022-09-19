import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:my_todo/presentation/my_todo_app.dart';
import 'package:my_todo/utils/constants/string_constant.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting(constant.locale).then(
    (value) => runApp(
      const MyTodoApp(),
    ),
  );
}
