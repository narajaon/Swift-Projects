print("------------values---------------")
for value in Value.allValues {
    print(value.rawValue)
}

print("------------colors---------------")
for color in Color.allColors {
    print(color.rawValue)
}

print("-----------enum test-------------")
print("Coeur :", Color.Coeur)
print("King :", Value.king)

print("-----------class test-------------")
var cardClass1 = Card(col: "RED", val: 1)
var cardClass2 = Card(col: "RED", val: 1)
print(cardClass1 == cardClass2, "-> Should be true")

cardClass1 = Card(col: "RED", val: 1)
cardClass2 = Card(col: "GREEN", val: 1)
print(cardClass1 == cardClass2, "-> Should be false")

cardClass1 = Card(col: "RED", val: 1)
cardClass2 = Card(col: "RED", val: 1)
print(cardClass1.isEqual(cardClass2), "-> Should be true")
print(cardClass1.description)

print("-----------Shuffling test-------------")
var deckClass = Deck.allCards
deckClass.shuffle()
print(deckClass[0])
print(deckClass[1])
print(deckClass[2])

print("-----------Deck extension-------------")
var deckTest = Deck(isSorted: true)
var drawResult = deckTest.draw()
print(deckTest.outs)
print(deckClass[1].description)
