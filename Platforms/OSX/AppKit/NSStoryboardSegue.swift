
@available(OSX 10.10, *)
class NSStoryboardSegue : Object {
  convenience init(identifier: String, source sourceController: AnyObject, destination destinationController: AnyObject, performHandler: () -> Void)
  init(identifier: String, source sourceController: AnyObject, destination destinationController: AnyObject)
  var identifier: String? { get }
  var sourceController: AnyObject { get }
  var destinationController: AnyObject { get }
  func perform()
  convenience init()
}
protocol NSSeguePerforming : ObjectProtocol {
  @available(OSX 10.10, *)
  optional func prepareFor(segue: NSStoryboardSegue, sender: AnyObject?)
  @available(OSX 10.10, *)
  optional func performSegue(identifier identifier: String, sender: AnyObject?)
  @available(OSX 10.10, *)
  optional func shouldPerformSegueWith(identifier identifier: String, sender: AnyObject?) -> Bool
}
