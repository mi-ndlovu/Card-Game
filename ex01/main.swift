// create a card
let card1 : Card = Card(Color.club, Value.ace)
let card2 : Card = Card(Color.diamond, Value.six)
let card3 : Card = Card(Color.club, Value.ace)
let card4 : Card = Card(Color.heart, Value.jack)

print("::::::::::::: cards ::::::::::::")
print("::   \(card1)")
print("::   \(card2)")
print("::   \(card3)")
print("::   \(card4)")

print("::::::::: test isEqual() :::::::")
print(card1.isEqual(card2))
print(card1.isEqual(card3))
print(card2.isEqual(card3))
print(card4.isEqual(card4))

print(":::::::::: test == :::::::::::::")
print(card1 == card2)
print(card1 == card3)
print(card4 == card3)
print(card2 == card2)