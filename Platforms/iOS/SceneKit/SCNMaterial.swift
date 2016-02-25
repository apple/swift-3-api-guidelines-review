
let SCNLightingModelPhong: String
let SCNLightingModelBlinn: String
let SCNLightingModelLambert: String
let SCNLightingModelConstant: String
enum SCNCullMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case back
  case front
}
enum SCNTransparencyMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case aOne
  case rgbZero
}
@available(iOS 9.0, *)
enum SCNBlendMode : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case alpha
  case add
  case subtract
  case multiply
  case screen
  case replace
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
  var isLitPerPixel: Bool
  var isDoubleSided: Bool
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
  var program: SCNProgram?
  @available(iOS 8.0, *)
  func handleBinding(ofSymbol symbol: String, using block: SCNBindingBlock? = nil)
  @available(iOS 8.0, *)
  func handleUnbinding(ofSymbol symbol: String, using block: SCNBindingBlock? = nil)
  @available(iOS 8.0, *)
  var shaderModifiers: [String : String]?
  @available(iOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
