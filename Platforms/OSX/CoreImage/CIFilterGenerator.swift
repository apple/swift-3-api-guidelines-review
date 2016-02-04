
let kCIFilterGeneratorExportedKey: String
let kCIFilterGeneratorExportedKeyTargetObject: String
let kCIFilterGeneratorExportedKeyName: String
@available(OSX 10.5, *)
class CIFilterGenerator : NSObject, NSSecureCoding, NSCopying, CIFilterConstructor {
  init?(contentsOfURL aURL: NSURL)
  func connectObject(sourceObject: AnyObject, withKey sourceKey: String?, toObject targetObject: AnyObject, withKey targetKey: String)
  func disconnectObject(sourceObject: AnyObject, withKey key: String, toObject targetObject: AnyObject, withKey targetKey: String)
  func exportKey(key: String, fromObject targetObject: AnyObject, withName exportedKeyName: String?)
  func removeExportedKey(exportedKeyName: String)
  var exportedKeys: [NSObject : AnyObject] { get }
  func setAttributes(attributes: [NSObject : AnyObject], forExportedKey key: String)
  var classAttributes: [NSObject : AnyObject]
  func filter() -> CIFilter
  func registerFilterName(name: String)
  func writeToURL(aURL: NSURL, atomically flag: Bool) -> Bool
  init()
  @available(OSX 10.5, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.5, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.5, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.5, *)
  func filterWithName(name: String) -> CIFilter?
}
