
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
  func attributeForKey(_ key: String) -> AnyObject?
  func setAttribute(_ attribute: AnyObject?, forKey key: String)
  @available(OSX 10.9, *)
  var background: SCNMaterialProperty { get }
  @available(OSX 10.9, *)
  convenience init?(named name: String)
  @available(OSX 10.10, *)
  convenience init?(named name: String, inDirectory directory: String?, options options: [String : AnyObject]?)
  convenience init(URL url: NSURL, options options: [String : AnyObject]?) throws
  @available(OSX 10.9, *)
  func writeToURL(_ url: NSURL, options options: [String : AnyObject]?, delegate delegate: SCNSceneExportDelegate?, progressHandler progressHandler: SCNSceneExportProgressHandler?) -> Bool
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
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
protocol SCNSceneExportDelegate : NSObjectProtocol {
  @available(OSX 10.9, *)
  optional func writeImage(_ image: NSImage, withSceneDocumentURL documentURL: NSURL, originalImageURL originalImageURL: NSURL?) -> NSURL?
}
