
enum SCNFilterMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(OSX 10.9, *)
  case none
  @available(OSX 10.9, *)
  case nearest
  @available(OSX 10.9, *)
  case linear
}
enum SCNWrapMode : Int {
  init?(rawValue: Int)
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
class SCNMaterialProperty : Object, SCNAnimatable, SecureCoding {
  @available(OSX 10.9, *)
  convenience init(contents: AnyObject)
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
  init()
  @available(OSX 10.8, *)
  func add(animation: CAAnimation, forKey key: String?)
  @available(OSX 10.8, *)
  func removeAllAnimations()
  @available(OSX 10.8, *)
  func removeAnimationFor(key key: String)
  @available(OSX 10.8, *)
  var animationKeys: [String] { get }
  @available(OSX 10.8, *)
  func animationFor(key key: String) -> CAAnimation?
  @available(OSX 10.9, *)
  func pauseAnimationFor(key key: String)
  @available(OSX 10.9, *)
  func resumeAnimationFor(key key: String)
  @available(OSX 10.9, *)
  func isAnimationFor(keyPaused key: String) -> Bool
  @available(OSX 10.10, *)
  func removeAnimationFor(key key: String, fadeOutDuration duration: CGFloat)
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
