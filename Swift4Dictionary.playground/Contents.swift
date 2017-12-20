let autoParts = Dictionary(uniqueKeysWithValues: zip(1..., ["Exhaust", "Air filter", "Turbine", "Intercooler"]))
let teamPoints = [("Barcelona", 45), ("Atletico", 44), ("Real", 41)]
let playoff = Dictionary(uniqueKeysWithValues: teamPoints)

let players = [("Barcelona", "Messi"),("Barcelona", "Iniesta"),("Barcelona", "Pique"),("Real", "Ronaldo"),("Real", "Bale"),("Atletico", "Torres")]

let teams = Dictionary(players.map {($0.0, [$0.1])}, uniquingKeysWith: {(current, new) in
    return current + new
})

print(teams)

let defaultValues : [String : Double] = ["age": 18, "height": 20.4]
var userValues : [String : Double] = ["age": 21]

userValues.merge(defaultValues) { (user, _) -> Double in
    user
}


var teamScores : [String : Int] = [:]
teamScores["Barcelona" , default: 0]

let oddParts = autoParts.filter { (part) -> Bool in
   return part.key % 2 == 0
}

let set = [ "a", "b", "c", "d"]
let oddSet = set.filter {
    $0.hashValue % 2 == 0
    
}

let reversedOddParts = oddParts.mapValues {
    print(String($0.reversed()))
}

let partsNames = autoParts.values
let partsList  = Dictionary(grouping: autoParts.values) {
    $0.prefix(1)
}


struct Player {
    let name: String
    let team: String
}

let nameKeypath = \Player.name
let base = players.map {
     Player(name: String($0.1), team: String($0.0))
    }
let contactList = Dictionary(grouping: base){
    $0[keyPath: nameKeypath].prefix(1)
}
print(contactList)

extension Collection {
    subscript<Indices: Sequence>(indices: Indices) -> [Element] where Indices.Element == Index {
        var result: [Element] = []
        for index in indices {
            result.append(self[index])
        }
        return result
    }
}

let story = "Messi will not sign a new contract for Barcelona".split(separator: " ")
story[[0,2,3,6]]

