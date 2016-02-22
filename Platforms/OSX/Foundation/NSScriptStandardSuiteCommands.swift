
enum NSSaveOptions : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case yes
  case no
  case ask
}
class NSCloneCommand : NSScriptCommand {
  func setReceiversSpecifier(receiversRef: NSScriptObjectSpecifier?)
  var keySpecifier: NSScriptObjectSpecifier { get }
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSCloseCommand : NSScriptCommand {
  var saveOptions: NSSaveOptions { get }
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSCountCommand : NSScriptCommand {
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSCreateCommand : NSScriptCommand {
  var createClassDescription: NSScriptClassDescription { get }
  var resolvedKeyDictionary: [String : AnyObject] { get }
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSDeleteCommand : NSScriptCommand {
  func setReceiversSpecifier(receiversRef: NSScriptObjectSpecifier?)
  var keySpecifier: NSScriptObjectSpecifier { get }
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSExistsCommand : NSScriptCommand {
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSGetCommand : NSScriptCommand {
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSMoveCommand : NSScriptCommand {
  func setReceiversSpecifier(receiversRef: NSScriptObjectSpecifier?)
  var keySpecifier: NSScriptObjectSpecifier { get }
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSQuitCommand : NSScriptCommand {
  var saveOptions: NSSaveOptions { get }
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
class NSSetCommand : NSScriptCommand {
  func setReceiversSpecifier(receiversRef: NSScriptObjectSpecifier?)
  var keySpecifier: NSScriptObjectSpecifier { get }
  init(commandDescription commandDef: NSScriptCommandDescription)
  init?(coder inCoder: NSCoder)
  convenience init()
}
