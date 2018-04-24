import Foundation

class Card : NSObject {
    var color: String = ""
    var value: Int = 0

    init(col: String, val: Int) {
        color = col
        value = val
    }

    override var description : String {
        return "This \(value) card is of \(color) color"
    }

    override func isEqual(_ anObject: Any?) -> Bool {
        let aCard = anObject as! Card

        return (aCard.color == color && aCard.value == value)
    }
}

extension Card {
    static func == (left: Card, right: Card) -> Bool {
        return (left.color == right.color && left.value == right.value)
    }
}
