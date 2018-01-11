import SpriteKit

class Car: SKSpriteNode {
    var engineSize: Int = 0
    
    init() {
        super.init(texture: nil, color: .blue, size: CGSize(width: 100, height: 100))
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

//import SpriteKit
//
//class Car: SKSpriteNode {
//    var engineSize: Int = 0
//    
//    init() {
//        super.init(texture: nil, color: .blue, size: CGSize(width: 100, height: 100))
//    }
//    
//    required convenience public init(coder decoder: NSCoder) {
//        self.init()
//        
//        if let engineSize = decoder.decodeObject(forKey: "engineSize") as? Int {
//            self.engineSize = engineSize
//        }
//    }
//    
//    func encodeWithCoder(coder : NSCoder) {
//        coder.encode(self.engineSize, forKey: "engineSize")
//    }
//}

