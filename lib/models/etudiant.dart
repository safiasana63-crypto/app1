class Etudiant{
  // late String prenom;
  // late String nom;
  // late int matricule;
 // late double _moyenne; // private : _

// final String prenom;
// final String nom;
// final int matricule;

String prenom;
String nom;
int matricule;
double _moyenne = 0;
double note;

//Constructeur argument positionnel
//Etudiant(this.prenom, this.nom, this.matricule, this._moyenne);

//Constructeur argument nommé
Etudiant({
  required this.prenom,
  required this.nom,
  required this.matricule,
  required this.note,
}
);

// double get moyenne => _moyenne;
double get moyenne{
  return _moyenne;
}

set moyenne (double x){
 if(x >= 0 && x <= 20) {
  _moyenne = x;
}else{
  print("la moyenne doit être entre 0 et 20");
}
}

@override
  String toString() {
    // TODO: implement toString
    return "Matricule: $matricule $prenom $nom a une moyenne de $_moyenne";

    }
  
  static Etudiant fromMap(Map<String, dynamic>et){
    return Etudiant(
      prenom: et["prenom"],
      nom: et["nom"],
      matricule: et["matricule"],
      note: et["note"],
    );
  }


}