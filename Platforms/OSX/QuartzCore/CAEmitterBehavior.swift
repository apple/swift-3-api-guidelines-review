
class CAEmitterBehavior : NSObject, NSCoding {
  class func behaviorTypes() -> [String]
  init(type type: String)
  var type: String { get }
  var name: String?
  var isEnabled: Bool
  func inputKeys() -> [AnyObject]
  class func attributes(forKey key: String) -> [NSObject : AnyObject]
  func attributes(forKeyPath keyPath: String) -> [NSObject : AnyObject]
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
let kCAEmitterBehaviorWave: String
let kCAEmitterBehaviorDrag: String
let kCAEmitterBehaviorAlignToMotion: String
let kCAEmitterBehaviorValueOverLife: String
let kCAEmitterBehaviorColorOverLife: String
let kCAEmitterBehaviorLight: String
let kCAEmitterBehaviorAttractor: String
