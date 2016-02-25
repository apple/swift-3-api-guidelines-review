
class NSScriptClassDescription : NSClassDescription {
  init?(suiteName suiteName: String, className className: String, dictionary classDeclaration: [NSObject : AnyObject]?)
  var suiteName: String? { get }
  var implementationClassName: String? { get }
  var superclassDescription: NSScriptClassDescription? { get }
  var appleEventCode: FourCharCode { get }
  func matchesAppleEventCode(_ appleEventCode: FourCharCode) -> Bool
  func supportsCommand(_ commandDescription: NSScriptCommandDescription) -> Bool
  func selectorForCommand(_ commandDescription: NSScriptCommandDescription) -> Selector
  func typeForKey(_ key: String) -> String?
  func classDescriptionForKey(_ key: String) -> NSScriptClassDescription?
  func appleEventCodeForKey(_ key: String) -> FourCharCode
  func keyWithAppleEventCode(_ appleEventCode: FourCharCode) -> String?
  var defaultSubcontainerAttributeKey: String? { get }
  func isLocationRequiredToCreateForKey(_ toManyRelationshipKey: String) -> Bool
  @available(OSX 10.5, *)
  func hasPropertyForKey(_ key: String) -> Bool
  @available(OSX 10.5, *)
  func hasOrderedToManyRelationshipForKey(_ key: String) -> Bool
  @available(OSX 10.5, *)
  func hasReadablePropertyForKey(_ key: String) -> Bool
  @available(OSX 10.5, *)
  func hasWritablePropertyForKey(_ key: String) -> Bool
}
extension NSScriptClassDescription {
}
extension NSObject {
  var classCode: FourCharCode { get }
  var className: String { get }
  class func classCode() -> FourCharCode
  class func className() -> String
}
