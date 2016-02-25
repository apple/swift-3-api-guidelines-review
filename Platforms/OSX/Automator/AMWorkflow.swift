
class AMWorkflow : NSObject, NSCopying {
  class func runWorkflowAtURL(_ fileURL: NSURL, withInput input: AnyObject?) throws -> AnyObject
  convenience init(contentsOfURL fileURL: NSURL) throws
  func writeToURL(_ fileURL: NSURL) throws
  func setValue(_ value: AnyObject?, forVariableWithName variableName: String) -> Bool
  func valueForVariableWithName(_ variableName: String) -> AnyObject
  func addAction(_ action: AMAction)
  func removeAction(_ action: AMAction)
  func insertAction(_ action: AMAction, atIndex index: Int)
  func moveActionAtIndex(_ startIndex: Int, toIndex endIndex: Int)
  @NSCopying var fileURL: NSURL? { get }
  var actions: [AMAction] { get }
  var input: AnyObject?
  @available(OSX 10.6, *)
  var output: AnyObject? { get }
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
