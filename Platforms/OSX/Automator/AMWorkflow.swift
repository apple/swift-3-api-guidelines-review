
class AMWorkflow : Object, Copying {
  class func runAt(fileURL: URL, withInput input: AnyObject?) throws -> AnyObject
  init()
  convenience init(contentsOf fileURL: URL) throws
  func writeTo(fileURL: URL) throws
  func setValue(value: AnyObject?, forVariableWithName variableName: String) -> Bool
  func valueForVariableWithName(variableName: String) -> AnyObject
  func addAction(action: AMAction)
  func removeAction(action: AMAction)
  func insertAction(action: AMAction, at index: Int)
  func moveActionAt(startIndex: Int, to endIndex: Int)
  @NSCopying var fileURL: URL? { get }
  var actions: [AMAction] { get }
  var input: AnyObject?
  @available(OSX 10.6, *)
  var output: AnyObject? { get }
  func copy(zone zone: Zone = nil) -> AnyObject
}
