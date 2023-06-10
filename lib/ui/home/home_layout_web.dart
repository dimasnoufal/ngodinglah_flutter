import 'package:flutter/material.dart';
import 'package:ngodinglah_flutter/data/data_dummy.dart';
import 'package:ngodinglah_flutter/ui/detail/detail_activity.dart';

class WebLanguageList extends StatelessWidget {
  final int gridCount;
  final double padHorizontal;
  final double padVertical;

  const WebLanguageList({
    Key? key,
    required this.gridCount,
    required this.padHorizontal,
    required this.padVertical,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: padHorizontal, vertical: padVertical),
      child: GridView.count(
        crossAxisCount: gridCount,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        children: listOfLanguage.map((language) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailActivity(
                  languagePrograming: language,
                );
              }));
            },
            child: Expanded(
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                            child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(
                            language.img,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        )),
                        const SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Expanded(
                            child: Text(
                              language.name,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(height: 2),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    language.year,
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
