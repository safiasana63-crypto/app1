import 'dart:vmservice_io';

import 'package:app1/models/enseignant.dart';
import 'package:app1/models/etudiant.dart';
import 'package:app1/services/api_services.dart';
Future<void> main() async {
  print("Salut le monde !");

  // Etudiant e= Etudiant("Safia", "Sana", 1018, 17.05);

  Etudiant e= Etudiant (
    nom: "ODG",
    prenom: "Rayan",
    note: 18.30, 
    matricule: 1802 
  );

 print(e.prenom);
 print(e.nom);
 print(e.matricule);
 print(e.moyenne);
 
 print("-" * 100);

 print("${e.prenom} ${e.nom} ${e.matricule}");

 const annee = 2026;
 print("L'année est : $annee");

 print("-" * 100);

 e.moyenne = 18.30;
 print(e.moyenne);

 print(e.toString());

 print("-" * 100);

 print(e);

 Map<String, dynamic> etudiant = {
   "prenom" : "Ab Khalid",
   "nom" : "DAMA",
   "matricule" : 8089,
   "note" : 18.40,
   "moyenne" : 17,
  };

 print("-" * 100);
 print("Affichage du map");

 print(etudiant["prenom"]);
 print(etudiant["nom"]);
 print(etudiant["matricule"]);
 print(etudiant["note"]);
 print(etudiant["moyenne"]);

 Etudiant e2 = Etudiant(
   matricule: etudiant["matricule"],
   prenom: etudiant["prenom"],
   nom: etudiant["nom"],
   note: etudiant["note"],
  ); 

 print("*" * 50);
 print("Affichage FROM Map"); 

 Etudiant e3 = Etudiant.fromMap(etudiant);

 e3.moyenne = 16;

 print(e3.toString());

 List<Map<String, dynamic>> etudiants = [
    {"prenom" : "Sarah",
     "nom" : "Barry",
     "matricule" :2608,
     "note" : 19.40,
     "moyenne" : 18,
    },

    { "prenom" : "Sudais",
      "nom" : "Toure",
      "matricule" : 9608,
      "note" : 14.40,
      "moyenne" : 15,
    },

   ];

  print("|" * 100);

  print("UTILISATION DE FOREACH");

  etudiants.forEach((e){
    print(Etudiant.fromMap(e).toString()); 
  });
    
  print("|" * 100);
    
  print("UTILISATION DE FOR IN");

  var resultat;

  for (var e in etudiants) {
    print(Etudiant.fromMap(e).toString());
  }

  final result = await ApiServices.getData("https://jsonplaceholder.typicode.com/users");
   List <Map<String,dynamic>> value=List <Map<String,dynamic>>.from(result);
   print("|-" * 100);
   for(var e in value){
    print("${e['name']} ${e['username']} ${e['email']}");
   }

   Enseignant en= Enseignant(matiere: "IA",prenom: "Moustapha",nom: "Der",matricule:3900);

   print("|-" * 100);
   print("${en.matricule} ${en.nom} ${en.prenom} ${en.matiere}");
}







