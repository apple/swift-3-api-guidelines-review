
let SCNLightingModelPhong: String
let SCNLightingModelBlinn: String
let SCNLightingModelLambert: String
let SCNLightingModelConstant: String
enum SCNCullMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Back
  case Front
}
enum SCNTransparencyMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case AOne
  case RGBZero
}
@available(iOS 9.0, *)
enum SCNBlendMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Alpha
  case Add
  case Subtract
  case Multiply
  case Screen
  case Replace
}
@available(iOS 8.0, *)
class SCNMaterial : NSObject, SCNAnimatable, SCNShadable, NSCopying, NSSecureCoding {
  var name: String?
  var diffuse: SCNMaterialProperty { get }
  var ambient: SCNMaterialProperty { get }
  var specular: SCNMaterialProperty { get }
  var emission: SCNMaterialProperty { get }
  var transparent: SCNMaterialProperty { get }
  var reflective: SCNMaterialProperty { get }
  var multiply: SCNMaterialProperty { get }
  var normal: SCNMaterialProperty { get }
  @available(iOS 9.0, *)
  var ambientOcclusion: SCNMaterialProperty { get }
  @available(iOS 9.0, *)
  var selfIllumination: SCNMaterialProperty { get }
  var shininess: CGFloat
  var transparency: CGFloat
  var lightingModelName: String
  var litPerPixel: Bool
  var doubleSided: Bool
  var cullMode: SCNCullMode
  var transparencyMode: SCNTransparencyMode
  var locksAmbientWithDiffuse: Bool
  var writesToDepthBuffer: Bool
  @available(iOS 8.0, *)
  var readsFromDepthBuffer: Bool
  @available(iOS 8.0, *)
  var fresnelExponent: CGFloat
  @available(iOS 9.0, *)
  var blendMode: SCNBlendMode
  @available(iOS 8.0, *)
  func addAnimation(_ animation: CAAnimation, forKey key: String?)
  @available(iOS 8.0, *)
  func removeAllAnimations()
  @available(iOS 8.0, *)
  func removeAnimationForKey(_ key: String)
  @available(iOS 8.0, *)
  var animationKeys: [String] { get }
  @available(iOS 8.0, *)
  func animationForKey(_ key: String) -> CAAnimation?
  @available(iOS 8.0, *)
  func pauseAnimationForKey(_ key: String)
  @available(iOS 8.0, *)
  func resumeAnimationForKey(_ key: String)
  @available(iOS 8.0, *)
  func isAnimationForKeyPaused(_ key: String) -> Bool
  @available(iOS 8.0, *)
  func removeAnimationForKey(_ key: String, fadeOutDuration duration: CGFloat)
  @available(iOS 8.0, *)
  var program: SCNProgram?
  @available(iOS 8.0, *)
  func handleBindingOfSymbol(_ symbol: String, usingBlock block: SCNBindingBlock?)
  @available(iOS 8.0, *)
  func handleUnbindingOfSymbol(_ symbol: String, usingBlock block: SCNBindingBlock?)
  @available(iOS 8.0, *)
  var shaderModifiers: [String : String]?
  @available(iOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
