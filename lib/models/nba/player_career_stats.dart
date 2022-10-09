class PlayerCareerStats {
  final String tpp;
  final String ftp;
  final String fgp;
  final String ppg;
  final String rpg;
  final String apg;
  final String bpg;
  final String mpg;
  final String spg;
  final String assists;
  final String blocks;
  final String steals;
  final String turnovers;
  final String offReb;
  final String defReb;
  final String totReb;
  final String fgm;
  final String fga;
  final String tpm;
  final String tpa;
  final String ftm;
  final String fta;
  final String pFouls;
  final String points;
  final String gamesPlayed;
  final String gamesStarted;
  final String plusMinus;
  final String min;
  final String dd2;
  final String td3;
  PlayerCareerStats({
    required this.tpp,
    required this.ftp,
    required this.fgp,
    required this.ppg,
    required this.rpg,
    required this.apg,
    required this.bpg,
    required this.mpg,
    required this.spg,
    required this.assists,
    required this.blocks,
    required this.steals,
    required this.turnovers,
    required this.offReb,
    required this.defReb,
    required this.totReb,
    required this.fgm,
    required this.fga,
    required this.tpm,
    required this.tpa,
    required this.ftm,
    required this.fta,
    required this.pFouls,
    required this.points,
    required this.gamesPlayed,
    required this.gamesStarted,
    required this.plusMinus,
    required this.min,
    required this.dd2,
    required this.td3,
  });
  factory PlayerCareerStats.fromJson(Map<String, dynamic> json) =>
      PlayerCareerStats(
        tpp: json["tpp"],
        ftp: json["ftp"],
        fgp: json["fgp"],
        ppg: json["ppg"],
        rpg: json["rpg"],
        apg: json["apg"],
        bpg: json["bpg"],
        mpg: json["mpg"],
        spg: json["spg"],
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
        "tpp": tpp,
        "ftp": ftp,
        "fgp": fgp,
        "ppg": ppg,
        "rpg": rpg,
        "apg": apg,
        "bpg": bpg,
        "mpg": mpg,
        "spg": spg,
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
