import 'package:flutter/material.dart';
import 'package:ngodinglah_flutter/model/language_programing.dart';
import 'package:ngodinglah_flutter/ui/detail/detail_activity.dart';

class DetailLayoutMobile extends StatelessWidget {
  final LanguagePrograming languagePrograming;

  DetailLayoutMobile(this.languagePrograming, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              alignment: AlignmentDirectional.topCenter,
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(35.0),
                      bottomRight: Radius.circular(35.0)),
                  child: Image.asset(
                    languagePrograming.img,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                SafeArea(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black38,
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      const BookmarkButton(),
                    ],
                  ),
                ))
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16.0),
              child: Text(
                languagePrograming.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 28,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    languagePrograming.year,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0),
              child: Text(
                languagePrograming.description,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(width: 32.0),
          ],
        ),
      ),
    );
  }
}
