
class ScriptCommandDescription : Object, Coding {
  init?(suiteName: String, commandName: String, dictionary commandDeclaration: [Object : AnyObject]?)
  init?(coder inCoder: Coder)
  var suiteName: String { get }
  var commandName: String { get }
  var appleEventClassCode: FourCharCode { get }
  var appleEventCode: FourCharCode { get }
  var commandClassName: String { get }
  var returnType: String? { get }
  var appleEventCodeForReturnType: FourCharCode { get }
  var argumentNames: [String] { get }
  func typeForArgumentWithName(argumentName: String) -> String?
  func appleEventCodeForArgumentWithName(argumentName: String) -> FourCharCode
  func isOptionalArgumentWithName(argumentName: String) -> Bool
  func createCommandInstance() -> ScriptCommand
  func createCommandInstance(zone zone: Zone = nil) -> ScriptCommand
  func encodeWith(aCoder: Coder)
}
