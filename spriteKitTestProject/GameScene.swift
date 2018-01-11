import SpriteKit

class GameScene: SKScene {
    let defaults = UserDefaults.standard
    var carArray = [Car]()
    
    override func didMove(to view: SKView) {
        for _ in 1...3 {
            let car = Car()
            car.engineSize = 2000
            carArray.append(car)
        }
        
        defaults.set(NSKeyedArchiver.archivedData(withRootObject: carArray), forKey: "carArrayKey")
        
        let arrayData = defaults.data(forKey: "carArrayKey")
        carArray = NSKeyedUnarchiver.unarchiveObject(with: arrayData!) as! [Car]
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for c in carArray {
            print("Car's engine size is \(c.engineSize)")
        }
    }
}
