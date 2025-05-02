# 💻 Calculatrice COBOL

Un petit programme **COBOL** qui simule une calculatrice simple en ligne de commande. Il permet d'effectuer des opérations de base entre deux nombres : **addition, soustraction, multiplication et division**.

---

## 📄 Fonctionnalités

- Saisie du premier et du deuxième nombre (valeurs décimales autorisées).
- Choix de l'opération à effectuer : `+`, `-`, `*`, `/`.
- Vérification que le deuxième nombre n'est pas zéro pour éviter la division par zéro.
- Affichage du résultat.
- Possibilité de relancer une opération ou de quitter.

---

## ▶️ Exécution du programme

### Prérequis :
- Un compilateur COBOL (comme **GnuCOBOL**)

### Compilation :
```bash
cobc -x -o calculatrice calculatrice.cob
