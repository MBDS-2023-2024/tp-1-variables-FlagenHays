// Modélisation des personnes sous forme de dictionnaires
let personne1: [String: Any] = ["nom": "Pierre", "sexe": "M", "annee_naissance": 2010]
let personne2: [String: Any] = ["nom": "Michelle", "sexe": "F", "annee_naissance": 2008]
let personne3: [String: Any] = ["nom": "Estelle", "sexe": "F", "annee_naissance": 2005]
let personne4: [String: Any] = ["nom": "Quentin", "sexe": "M", "annee_naissance": 2010]
let personne5: [String: Any] = ["nom": "Francois", "sexe": "M", "annee_naissance": 1980]
let personne6: [String: Any] = ["nom": "Cristelle", "sexe": "F", "annee_naissance": 1995]

// Création de la liste de dictionnaires contenant ces personnes
var listePersonnes = [personne1, personne2, personne3, personne4, personne5, personne6]

// Affichage du nom de toutes les personnes avec leur année de naissance
for personne in listePersonnes {
    let nom = personne["nom"] as! String
    let sexe = personne["sexe"] as! String
    let anneeNaissance = personne["annee_naissance"] as! Int
    let genre = (sexe == "M") ? "est né" : "est née"
    print("\(nom) \(genre) en \(anneeNaissance)")
}

// Affichage des noms de toutes les personnes majeures
let anneeActuelle = 2024
print("\n +++ Noms des personnes majeures +++")
for personne in listePersonnes {
    let nom = personne["nom"] as! String
    let anneeNaissance = personne["annee_naissance"] as! Int
    if (anneeActuelle - anneeNaissance) >= 18 {
        print(nom)
    }
}

// Affichage des filles puis des garçons
print("\n +++ Filles +++")
for personne in listePersonnes {
    let nom = personne["nom"] as! String
    let sexe = personne["sexe"] as! String
    if sexe == "F" {
        print(nom)
    }
}

print("\n +++ Garçons +++")
for personne in listePersonnes {
    let nom = personne["nom"] as! String
    let sexe = personne["sexe"] as! String
    if sexe == "M" {
        print(nom)
    }
}

// Ajout d'une nouvelle personne dans la liste
let nouvellePersonne: [String: Any] = ["nom": "Nicanor", "sexe": "M", "annee_naissance": 2002]
listePersonnes.append(nouvellePersonne)

// Affichage de la liste mise à jour
print("\n +++ Liste de personnes mise à jour +++")
print(listePersonnes)
