
class NSScriptCommandDescription : NSObject, NSCoding {
  init?(suiteName: String, commandName: String, dictionary commandDeclaration: [NSObject : AnyObject]?)
  init?(coder inCoder: NSCoder)
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
  func createCommandInstance() -> NSScriptCommand
  func createCommandInstanceWithZone(zone: NSZone) -> NSScriptCommand
  func encodeWithCoder(aCoder: NSCoder)
}
