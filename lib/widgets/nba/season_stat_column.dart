import 'package:flutter/cupertino.dart';

class NBASeasonStatColumn extends StatelessWidget {
  const NBASeasonStatColumn(this.header, this.data, {Key? key})
      : super(key: key);

  final String header;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
              child: Text(header,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Color.fromRGBO(0, 0, 0, 0.5)))),
          Text(data,
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Color.fromRGBO(0, 0, 0, 0.5)))
        ]));
  }
}
