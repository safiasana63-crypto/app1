abstract class Personne{
  final String prenom;
  final String nom;
  final int matricule;
  Personne( {required this.prenom,required this.nom,required this.matricule});

  String getPrenom();
  String getNom();
    
}