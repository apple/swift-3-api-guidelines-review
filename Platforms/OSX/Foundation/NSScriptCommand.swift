
var noScriptError: Int { get }
var receiverEvaluationScriptError: Int { get }
var keySpecifierEvaluationScriptError: Int { get }
var argumentEvaluationScriptError: Int { get }
var receiversCantHandleCommandScriptError: Int { get }
var requiredArgumentsMissingScriptError: Int { get }
var argumentsWrongScriptError: Int { get }
var unknownKeyScriptError: Int { get }
var internalScriptError: Int { get }
var operationNotSupportedForKeyScriptError: Int { get }
var cannotCreateScriptCommandError: Int { get }
class ScriptCommand : Object, Coding {
  init(commandDescription commandDef: ScriptCommandDescription)
  convenience init?(coder inCoder: Coder)
  var commandDescription: ScriptCommandDescription { get }
  var directParameter: AnyObject?
  var receiversSpecifier: ScriptObjectSpecifier?
  var evaluatedReceivers: AnyObject? { get }
  var arguments: [String : AnyObject]?
  var evaluatedArguments: [String : AnyObject]? { get }
  var isWellFormed: Bool { get }
  func performDefaultImplementation() -> AnyObject?
  func execute() -> AnyObject?
  var scriptErrorNumber: Int
  @available(OSX 10.5, *)
  var scriptErrorOffendingObjectDescriptor: AppleEventDescriptor?
  @available(OSX 10.5, *)
  var scriptErrorExpectedTypeDescriptor: AppleEventDescriptor?
  var scriptErrorString: String?
  class func current() -> ScriptCommand?
  @NSCopying var appleEvent: AppleEventDescriptor? { get }
  func suspendExecution()
  func resumeExecution(withResult result: AnyObject?)
  convenience init()
  func encode(with aCoder: Coder)
}
