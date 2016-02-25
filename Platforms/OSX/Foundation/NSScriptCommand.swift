
var NSNoScriptError: Int { get }
var NSReceiverEvaluationScriptError: Int { get }
var NSKeySpecifierEvaluationScriptError: Int { get }
var NSArgumentEvaluationScriptError: Int { get }
var NSReceiversCantHandleCommandScriptError: Int { get }
var NSRequiredArgumentsMissingScriptError: Int { get }
var NSArgumentsWrongScriptError: Int { get }
var NSUnknownKeyScriptError: Int { get }
var NSInternalScriptError: Int { get }
var NSOperationNotSupportedForKeyScriptError: Int { get }
var NSCannotCreateScriptCommandError: Int { get }
class NSScriptCommand : NSObject, NSCoding {
  init(commandDescription commandDef: NSScriptCommandDescription)
  convenience init?(coder inCoder: NSCoder)
  var commandDescription: NSScriptCommandDescription { get }
  var directParameter: AnyObject?
  var receiversSpecifier: NSScriptObjectSpecifier?
  var evaluatedReceivers: AnyObject? { get }
  var arguments: [String : AnyObject]?
  var evaluatedArguments: [String : AnyObject]? { get }
  var wellFormed: Bool { get }
  func performDefaultImplementation() -> AnyObject?
  func executeCommand() -> AnyObject?
  var scriptErrorNumber: Int
  @available(OSX 10.5, *)
  var scriptErrorOffendingObjectDescriptor: NSAppleEventDescriptor?
  @available(OSX 10.5, *)
  var scriptErrorExpectedTypeDescriptor: NSAppleEventDescriptor?
  var scriptErrorString: String?
  class func currentCommand() -> NSScriptCommand?
  @NSCopying var appleEvent: NSAppleEventDescriptor? { get }
  func suspendExecution()
  func resumeExecutionWithResult(_ result: AnyObject?)
  func encodeWithCoder(_ aCoder: NSCoder)
}
