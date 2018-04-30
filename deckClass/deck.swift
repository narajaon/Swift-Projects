import Foundation

func sortingToDeck(color: String, value: Int) -> Card {
    let output = Card(col: color, val: value)
    return output
}

class Deck : NSObject {
    var cards: [Card] = allCards
    var outs: [Card] = []

    init (isSorted: Bool) {
        if (!isSorted) {
            cards.shuffle()
        }
    }

    override var description : String {
        var totalCards: String = ""

        for elem in cards {
            totalCards = totalCards + " " + elem.color
        }
        return totalCards
    }

    func draw() -> Card? {
        if (cards.count == 0) {
            return nil
        }
        outs.append(cards[0])
        return cards[0] 
    }

    static let allSpades = Value.allValues.map{(value) -> Card in
        return Card(col: Color.Pique.rawValue, val: value.rawValue)
    } 

    static let allDiamonds = Value.allValues.map{(value) -> Card in
        return Card(col: Color.Carreau.rawValue, val: value.rawValue)
    } 

    static let allHearts = Value.allValues.map{(value) -> Card in
        return Card(col: Color.Coeur.rawValue, val: value.rawValue)
    } 

    static let allClubs = Value.allValues.map{(value) -> Card in
        return Card(col: Color.Treffle.rawValue, val: value.rawValue)
    } 

    static var allCards = allSpades + allDiamonds + allHearts + allClubs
}

extension Array {
    mutating func shuffle() {
        let arrSize: UInt32 = 52

        for _ in 0...arrSize {
            sort { (_, _) in
                arc4random_uniform(arrSize) < arc4random_uniform(arrSize)
            }
        }
    }
}

