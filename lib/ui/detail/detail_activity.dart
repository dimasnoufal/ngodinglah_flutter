import 'package:flutter/material.dart';
import 'package:ngodinglah_flutter/model/language_programing.dart';
import 'package:ngodinglah_flutter/ui/detail/detail_layout_mobile.dart';
import 'package:ngodinglah_flutter/ui/detail/detail_layout_web.dart';

class DetailActivity extends StatelessWidget {
  final LanguagePrograming languagePrograming;

  const DetailActivity({Key? key, required this.languagePrograming})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth <= 800) {
        return DetailLayoutMobile(languagePrograming);
      } else if (constraints.maxWidth <= 1200) {
        return DetailLayoutWeb(languagePrograming,
            padHorizontal: 20.0, padVertical: 15.0);
      } else {
        return DetailLayoutWeb(languagePrograming,
            padHorizontal: 180.0, padVertical: 15.0);
      }
    });
  }
}

class BookmarkButton extends StatefulWidget {
  const BookmarkButton({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BookmarkButton();
}

class _BookmarkButton extends State<BookmarkButton> {
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: isBookmarked ? Colors.red : Colors.black38,
      child: IconButton(
        icon: Icon(
          isBookmarked ? Icons.bookmark : Icons.bookmark_outline,
          color: Colors.white,
        ),
        onPressed: () {
          setState(() {
            isBookmarked = !isBookmarked;
          });
        },
      ),
    );
  }
}
