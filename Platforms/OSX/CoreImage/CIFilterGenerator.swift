
let kCIFilterGeneratorExportedKey: String
let kCIFilterGeneratorExportedKeyTargetObject: String
let kCIFilterGeneratorExportedKeyName: String
@available(OSX 10.5, *)
class CIFilterGenerator : Object, SecureCoding, Copying, CIFilterConstructor {
  init?(contentsOf aURL: URL)
  func connect(sourceObject: AnyObject, withKey sourceKey: String?, to targetObject: AnyObject, withKey targetKey: String)
  func disconnectObject(sourceObject: AnyObject, withKey key: String, to targetObject: AnyObject, withKey targetKey: String)
  func exportKey(key: String, from targetObject: AnyObject, withName exportedKeyName: String?)
  func removeExportedKey(exportedKeyName: String)
  var exportedKeys: [Object : AnyObject] { get }
  func setAttributes(attributes: [Object : AnyObject] = [:], forExportedKey key: String)
  var classAttributes: [Object : AnyObject]
  func filter() -> CIFilter
  func registerFilterName(name: String)
  func write(to aURL: URL, atomically flag: Bool) -> Bool
  init()
  @available(OSX 10.5, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.5, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.5, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(OSX 10.5, *)
  func filter(withName name: String) -> CIFilter?
}
