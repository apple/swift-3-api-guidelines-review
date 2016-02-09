
class ScriptClassDescription : ClassDescription {
  /*not inherited*/ init?(forClass aClass: AnyClass)
  init?(suiteName: String, className: String, dictionary classDeclaration: [Object : AnyObject]?)
  var suiteName: String? { get }
  var className: String? { get }
  var implementationClassName: String? { get }
  var superclass: ScriptClassDescription? { get }
  var appleEventCode: FourCharCode { get }
  func matchesAppleEventCode(appleEventCode: FourCharCode) -> Bool
  func supportsCommand(commandDescription: ScriptCommandDescription) -> Bool
  func selectorForCommand(commandDescription: ScriptCommandDescription) -> Selector
  func type(forKey key: String) -> String?
  func forKey(key: String) -> ScriptClassDescription?
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
  convenience init()
}
extension ScriptClassDescription {
}
extension Object {
  var classCode: FourCharCode { get }
  var className: String { get }
  class func classCode() -> FourCharCode
  class func className() -> String
}
