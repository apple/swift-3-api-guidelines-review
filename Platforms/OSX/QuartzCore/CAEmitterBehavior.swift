
class CAEmitterBehavior : Object, Coding {
  class func behaviorTypes() -> [String]
  init(type: String)
  var type: String { get }
  var name: String?
  var isEnabled: Bool
  func inputKeys() -> [AnyObject]
  class func attributes(forKey key: String) -> [Object : AnyObject]
  func attributes(forKeyPath keyPath: String) -> [Object : AnyObject]
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
let kCAEmitterBehaviorWave: String
let kCAEmitterBehaviorDrag: String
let kCAEmitterBehaviorAlignToMotion: String
let kCAEmitterBehaviorValueOverLife: String
let kCAEmitterBehaviorColorOverLife: String
let kCAEmitterBehaviorLight: String
let kCAEmitterBehaviorAttractor: String
