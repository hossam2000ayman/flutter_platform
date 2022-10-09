import 'package:json_annotation/json_annotation.dart';

part 'game_log.g.dart';

@JsonSerializable()
class Gamelog {
  Gamelog(
      this.date,
      this.opp,
      this.min,
      this.pts,
      this.fg,
      this.threeFg,
      this.ft,
      this.offReb,
      this.defReb,
      this.reb,
      this.ast,
      this.stl,
      this.blk,
      this.pf,
      this.to,
      this.plusMinus);
  String date;
  String opp;
  String min;
  String pts;
  String fg;
  String threeFg;
  String ft;
  String offReb;
  String defReb;
  String reb;
  String ast;
  String stl;
  String blk;
  String pf;
  String to;
  String plusMinus;

  factory Gamelog.fromJson(Map<String, dynamic> data) =>
      _$GamelogFromJson(data);

  Map<String, dynamic> toJson() => _$GamelogToJson(this);
}
