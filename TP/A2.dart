void main() {
  String? telephone;

  print(telephone ?? 'Non renseigné');

  print(telephone?.length);

  telephone = '0700000001';

  print(telephone.length);
}