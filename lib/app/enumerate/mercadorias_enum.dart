enum MercadoriasEnum {
  Alface,
  Batata,
  Brocolis,
  Cenoura,
  Couve,
  CouveFlor,
  Gengibre,
  Salsa,
  Tomate,
  Outro
}

extension MercadoriasEnumExtension on MercadoriasEnum {
  String get name {
    switch (this) {
      case MercadoriasEnum.Alface:
        return 'Alface';
      case MercadoriasEnum.Batata:
        return 'Batata';
      case MercadoriasEnum.Brocolis:
        return 'Brocolis';
      case MercadoriasEnum.Cenoura:
        return 'Cenoura';
      case MercadoriasEnum.Couve:
        return 'Couve';
      case MercadoriasEnum.CouveFlor:
        return 'Couve-Flor';
      case MercadoriasEnum.Gengibre:
        return 'Gengibre';
      case MercadoriasEnum.Salsa:
        return 'Salsa';
      case MercadoriasEnum.Tomate:
        return 'Tomate';
      case MercadoriasEnum.Outro:
        return '';
    }
  }

  String get pathAsset {
    switch (this) {
      case MercadoriasEnum.Alface:
        return 'assets/icons/alface.png';
      case MercadoriasEnum.Batata:
        return 'assets/icons/batata.png';
      case MercadoriasEnum.Brocolis:
        return 'assets/icons/brocolis.png';
      case MercadoriasEnum.Cenoura:
        return 'assets/icons/cenoura.png';
      case MercadoriasEnum.Couve:
        return 'assets/icons/couve.png';
      case MercadoriasEnum.CouveFlor:
        return 'assets/icons/couveflor.png';
      case MercadoriasEnum.Gengibre:
        return 'assets/icons/gengibre.png';
      case MercadoriasEnum.Salsa:
        return 'assets/icons/salsa.png';
      case MercadoriasEnum.Tomate:
        return 'assets/icons/tomate.png';
      case MercadoriasEnum.Outro:
        return '';
    }
  }
}
