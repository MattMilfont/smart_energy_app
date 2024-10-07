class BoxModel {
  String? codBox;
  List<EnergiaPorMes>? energiaPorMes;
  double? energiaTotalKwh;
  double? totalTimeHours;

  BoxModel({
    this.codBox,
    this.energiaPorMes,
    this.energiaTotalKwh,
    this.totalTimeHours,
  });

  BoxModel.fromJson(Map<String, dynamic> json) {
    codBox = json['cod_box'];
    if (json['energia_por_mes'] != null) {
      energiaPorMes = <EnergiaPorMes>[];
      json['energia_por_mes'].forEach((v) {
        energiaPorMes!.add(EnergiaPorMes.fromJson(v));
      });
    }
    energiaTotalKwh = json['energia_total_kwh'];
    totalTimeHours = json['total_time_hours'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cod_box'] = codBox;
    if (energiaPorMes != null) {
      data['energia_por_mes'] =
          energiaPorMes!.map((v) => v.toJson()).toList();
    }
    data['energia_total_kwh'] = energiaTotalKwh;
    data['total_time_hours'] = totalTimeHours;
    return data;
  }
}

class EnergiaPorMes {
  int? ano;
  int? mes;
  double? energiaKwh;

  EnergiaPorMes({this.ano, this.mes, this.energiaKwh});

  EnergiaPorMes.fromJson(Map<String, dynamic> json) {
    ano = json['ano'];
    mes = json['mes'];
    energiaKwh = json['energia_kwh'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ano'] = ano;
    data['mes'] = mes;
    data['energia_kwh'] = energiaKwh;
    return data;
  }
}
