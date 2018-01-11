import SpriteKit

class Car: SKSpriteNode {
    var engineSize: Int = 0
    
    init() {
        super.init(texture: nil, color: .blue, size: CGSize(width: 100, height: 100))
    }
    
    required init(coder aDecoder: NSCoder) {
        engineSize = aDecoder.decodeInteger(forKey: "engineSize")
        super.init(texture: nil, color: .blue, size: CGSize(width: 100, height: 100))
    }
    
    override func encode(with aCoder: NSCoder) {
        aCoder.encode(engineSize, forKey: "engineSize")
    }
}
