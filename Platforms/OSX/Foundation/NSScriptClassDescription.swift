
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
  func typeFor(key key: String) -> String?
  func forKey(key: String) -> ScriptClassDescription?
  func appleEventCodeFor(key key: String) -> FourCharCode
  func keyWith(appleEventCode appleEventCode: FourCharCode) -> String?
  var defaultSubcontainerAttributeKey: String? { get }
  func isLocationRequiredToCreateFor(key toManyRelationshipKey: String) -> Bool
  @available(OSX 10.5, *)
  func hasPropertyFor(key key: String) -> Bool
  @available(OSX 10.5, *)
  func hasOrderedToManyRelationshipFor(key key: String) -> Bool
  @available(OSX 10.5, *)
  func hasReadablePropertyFor(key key: String) -> Bool
  @available(OSX 10.5, *)
  func hasWritablePropertyFor(key key: String) -> Bool
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
