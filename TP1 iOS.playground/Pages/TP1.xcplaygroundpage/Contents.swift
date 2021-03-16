import Foundation

/*:
# Exercice 1
Créez une constante de type `String` qui contient votre nom et affichez "Hello" suivi de votre nom dans la console.
*/
print("Exercice 1")

let nom : String = "Guillaume Marcelino"

print("Hello \(nom)")

/*:
# Exercice 2
Affichez "My name contains X characters" en remplaçant X par le nombre de caractères contenus dans la variable de l'exercice 1.
*/
print("Exercice 2")

let longueur : Int = nom.count

print("longueur du nom : \(longueur)")

/*:
# Exercice 3
Créez un tableau qui contient 3 strings, puis les afficher précédées de leur position dans le tableau.
Par exemple, si le tableau contient ["A", "B", "C"], affichez :
 1. A
 2. B
 3. C
*/
print("Exercice 3")

let ArrayString : Array<String> = ["A","B", "C"]

for (index, string) in ArrayString.enumerated() {
    print("\(index). \(string)")
}

/*:
# Exercice 4
Créez une fonction qui prend un nombre arbitraire d'entiers en paramètres et qui renvoie la somme de ses entiers.
*/
print("Exercice 4")

func calcul(elements: Int...)->Int{
    var somme : Int = 0
    for row in elements {
        somme += row
    }
    return somme
}

print(calcul(elements: 5,5,5,5,5,5,5))

/*:
# Exercice 5
Créez un tableau de `String` et triez-le par ordre alphabétique en utilisant la méthode `sorted`.
*/
print("Exercice 5")

let ArrayString2 : Array<String> = ["S","A","L","U","T"]

print(ArrayString2.sorted{(s1, s2)-> Bool in
    return s1 < s2
})

/*:
# Exercice 6
Utilisez la variable contenant votre nom de l'exercice 1 et retirez-y toutes les voyelles en utilisant la méthode `filter`.
*/
print("Exercice 6")

let vowels = ["A","E","I","O","U","Y","a","e","i","o","u","y",]

print(ArrayString2.filter({(element: String)->Bool in
    return !vowels.contains(element)
}))
/*:
# Exercice 7
 Créez une `enum` Greeting de type `String` qui comporte deux cas `hello` et `hi` dont leurs valeurs respectives sont "Hello" et "Hi".
 Puis faites une fonction qui prend un Greeting en paramètre et qui retourne la valeur correspondante.
*/
print("Exercice 7")

enum Greeting : String {
    case hello = "Hello"
    case hi = "Hi"
}

func sayHello(greeting: Greeting) -> String {
    return greeting.rawValue
}

print(sayHello(greeting: .hi))
print(sayHello(greeting: .hello))
/*:
# Exercice 8
 Créez une fonction qui prend un tableau d'entiers en paramètres, et qui renvoie le plus grand nombre du tableau, ou `nil` si le tableau est vide.
 Testez votre fonction avec un `if let`.
*/

// TODO

/*:
# Exercice 9
 Créez une fonction qui prend un mot en pramètre et qui détermine s’il est pluriel ou singulier (s'il fini par un s ou pas).
*/

// TODO

/*:
# Exercice 10
 Créez une fonction qui prend en paramètre une `string` et un entier `n` et qui répète n fois chaque caractère de la chaîne.
 Par exemple, si on donne "coucou" et n = 3, la fonction retourne "cccooouuucccooouuu".
*/

// TODO

/*:
# Exercice 11
 Un palindrome est un mot qui s’écrit de la même manière après l’inversion des lettres. ‘ada’ est un palindrome.
 Écrivez une fonction qui vérifie si la chaîne passée en paramètre est un palindrome.
*/

// TODO

/*:
# Exercice 12
 Créez une fonction pour calculer le déterminant d’une matrice 2 x 2 de nombres réels. Le déterminant de la matrice est: ad – bc.
 Trouvez avec quel type représenter une matrice.
*/

// TODO

/*:
# Exercice 13
 Créez une fonction qui prend un entier `n`  en paramètre représentant un nombre de secondes, et renvoyez le nombre d'heures, minutes et secondes que cela représente sous la forme d'une string `heures:minutes:secondes`.
 Exemple : si n = 5412, la fonction doit renvoyer "1:30:12".
*/

// TODO

/*:
# Exercice 14
 Un fermier vous demande de lui dire combien de pattes peuvent être comptées parmi tous ses animaux. Il y a trois espèces :

 - Poulets = 2 pattes
 - Vaches = 4 pattes
 - Chevaux = 4 pattes

 Créez une fonction qui prend en paramètre un tableau d'animaux (représentés par une `enum`) et qui renvoie le nombre total de pattes de tous les animaux.
*/

print("Exercice 14")

enum Animal : Int {
    case chicken
    case cow
    case horse
}

func feets(animals: Animal...) -> Int {
    var sum : Int  = 0
    for animal in animals {
        switch animal {
            case .chicken:
                sum += 2
            case .cow :
                sum += 4
            case .horse :
                sum += 4
        }
    }
    return sum
}

print(feets(animals: .horse, .chicken ,.cow))

/*:
# Exercice 15
 Créez une fonction qui prend un entier `n` en paramètre et qui affiche dans la console une pyramide de hauteur `n` formée avec des étoiles.
 Exemple, si n = 5, la pyramide affichée est :
 
 ```
      *
     ***
    *****
   *******
  *********
 ```
*/

// TODO


/*:
# Exercice 16
 Créez une fonction qui prend une phrase en paramètre et qui renvoie uniquement les mots de la phrases qui sont composés de caractères uniques.
 Exemple : si la phrase est "J'aime le chocolat", la fonction renvoie un tableau contenant 2 mots : "J'aime" et "le".
*/

// TODO

/*:
# Exercice 17
 Créez une fonction qui prend un entier `n` en paramètre et qui renvoie la suite de Fibonacci de longueur `n` dans un tableau.
 Pour rappel, la suite de Fibonacci commence par 0 et 1, les termes suivants sont les sommes des 2 précédents :
 0 1 1 2 3 5 8 13...
 Si n est négatif ou nul, retournez un tableau vide.
*/

// TODO

/*:
# Exercice 18
 Créez une fonction qui prend une phrase en paramètre et qui renvoie le nombre d'occurences de chaque mot dans la phrase sous la forme d'un dictionnaire.
 Exemple : si la phrase est "J'aime manger des pommes et manger des poires", la fonction renvoie un dictionnaire contenant :
 - J'aime : 1
 - manger : 2
 - des : 2
 - pommes : 1
 - et : 1
 - poires : 1
*/

// TODO

/*:
# Exercice 19
 Le but de cet exercice est de recréez la fonction standard `.filter()` pour filtrer un tableau d'entiers.
 Créez une fonction qui prend en paramètre un tableau d'entiers, et la closure utilisée pour le filtrage. La fonction doit appliquer la closure passée en paramètre sur le tableau d'entiers, et doit renvoyer les entiers filtrés.
 Bien évidemment, vous ne devez pas utiliser la méthode standard `.filter()`.
*/

// TODO

/*:
# Exercice 20
 Calculez les nombres premiers entre 0 et 100 sans jamais utiliser de boucles (for, while, repeat).
*/

// TODO
