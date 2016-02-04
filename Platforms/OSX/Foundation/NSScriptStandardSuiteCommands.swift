
enum SaveOptions : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Yes
  case No
  case Ask
}
class CloneCommand : ScriptCommand {
  func setReceiversSpecifier(receiversRef: ScriptObjectSpecifier?)
  var keySpecifier: ScriptObjectSpecifier { get }
  init(commandDescription commandDef: ScriptCommandDescription)
  init?(coder inCoder: Coder)
  convenience init()
}
class CloseCommand : ScriptCommand {
  var saveOptions: SaveOptions { get }
  init(commandDescription commandDef: ScriptCommandDescription)
  init?(coder inCoder: Coder)
  convenience init()
}
class CountCommand : ScriptCommand {
  init(commandDescription commandDef: ScriptCommandDescription)
  init?(coder inCoder: Coder)
  convenience init()
}
class CreateCommand : ScriptCommand {
  var createClassDescription: ScriptClassDescription { get }
  var resolvedKeyDictionary: [String : AnyObject] { get }
  init(commandDescription commandDef: ScriptCommandDescription)
  init?(coder inCoder: Coder)
  convenience init()
}
class DeleteCommand : ScriptCommand {
  func setReceiversSpecifier(receiversRef: ScriptObjectSpecifier?)
  var keySpecifier: ScriptObjectSpecifier { get }
  init(commandDescription commandDef: ScriptCommandDescription)
  init?(coder inCoder: Coder)
  convenience init()
}
class ExistsCommand : ScriptCommand {
  init(commandDescription commandDef: ScriptCommandDescription)
  init?(coder inCoder: Coder)
  convenience init()
}
class GetCommand : ScriptCommand {
  init(commandDescription commandDef: ScriptCommandDescription)
  init?(coder inCoder: Coder)
  convenience init()
}
class MoveCommand : ScriptCommand {
  func setReceiversSpecifier(receiversRef: ScriptObjectSpecifier?)
  var keySpecifier: ScriptObjectSpecifier { get }
  init(commandDescription commandDef: ScriptCommandDescription)
  init?(coder inCoder: Coder)
  convenience init()
}
class QuitCommand : ScriptCommand {
  var saveOptions: SaveOptions { get }
  init(commandDescription commandDef: ScriptCommandDescription)
  init?(coder inCoder: Coder)
  convenience init()
}
class SetCommand : ScriptCommand {
  func setReceiversSpecifier(receiversRef: ScriptObjectSpecifier?)
  var keySpecifier: ScriptObjectSpecifier { get }
  init(commandDescription commandDef: ScriptCommandDescription)
  init?(coder inCoder: Coder)
  convenience init()
}
