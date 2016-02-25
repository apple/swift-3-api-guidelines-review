
let kCIFilterGeneratorExportedKey: String
let kCIFilterGeneratorExportedKeyTargetObject: String
let kCIFilterGeneratorExportedKeyName: String
@available(OSX 10.5, *)
class CIFilterGenerator : NSObject, NSSecureCoding, NSCopying, CIFilterConstructor {
  init?(contentsOfURL aURL: NSURL)
  func connectObject(_ sourceObject: AnyObject, withKey sourceKey: String?, toObject targetObject: AnyObject, withKey targetKey: String)
  func disconnectObject(_ sourceObject: AnyObject, withKey key: String, toObject targetObject: AnyObject, withKey targetKey: String)
  func exportKey(_ key: String, fromObject targetObject: AnyObject, withName exportedKeyName: String?)
  func removeExportedKey(_ exportedKeyName: String)
  var exportedKeys: [NSObject : AnyObject] { get }
  func setAttributes(_ attributes: [NSObject : AnyObject], forExportedKey key: String)
  var classAttributes: [NSObject : AnyObject]
  func filter() -> CIFilter
  func registerFilterName(_ name: String)
  func writeToURL(_ aURL: NSURL, atomically flag: Bool) -> Bool
  @available(OSX 10.5, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.5, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.5, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.5, *)
  func filterWithName(_ name: String) -> CIFilter?
}
