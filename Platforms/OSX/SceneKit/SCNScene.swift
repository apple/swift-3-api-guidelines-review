
typealias SCNSceneExportProgressHandler = (Float, Error?, UnsafeMutablePointer<ObjCBool>) -> Void
@available(OSX 10.9, *)
let SCNSceneExportDestinationURL: String
let SCNSceneStartTimeAttributeKey: String
let SCNSceneEndTimeAttributeKey: String
let SCNSceneFrameRateAttributeKey: String
@available(OSX 10.10, *)
let SCNSceneUpAxisAttributeKey: String
@available(OSX 10.8, *)
class SCNScene : Object, SecureCoding {
  var rootNode: SCNNode { get }
  @available(OSX 10.10, *)
  var physicsWorld: SCNPhysicsWorld { get }
  func attributeFor(key key: String) -> AnyObject?
  func setAttribute(attribute: AnyObject?, forKey key: String)
  @available(OSX 10.9, *)
  var background: SCNMaterialProperty { get }
  @available(OSX 10.9, *)
  convenience init?(named name: String)
  @available(OSX 10.10, *)
  convenience init?(named name: String, inDirectory directory: String?, options: [String : AnyObject]? = [:])
  convenience init(url: URL, options: [String : AnyObject]? = [:]) throws
  @available(OSX 10.9, *)
  func writeTo(url: URL, options: [String : AnyObject]? = [:], delegate: SCNSceneExportDelegate?, progressHandler: SCNSceneExportProgressHandler? = nil) -> Bool
  @available(OSX 10.10, *)
  var fogStartDistance: CGFloat
  @available(OSX 10.10, *)
  var fogEndDistance: CGFloat
  @available(OSX 10.10, *)
  var fogDensityExponent: CGFloat
  @available(OSX 10.10, *)
  var fogColor: AnyObject
  @available(OSX 10.10, *)
  var isPaused: Bool
  init()
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
protocol SCNSceneExportDelegate : ObjectProtocol {
  @available(OSX 10.9, *)
  optional func write(image: NSImage, withSceneDocumentURL documentURL: URL, originalImageURL: URL?) -> URL?
}
