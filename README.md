# hello_ispa

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Partie B — Exploration du projet

* **lib/main.dart** : Contient le code source principal en Dart et le point d'entrée (`main()`) de l'application.
* **pubspec.yaml** : Fichier de configuration du projet servant à gérer les dépendances, packages, assets et métadonnées.
* **android/** : Contient les fichiers de configuration et le code natif spécifique à la plateforme Android.
* **test/** : Contient les tests unitaires et les tests de widgets pour vérifier le bon fonctionnement du code.
* **.gitignore** : Liste les fichiers et dossiers à ignorer par Git (comme les fichiers temporaires de build) pour ne pas les envoyer sur GitHub.

## Questions de compréhension

1. **Pourquoi le compteur garde-t-il sa valeur après un hot reload, mais pas après un hot restart ?**
   Le *hot reload* injecte le nouveau code dans la machine virtuelle Dart en cours d'exécution tout en préservant l'état actuel de l'application (donc la valeur du compteur). En revanche, le *hot restart* redémarre complètement l'application à zéro, ce qui réinitialise toutes les variables d'état.

2. **Pourquoi HelloIspaApp est-il un StatelessWidget alors que AccueilPage est un StatefulWidget ?**
   `HelloIspaApp` est la racine statique de l'application (elle configure juste le thème et l'orientation globale sans changer de valeur). `AccueilPage` gère un état dynamique (le compteur de personnes présentes qui s'incrémente), elle a donc besoin d'être un `StatefulWidget`.

3. **Que se passe-t-il si vous écrivez `_presents++` sans setState() ?**
   La valeur de la variable augmente en mémoire, mais l'interface graphique (UI) ne se met pas à jour car `setState()` sert précisément à notifier Flutter qu'il doit redessiner l'écran pour refléter les changements.