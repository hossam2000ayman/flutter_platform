class PlayerDraftInfo {
  final String? teamId;
  final String? pickNum;
  final String? roundNum;
  final String? seasonYear;
  PlayerDraftInfo({
    this.teamId,
    this.pickNum,
    this.roundNum,
    this.seasonYear,
  });
  factory PlayerDraftInfo.fromJson(Map<String, dynamic> json) =>
      PlayerDraftInfo(
        teamId: json["teamId"],
        pickNum: json["pickNum"],
        roundNum: json["roundNum"],
        seasonYear: json["seasonYear"],
      );

  Map<String, dynamic> toJson() => {
        "teamId": teamId,
        "pickNum": pickNum,
        "roundNum": roundNum,
        "seasonYear": seasonYear,
      };
}
