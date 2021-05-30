enum TipoVendaEnum { Unidade, Quilo, Maco, Pe, Porcao }

extension TipoVendaEnumExtension on TipoVendaEnum {
  String get name {
    switch (this) {
      case TipoVendaEnum.Unidade:
        return 'Unidade';
      case TipoVendaEnum.Quilo:
        return 'Kg';
      case TipoVendaEnum.Maco:
        return 'Maço';
      case TipoVendaEnum.Pe:
        return 'Pé';
      case TipoVendaEnum.Porcao:
        return 'Porção';
    }
  }
}
