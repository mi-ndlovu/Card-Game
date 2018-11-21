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

extension Array{
    // Element refer to whatever the type of the array's elements is
    var shuffle:[Element] {
        var elements = self
        var shuffled = [Element]();
        for _ in 0..<elements.count
        {
            // returns a random number between zero and the first parameter(type = UInt32), minus one.
            let rand = Int(arc4random_uniform(UInt32(elements.count)))
            shuffled.append(elements[rand])
            // remove the item that was added into shuffled array
            elements.remove(at: rand)
        }
        return shuffled
    }
}