

import 'package:app1/models/personne.dart';

class Enseignant extends Personne{
  final String matiere;
   
  Enseignant({required super.prenom,required super.nom,required super.matricule,required this.matiere});


  @override
  String getNom() {
    // TODO: implement getNom
    return this.nom;
  }

  @override
  String getPrenom() {
    // TODO: implement getPrenom
    return this.prenom;
  }
  
}