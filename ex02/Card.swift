import Foundation

class Card : NSObject {
    var color: Color
    var value: Value
    
    init(_ color: Color,_ value: Value) {
        self.color = color
        self.value = value
    }
    
    override var description: String {
        return "\(self.color) of \(self.value)"
    }
    
    override func isEqual(_ object: Any?) -> Bool {
        // downcast an object into a Card
        if let obj = object as? Card{
            return (obj.color == self.color && obj.value == self.value)
        }
        return false
    }
    
    static func ==(lsh: Card, rsh: Card) -> Bool {
        // check whether a value and color are equal
        return (lsh.color == rsh.color && lsh.value == rsh.value)
    }
    
}
