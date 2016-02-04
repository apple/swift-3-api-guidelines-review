
typealias SCNSceneExportProgressHandler = (Float, NSError?, UnsafeMutablePointer<ObjCBool>) -> Void
@available(OSX 10.9, *)
let SCNSceneExportDestinationURL: String
let SCNSceneStartTimeAttributeKey: String
let SCNSceneEndTimeAttributeKey: String
let SCNSceneFrameRateAttributeKey: String
@available(OSX 10.10, *)
let SCNSceneUpAxisAttributeKey: String
@available(OSX 10.8, *)
class SCNScene : NSObject, NSSecureCoding {
  var rootNode: SCNNode { get }
  @available(OSX 10.10, *)
  var physicsWorld: SCNPhysicsWorld { get }
  func attributeForKey(key: String) -> AnyObject?
  func setAttribute(attribute: AnyObject?, forKey key: String)
  @available(OSX 10.9, *)
  var background: SCNMaterialProperty { get }
  @available(OSX 10.9, *)
  convenience init?(named name: String)
  @available(OSX 10.10, *)
  convenience init?(named name: String, inDirectory directory: String?, options: [String : AnyObject]?)
  convenience init(URL url: NSURL, options: [String : AnyObject]?) throws
  @available(OSX 10.9, *)
  func writeToURL(url: NSURL, options: [String : AnyObject]?, delegate: SCNSceneExportDelegate?, progressHandler: SCNSceneExportProgressHandler?) -> Bool
  @available(OSX 10.10, *)
  var fogStartDistance: CGFloat
  @available(OSX 10.10, *)
  var fogEndDistance: CGFloat
  @available(OSX 10.10, *)
  var fogDensityExponent: CGFloat
  @available(OSX 10.10, *)
  var fogColor: AnyObject
  @available(OSX 10.10, *)
  var paused: Bool
  init()
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
protocol SCNSceneExportDelegate : NSObjectProtocol {
  @available(OSX 10.9, *)
  optional func writeImage(image: NSImage, withSceneDocumentURL documentURL: NSURL, originalImageURL: NSURL?) -> NSURL?
}
