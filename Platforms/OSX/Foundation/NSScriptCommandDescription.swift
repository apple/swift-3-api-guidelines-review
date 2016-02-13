
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
  func typeForArgument(name argumentName: String) -> String?
  func appleEventCodeForArgument(name argumentName: String) -> FourCharCode
  func isOptionalArgument(name argumentName: String) -> Bool
  func createCommandInstance() -> ScriptCommand
  func createCommandInstance(zone: Zone = nil) -> ScriptCommand
  func encode(aCoder: Coder)
}
