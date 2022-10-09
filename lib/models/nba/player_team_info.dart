class PlayerTeamInfo {
  final String? teamId;
  final String? seasonStart;
  final String? seasonEnd;
  PlayerTeamInfo({
    this.teamId,
    this.seasonStart,
    this.seasonEnd,
  });
  factory PlayerTeamInfo.fromJson(Map<String, dynamic> json) => PlayerTeamInfo(
        teamId: json["teamId"],
        seasonStart: json["seasonStart"],
        seasonEnd: json["seasonEnd"],
      );
  Map<String, dynamic> toJson() => {
        "teamId": teamId,
        "seasonStart": seasonStart,
        "seasonEnd": seasonEnd,
      };
}
