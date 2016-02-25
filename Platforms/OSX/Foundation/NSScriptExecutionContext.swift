
class NSScriptExecutionContext : NSObject {
  class func shared() -> NSScriptExecutionContext
  var topLevelObject: AnyObject?
  var objectBeingTested: AnyObject?
  var rangeContainerObject: AnyObject?
}
