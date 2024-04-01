
// 1- Créez un tableau en swift représentant ces mots

    print("+++ Créez un tableau en swift représentant ces mots +++")
    var mots = ["bateau", "voiture", "vélo", "avion", "bus", "train", "motso"]
    print(mots)


// 2- Affichez les motss se trouvant aux indices 2, 3 et 20
    print("\n +++ mot à l'indice 2 +++")
    print(mots[2])

    print("\n +++ mot à l'indice 3 +++")
    print(mots[3])


// NB : il y aura une erreur car l'indice 20 n'existe pas dans mon tableau
    print("\n +++ mot à l'indice 20, il y aura une erreur car l'indice 20 n'existe pas dans mon tableau +++")
    // print(mots[20])

// 3- Affichez tous les mots de la liste sous la forme Moyen de transport numéro [i] est [mots]
    print("\n +++ les mots de la liste sous la forme Moyen de transport numéro [i] est [mots] +++")
    for index in 0..<mots.count {
        print("Moyen de transport numéro \(index) est \(mots[index])")    
    }

// 4- Trouvez et affichez les motss aux indices impairs puis pairs
    print("\n +++ les motss aux indices impairs +++")
    for index in 0..<mots.count {
        if index%2 != 0 {
            print("Moyen de transport numéro \(index) est \(mots[index])")   
        }    
    }

    print("\n +++ les motss aux indices pairs +++")
    for index in 0..<mots.count {
        if index%2 == 0 {
            print("Moyen de transport numéro \(index) est \(mots[index])")   
        }    
    }

// 5- Inversez l’ordre du tableau puis stockez le résultat dans un nouveau tableau
    print("\n +++ tableau inversé +++")
    var motsInverse = Array(mots.reversed())
    print(motsInverse)

// 6- 
    print("\n +++ camion en tête de liste +++")
    mots.insert("camion", at: 0)
    print(mots)  
    print("\n +++ taxi en tête de liste +++")
    mots.insert("taxi", at: 0)
    print(mots)  


    print("\n +++ camion en fin de liste +++")
    mots.append("camion")
    print(mots)  
    print("\n +++ taxi en fin de liste +++")
    mots.append("taxi")
    print(mots)  

    print("\n +++ partir de indice 2 +++")
    mots.insert(contentsOf: ["camion", "taxi"], at: 2)
    print(mots)  
