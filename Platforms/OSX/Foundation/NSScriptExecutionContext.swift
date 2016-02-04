
class ScriptExecutionContext : Object {
  class func shared() -> ScriptExecutionContext
  var topLevelObject: AnyObject?
  var objectBeingTested: AnyObject?
  var rangeContainerObject: AnyObject?
  init()
}
