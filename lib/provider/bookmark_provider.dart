import 'package:flutter/material.dart';

import '../modal/bookmark_modal.dart';
import '../modal/currency_modal.dart';

class BookMarkProvider extends ChangeNotifier{
  Bookmark bookmark = Bookmark(data: []);

  add({required AllCurrency allCurrency})
  {
    bookmark.data.add(allCurrency);
    notifyListeners();
  }

  remove({required AllCurrency allCurrency})
  {
    bookmark.data.remove(allCurrency);
    notifyListeners();
  }
}