
class AMWorkflow : NSObject, NSCopying {
  class func runWorkflowAtURL(fileURL: NSURL, withInput input: AnyObject?) throws -> AnyObject
  init()
  convenience init(contentsOfURL fileURL: NSURL) throws
  func writeToURL(fileURL: NSURL) throws
  func setValue(value: AnyObject?, forVariableWithName variableName: String) -> Bool
  func valueForVariableWithName(variableName: String) -> AnyObject
  func addAction(action: AMAction)
  func removeAction(action: AMAction)
  func insertAction(action: AMAction, atIndex index: Int)
  func moveActionAtIndex(startIndex: Int, toIndex endIndex: Int)
  @NSCopying var fileURL: NSURL? { get }
  var actions: [AMAction] { get }
  var input: AnyObject?
  @available(OSX 10.6, *)
  var output: AnyObject? { get }
  func copyWithZone(zone: NSZone) -> AnyObject
}
