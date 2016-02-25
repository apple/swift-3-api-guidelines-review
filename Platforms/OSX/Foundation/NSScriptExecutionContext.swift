
class NSScriptExecutionContext : NSObject {
  class func sharedScriptExecutionContext() -> NSScriptExecutionContext
  var topLevelObject: AnyObject?
  var objectBeingTested: AnyObject?
  var rangeContainerObject: AnyObject?
}
