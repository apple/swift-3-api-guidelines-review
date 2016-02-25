
enum SCNFilterMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  @available(OSX 10.9, *)
  case none
  @available(OSX 10.9, *)
  case nearest
  @available(OSX 10.9, *)
  case linear
}
enum SCNWrapMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  @available(OSX 10.9, *)
  case clamp
  @available(OSX 10.9, *)
  case `repeat`
  @available(OSX 10.9, *)
  case clampToBorder
  @available(OSX 10.9, *)
  case mirror
}
@available(OSX 10.8, *)
class SCNMaterialProperty : NSObject, SCNAnimatable, NSSecureCoding {
  @available(OSX 10.9, *)
  convenience init(contents contents: AnyObject)
  var contents: AnyObject?
  @available(OSX 10.9, *)
  var intensity: CGFloat
  var minificationFilter: SCNFilterMode
  var magnificationFilter: SCNFilterMode
  var mipFilter: SCNFilterMode
  var contentsTransform: SCNMatrix4
  var wrapS: SCNWrapMode
  var wrapT: SCNWrapMode
  var borderColor: AnyObject?
  var mappingChannel: Int
  @available(OSX 10.9, *)
  var maxAnisotropy: CGFloat
  @available(OSX 10.8, *)
  func add(_ animation: CAAnimation, forKey key: String?)
  @available(OSX 10.8, *)
  func removeAllAnimations()
  @available(OSX 10.8, *)
  func removeAnimation(forKey key: String)
  @available(OSX 10.8, *)
  var animationKeys: [String] { get }
  @available(OSX 10.8, *)
  func animation(forKey key: String) -> CAAnimation?
  @available(OSX 10.9, *)
  func pauseAnimation(forKey key: String)
  @available(OSX 10.9, *)
  func resumeAnimation(forKey key: String)
  @available(OSX 10.9, *)
  func isAnimation(forKeyPaused key: String) -> Bool
  @available(OSX 10.10, *)
  func removeAnimation(forKey key: String, fadeOutDuration duration: CGFloat)
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
