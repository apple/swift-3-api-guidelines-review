
enum SCNFilterMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS 8.0, *)
  case none
  @available(tvOS 8.0, *)
  case nearest
  @available(tvOS 8.0, *)
  case linear
}
enum SCNWrapMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS 8.0, *)
  case clamp
  @available(tvOS 8.0, *)
  case `repeat`
  @available(tvOS 9.0, *)
  case clampToBorder
  @available(tvOS 8.0, *)
  case mirror
}
@available(tvOS 8.0, *)
class SCNMaterialProperty : Object, SCNAnimatable, SecureCoding {
  @available(tvOS 8.0, *)
  convenience init(contents: AnyObject)
  var contents: AnyObject?
  @available(tvOS 8.0, *)
  var intensity: CGFloat
  var minificationFilter: SCNFilterMode
  var magnificationFilter: SCNFilterMode
  var mipFilter: SCNFilterMode
  var contentsTransform: SCNMatrix4
  var wrapS: SCNWrapMode
  var wrapT: SCNWrapMode
  var borderColor: AnyObject?
  var mappingChannel: Int
  @available(tvOS 8.0, *)
  var maxAnisotropy: CGFloat
  init()
  @available(tvOS 8.0, *)
  func add(animation: CAAnimation, forKey key: String?)
  @available(tvOS 8.0, *)
  func removeAllAnimations()
  @available(tvOS 8.0, *)
  func removeAnimationFor(key key: String)
  @available(tvOS 8.0, *)
  var animationKeys: [String] { get }
  @available(tvOS 8.0, *)
  func animationFor(key key: String) -> CAAnimation?
  @available(tvOS 8.0, *)
  func pauseAnimationFor(key key: String)
  @available(tvOS 8.0, *)
  func resumeAnimationFor(key key: String)
  @available(tvOS 8.0, *)
  func isAnimationFor(keyPaused key: String) -> Bool
  @available(tvOS 8.0, *)
  func removeAnimationFor(key key: String, fadeOutDuration duration: CGFloat)
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
