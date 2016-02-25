
class NSScriptCommandDescription : NSObject, NSCoding {
  init?(suiteName suiteName: String, commandName commandName: String, dictionary commandDeclaration: [NSObject : AnyObject]?)
  init?(coder inCoder: NSCoder)
  var suiteName: String { get }
  var commandName: String { get }
  var appleEventClassCode: FourCharCode { get }
  var appleEventCode: FourCharCode { get }
  var commandClassName: String { get }
  var returnType: String? { get }
  var appleEventCodeForReturnType: FourCharCode { get }
  var argumentNames: [String] { get }
  func typeForArgumentWithName(_ argumentName: String) -> String?
  func appleEventCodeForArgumentWithName(_ argumentName: String) -> FourCharCode
  func isOptionalArgumentWithName(_ argumentName: String) -> Bool
  func createCommandInstance() -> NSScriptCommand
  func createCommandInstanceWithZone(_ zone: NSZone) -> NSScriptCommand
  func encodeWithCoder(_ aCoder: NSCoder)
}
