
class NSScriptClassDescription : NSClassDescription {
  init?(suiteName suiteName: String, className className: String, dictionary classDeclaration: [NSObject : AnyObject]?)
  var suiteName: String? { get }
  var implementationClassName: String? { get }
  var superclass: NSScriptClassDescription? { get }
  var appleEventCode: FourCharCode { get }
  func matchesAppleEventCode(_ appleEventCode: FourCharCode) -> Bool
  func supportsCommand(_ commandDescription: NSScriptCommandDescription) -> Bool
  func selector(forCommand commandDescription: NSScriptCommandDescription) -> Selector
  func type(forKey key: String) -> String?
  func forKey(_ key: String) -> NSScriptClassDescription?
  func appleEventCode(forKey key: String) -> FourCharCode
  func key(withAppleEventCode appleEventCode: FourCharCode) -> String?
  var defaultSubcontainerAttributeKey: String? { get }
  func isLocationRequiredToCreate(forKey toManyRelationshipKey: String) -> Bool
  @available(OSX 10.5, *)
  func hasProperty(forKey key: String) -> Bool
  @available(OSX 10.5, *)
  func hasOrderedToManyRelationship(forKey key: String) -> Bool
  @available(OSX 10.5, *)
  func hasReadableProperty(forKey key: String) -> Bool
  @available(OSX 10.5, *)
  func hasWritableProperty(forKey key: String) -> Bool
}
extension NSScriptClassDescription {
}
extension NSObject {
  var classCode: FourCharCode { get }
  var className: String { get }
  class func classCode() -> FourCharCode
  class func className() -> String
}
