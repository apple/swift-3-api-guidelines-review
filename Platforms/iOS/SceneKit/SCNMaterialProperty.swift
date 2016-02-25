
enum SCNFilterMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 8.0, *)
  case none
  @available(iOS 8.0, *)
  case nearest
  @available(iOS 8.0, *)
  case linear
}
enum SCNWrapMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 8.0, *)
  case clamp
  @available(iOS 8.0, *)
  case `repeat`
  @available(iOS 9.0, *)
  case clampToBorder
  @available(iOS 8.0, *)
  case mirror
}
@available(iOS 8.0, *)
class SCNMaterialProperty : NSObject, SCNAnimatable, NSSecureCoding {
  @available(iOS 8.0, *)
  convenience init(contents contents: AnyObject)
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
  @available(iOS 8.0, *)
  func add(_ animation: CAAnimation, forKey key: String?)
  @available(iOS 8.0, *)
  func removeAllAnimations()
  @available(iOS 8.0, *)
  func removeAnimation(forKey key: String)
  @available(iOS 8.0, *)
  var animationKeys: [String] { get }
  @available(iOS 8.0, *)
  func animation(forKey key: String) -> CAAnimation?
  @available(iOS 8.0, *)
  func pauseAnimation(forKey key: String)
  @available(iOS 8.0, *)
  func resumeAnimation(forKey key: String)
  @available(iOS 8.0, *)
  func isAnimation(forKeyPaused key: String) -> Bool
  @available(iOS 8.0, *)
  func removeAnimation(forKey key: String, fadeOutDuration duration: CGFloat)
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
