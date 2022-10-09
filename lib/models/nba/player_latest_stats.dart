class PlayerLatestStats {
  final int? seasonYear;
  final int? seasonStageId;
  final String? ppg;
  final String? rpg;
  final String? apg;
  final String? mpg;
  final String? topg;
  final String? spg;
  final String? bpg;
  final String? tpp;
  final String? ftp;
  final String? fgp;
  final String? assists;
  final String? blocks;
  final String? steals;
  final String? turnovers;
  final String? offReb;
  final String? defReb;
  final String? totReb;
  final String? fgm;
  final String? fga;
  final String? tpm;
  final String? tpa;
  final String? ftm;
  final String? fta;
  final String? pFouls;
  final String? points;
  final String? gamesPlayed;
  final String? gamesStarted;
  final String? plusMinus;
  final String? min;
  final String? dd2;
  final String? td3;
  PlayerLatestStats({
    this.seasonYear,
    this.seasonStageId,
    this.ppg,
    this.rpg,
    this.apg,
    this.mpg,
    this.topg,
    this.spg,
    this.bpg,
    this.tpp,
    this.ftp,
    this.fgp,
    this.assists,
    this.blocks,
    this.steals,
    this.turnovers,
    this.offReb,
    this.defReb,
    this.totReb,
    this.fgm,
    this.fga,
    this.tpm,
    this.tpa,
    this.ftm,
    this.fta,
    this.pFouls,
    this.points,
    this.gamesPlayed,
    this.gamesStarted,
    this.plusMinus,
    this.min,
    this.dd2,
    this.td3,
  });
  factory PlayerLatestStats.fromJson(Map<String, dynamic> json) =>
      PlayerLatestStats(
        seasonYear: json["seasonYear"],
        seasonStageId: json["seasonStageId"],
        ppg: json["ppg"],
        rpg: json["rpg"],
        apg: json["apg"],
        mpg: json["mpg"],
        topg: json["topg"],
        spg: json["spg"],
        bpg: json["bpg"],
        tpp: json["tpp"],
        ftp: json["ftp"],
        fgp: json["fgp"],
        assists: json["assists"],
        blocks: json["blocks"],
        steals: json["steals"],
        turnovers: json["turnovers"],
        offReb: json["offReb"],
        defReb: json["defReb"],
        totReb: json["totReb"],
        fgm: json["fgm"],
        fga: json["fga"],
        tpm: json["tpm"],
        tpa: json["tpa"],
        ftm: json["ftm"],
        fta: json["fta"],
        pFouls: json["pFouls"],
        points: json["points"],
        gamesPlayed: json["gamesPlayed"],
        gamesStarted: json["gamesStarted"],
        plusMinus: json["plusMinus"],
        min: json["min"],
        dd2: json["dd2"],
        td3: json["td3"],
      );

  Map<String, dynamic> toJson() => {
        "seasonYear": seasonYear,
        "seasonStageId": seasonStageId,
        "ppg": ppg,
        "rpg": rpg,
        "apg": apg,
        "mpg": mpg,
        "topg": topg,
        "spg": spg,
        "bpg": bpg,
        "tpp": tpp,
        "ftp": ftp,
        "fgp": fgp,
        "assists": assists,
        "blocks": blocks,
        "steals": steals,
        "turnovers": turnovers,
        "offReb": offReb,
        "defReb": defReb,
        "totReb": totReb,
        "fgm": fgm,
        "fga": fga,
        "tpm": tpm,
        "tpa": tpa,
        "ftm": ftm,
        "fta": fta,
        "pFouls": pFouls,
        "points": points,
        "gamesPlayed": gamesPlayed,
        "gamesStarted": gamesStarted,
        "plusMinus": plusMinus,
        "min": min,
        "dd2": dd2,
        "td3": td3,
      };
}
