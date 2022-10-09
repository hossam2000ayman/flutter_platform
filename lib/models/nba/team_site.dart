class TeamSite {
  final String? playerCode;
  final String? posFull;
  final String? displayAffiliation;
  final String? freeAgentCode;
  TeamSite({
    this.playerCode,
    this.posFull,
    this.displayAffiliation,
    this.freeAgentCode,
  });
  factory TeamSite.fromJson(Map<String, dynamic> json) => TeamSite(
      playerCode: json["playerCode"],
      posFull: json["posFull"],
      displayAffiliation: json["displayAffiliation"],
      freeAgentCode: json["freeAgentCode"]);

  Map<String, dynamic> toJson() => {
        "playerCode": playerCode,
        "posFull": posFull,
        "displayAffiliation": displayAffiliation,
        "freeAgentCode": freeAgentCode,
      };
}
