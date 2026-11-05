class Commande {
  final String produit;
  final int quantite;
  final double prixUnitaire;

  Commande({
    required this.produit,
    required this.quantite,
    required this.prixUnitaire,
  });

  double get total => quantite * prixUnitaire;

  @override
  String toString() {
    return '$produit ($quantite x $prixUnitaire F) = $total F';
  }
}

void main() {
  final commandes = [
    Commande(produit: 'Attiéké', quantite: 2, prixUnitaire: 500),
    Commande(produit: 'Poisson braisé', quantite: 1, prixUnitaire: 2000),
    Commande(produit: 'Alloco', quantite: 3, prixUnitaire: 300),
  ];

  for (var c in commandes) {
    print(c);
  }

  double totalGeneral = commandes.fold(0.0, (sum, c) => sum + c.total);
  print('Total général : $totalGeneral F');
}