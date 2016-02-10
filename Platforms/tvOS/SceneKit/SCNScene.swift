
typealias SCNSceneExportProgressHandler = (Float, Error?, UnsafeMutablePointer<ObjCBool>) -> Void
@available(tvOS 8.0, *)
let SCNSceneExportDestinationURL: String
let SCNSceneStartTimeAttributeKey: String
let SCNSceneEndTimeAttributeKey: String
let SCNSceneFrameRateAttributeKey: String
@available(tvOS 8.0, *)
let SCNSceneUpAxisAttributeKey: String
@available(tvOS 8.0, *)
class SCNScene : Object, SecureCoding {
  var rootNode: SCNNode { get }
  @available(tvOS 8.0, *)
  var physicsWorld: SCNPhysicsWorld { get }
  func attribute(forKey key: String) -> AnyObject?
  func setAttribute(attribute: AnyObject?, forKey key: String)
  @available(tvOS 8.0, *)
  var background: SCNMaterialProperty { get }
  @available(tvOS 8.0, *)
  convenience init?(named name: String)
  @available(tvOS 8.0, *)
  convenience init?(named name: String, inDirectory directory: String?, options: [String : AnyObject]? = [:])
  convenience init(url: URL, options: [String : AnyObject]? = [:]) throws
  @available(tvOS 8.0, *)
  var fogStartDistance: CGFloat
  @available(tvOS 8.0, *)
  var fogEndDistance: CGFloat
  @available(tvOS 8.0, *)
  var fogDensityExponent: CGFloat
  @available(tvOS 8.0, *)
  var fogColor: AnyObject
  @available(tvOS 8.0, *)
  var isPaused: Bool
  init()
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
