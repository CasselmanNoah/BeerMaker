class CalculBeerMaker {
//Attributs
  double mcu = 0;
  double ebc = 0;
  double srm = 0;
  double L = 0;
  double poidsEnKG = 0;
  double kg = 0;
  double eauDeBrassage = 0;
  double volumeBiere = 0;
  double degreAlcool = 0;
  double grain = 0;
  double qteLevure = 0;

  void setMcu(double mCu) {
    this.mcu = mCu;
  }

  void setEbc(double eBc) {
    this.ebc = eBc;
  }

  void setSrm(double sRm) {
    this.srm = sRm;
  }

  void setPenKg(double poidsenkilo) {
    this.poidsEnKG = poidsenkilo;
  }

  void setGrain(double grain) {
    this.grain = grain;
  }

  void setDegre(double degre) {
    this.degreAlcool = degre;
  }

  void setQteLevure(double levure) {
    this.qteLevure = levure;
  }

  double getMcu() {
    return this.mcu;
  }

  double getEbc() {
    return ebc;
  }

  double getSrm() {
    return srm;
  }

  double getPenKg() {
    return poidsEnKG;
  }

  double getGrain() {
    return grain;
  }

  double getDegre() {
    return degreAlcool;
  }

  double getQteLevure() {
    return qteLevure;
  }

/* CALCULS
(Volume de bière désiré en L * degré d’alcool recherché ) / 20 = Malt en kg

Quantité de malt en kg * 2,8 = Quantité d’eau de brassage en L

(Volume de bière désiré en L *1,25) - (Eau de brassage en L *0,7 ) = Eau de rinçage en L

MCU = [4,23 * Σ ( EBC(grain) * poidsEnKg (grain) ) ] / le volume de bière désiré en L

EBC = 2,9396 * (MCU^0,6859)

SRM = 0,508 * EBC

EBC = 1,97 * SRM

Houblon amérisant = Volume de bière à houblonner en L * 3g
Houblon aromatique = Volume de bière à houblonner en L * 1g

Volume de bière désiré en L / 2 = quantité de levure en g

*/
}
