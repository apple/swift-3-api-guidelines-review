
enum SCNFilterMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 8.0, *)
  case None
  @available(iOS 8.0, *)
  case Nearest
  @available(iOS 8.0, *)
  case Linear
}
enum SCNWrapMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 8.0, *)
  case Clamp
  @available(iOS 8.0, *)
  case Repeat
  @available(iOS 9.0, *)
  case ClampToBorder
  @available(iOS 8.0, *)
  case Mirror
}
@available(iOS 8.0, *)
class SCNMaterialProperty : NSObject, SCNAnimatable, NSSecureCoding {
  @available(iOS 8.0, *)
  convenience init(contents: AnyObject)
  var contents: AnyObject?
  @available(iOS 8.0, *)
  var intensity: CGFloat
  var minificationFilter: SCNFilterMode
  var magnificationFilter: SCNFilterMode
  var mipFilter: SCNFilterMode
  var contentsTransform: SCNMatrix4
  var wrapS: SCNWrapMode
  var wrapT: SCNWrapMode
  var borderColor: AnyObject?
  var mappingChannel: Int
  @available(iOS 8.0, *)
  var maxAnisotropy: CGFloat
  init()
  @available(iOS 8.0, *)
  func addAnimation(animation: CAAnimation, forKey key: String?)
  @available(iOS 8.0, *)
  func removeAllAnimations()
  @available(iOS 8.0, *)
  func removeAnimationForKey(key: String)
  @available(iOS 8.0, *)
  var animationKeys: [String] { get }
  @available(iOS 8.0, *)
  func animationForKey(key: String) -> CAAnimation?
  @available(iOS 8.0, *)
  func pauseAnimationForKey(key: String)
  @available(iOS 8.0, *)
  func resumeAnimationForKey(key: String)
  @available(iOS 8.0, *)
  func isAnimationForKeyPaused(key: String) -> Bool
  @available(iOS 8.0, *)
  func removeAnimationForKey(key: String, fadeOutDuration duration: CGFloat)
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
