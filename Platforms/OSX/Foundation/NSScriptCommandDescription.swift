
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
  func typeForArgument(withName argumentName: String) -> String?
  func appleEventCodeForArgument(withName argumentName: String) -> FourCharCode
  func isOptionalArgument(withName argumentName: String) -> Bool
  func createCommandInstance() -> ScriptCommand
  func createCommandInstance(zone: Zone = nil) -> ScriptCommand
  func encodeWith(aCoder: Coder)
}
