
enum SCNFilterMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  @available(OSX 10.9, *)
  case None
  @available(OSX 10.9, *)
  case Nearest
  @available(OSX 10.9, *)
  case Linear
}
enum SCNWrapMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  @available(OSX 10.9, *)
  case Clamp
  @available(OSX 10.9, *)
  case Repeat
  @available(OSX 10.9, *)
  case ClampToBorder
  @available(OSX 10.9, *)
  case Mirror
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
  func addAnimation(_ animation: CAAnimation, forKey key: String?)
  @available(OSX 10.8, *)
  func removeAllAnimations()
  @available(OSX 10.8, *)
  func removeAnimationForKey(_ key: String)
  @available(OSX 10.8, *)
  var animationKeys: [String] { get }
  @available(OSX 10.8, *)
  func animationForKey(_ key: String) -> CAAnimation?
  @available(OSX 10.9, *)
  func pauseAnimationForKey(_ key: String)
  @available(OSX 10.9, *)
  func resumeAnimationForKey(_ key: String)
  @available(OSX 10.9, *)
  func isAnimationForKeyPaused(_ key: String) -> Bool
  @available(OSX 10.10, *)
  func removeAnimationForKey(_ key: String, fadeOutDuration duration: CGFloat)
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
