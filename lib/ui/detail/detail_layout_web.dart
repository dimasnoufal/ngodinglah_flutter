import 'package:flutter/material.dart';
import 'package:ngodinglah_flutter/model/language_programing.dart';
import 'package:ngodinglah_flutter/ui/detail/detail_activity.dart';

class DetailLayoutWeb extends StatefulWidget {
  final LanguagePrograming languagePrograming;
  final double padHorizontal;
  final double padVertical;

  DetailLayoutWeb(this.languagePrograming,
      {Key? key, required this.padHorizontal, required this.padVertical})
      : super(key: key);

  @override
  State<DetailLayoutWeb> createState() => _DetailLayoutWebState();
}

class _DetailLayoutWebState extends State<DetailLayoutWeb> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'NgodingLah!',
        ),
        backgroundColor: const Color(0xFFEE7465),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            controller: _controller,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: widget.padHorizontal,
                  vertical: widget.padVertical),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                          widget.languagePrograming.img,
                          height: 500,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 32.0),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 32.0),
                          Text(
                            widget.languagePrograming.name,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 32,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              const SizedBox(width: 8.0),
                              Text(
                                widget.languagePrograming.year,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16.0),
                          Text(
                            widget.languagePrograming.description,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      )),
                      const BookmarkButton(),
                    ],
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
