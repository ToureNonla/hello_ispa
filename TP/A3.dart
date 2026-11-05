int prixTrajet(int km, {bool pointe = false, bool etudiant = false}) {
  double base = 200 + (50 * km.toDouble());
  
  if (pointe) {
    base *= 1.25;
  }
  if (etudiant) {
    base *= 0.8;
  }
  
  return base.round();
}

void main() {
  print(prixTrajet(5));
  print(prixTrajet(5, pointe: true));
  print(prixTrajet(5, pointe: true, etudiant: true));
}