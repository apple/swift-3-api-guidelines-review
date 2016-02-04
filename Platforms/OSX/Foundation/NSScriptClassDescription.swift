
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
  func typeForKey(key: String) -> String?
  func forKey(key: String) -> ScriptClassDescription?
  func appleEventCodeForKey(key: String) -> FourCharCode
  func keyWithAppleEventCode(appleEventCode: FourCharCode) -> String?
  var defaultSubcontainerAttributeKey: String? { get }
  func isLocationRequiredToCreateForKey(toManyRelationshipKey: String) -> Bool
  @available(OSX 10.5, *)
  func hasPropertyForKey(key: String) -> Bool
  @available(OSX 10.5, *)
  func hasOrderedToManyRelationshipForKey(key: String) -> Bool
  @available(OSX 10.5, *)
  func hasReadablePropertyForKey(key: String) -> Bool
  @available(OSX 10.5, *)
  func hasWritablePropertyForKey(key: String) -> Bool
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
