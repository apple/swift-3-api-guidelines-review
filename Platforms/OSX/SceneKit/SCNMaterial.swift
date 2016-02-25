
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
@available(OSX 10.11, *)
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
@available(OSX 10.8, *)
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
  @available(OSX 10.11, *)
  var ambientOcclusion: SCNMaterialProperty { get }
  @available(OSX 10.11, *)
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
  @available(OSX 10.9, *)
  var readsFromDepthBuffer: Bool
  @available(OSX 10.9, *)
  var fresnelExponent: CGFloat
  @available(OSX 10.11, *)
  var blendMode: SCNBlendMode
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
  var program: SCNProgram?
  @available(OSX 10.9, *)
  func handleBindingOfSymbol(_ symbol: String, usingBlock block: SCNBindingBlock?)
  @available(OSX 10.9, *)
  func handleUnbindingOfSymbol(_ symbol: String, usingBlock block: SCNBindingBlock?)
  @available(OSX 10.9, *)
  var shaderModifiers: [String : String]?
  @available(OSX 10.8, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
