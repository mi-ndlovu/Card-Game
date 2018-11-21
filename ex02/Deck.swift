import Foundation

class Deck : NSObject {
    static let allSpades    : [Card] = createArray(Color.spade)
    static let allHearts    : [Card] = createArray(Color.heart)
    static let allClubs     : [Card] = createArray(Color.club)
    static let allDiamonds  : [Card] = createArray(Color.diamond)
    static let allCard      : [Card] = allSpades + allHearts + allClubs + allDiamonds
    
    static func createArray(_ color: Color) -> [Card] 
    {
        var someArray = [Card]()
        for cardValue in Value.allValues {
            someArray.append(Card(color, cardValue))
        }
        return someArray
    }
    
}
