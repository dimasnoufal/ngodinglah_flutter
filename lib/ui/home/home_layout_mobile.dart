import 'package:flutter/material.dart';
import 'package:ngodinglah_flutter/data/data_dummy.dart';
import 'package:ngodinglah_flutter/ui/detail/detail_activity.dart';

class MobileLanguageList extends StatelessWidget {
  final int gridCount;
  final double costumPadding;

  const MobileLanguageList(
      {Key? key, required this.gridCount, required this.costumPadding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(costumPadding),
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
                            flex: 5,
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
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: SizedBox(
                            height: 36,
                            child: Text(
                              language.name,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
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
