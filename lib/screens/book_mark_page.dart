import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/theme_changer_provider.dart';
import '../modal/currency_modal.dart';
import '../provider/bookmark_provider.dart';

class BookMarkPage extends StatefulWidget {
  const BookMarkPage({Key? key}) : super(key: key);

  @override
  State<BookMarkPage> createState() => _BookMarkPageState();
}

class _BookMarkPageState extends State<BookMarkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: ListView.builder(
          itemCount: Provider.of<BookMarkProvider>(context, listen: true)
              .bookmark
              .data
              .length,
          itemBuilder: (context, index) {
            List data = Provider.of<BookMarkProvider>(context, listen: true)
                .bookmark
                .data;
            return Padding(
              padding: const EdgeInsets.only(top: 5,left: 10,right: 10),
              child: Card(
                color: (Provider.of<ThemeController>(context,
                    listen: true)
                    .t
                    .isDark)
                    ? Colors.deepOrangeAccent
                    : Colors.greenAccent,
                child: ListTile(
                  title: Text(data[index].code.toString()),
                  subtitle: Text(data[index].value.toString()),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
