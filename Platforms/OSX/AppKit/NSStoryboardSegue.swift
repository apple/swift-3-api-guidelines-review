
@available(OSX 10.10, *)
class NSStoryboardSegue : NSObject {
  convenience init(identifier: String, source sourceController: AnyObject, destination destinationController: AnyObject, performHandler: () -> Void)
  init(identifier: String, source sourceController: AnyObject, destination destinationController: AnyObject)
  var identifier: String? { get }
  var sourceController: AnyObject { get }
  var destinationController: AnyObject { get }
  func perform()
  convenience init()
}
protocol NSSeguePerforming : NSObjectProtocol {
  @available(OSX 10.10, *)
  optional func prepareForSegue(segue: NSStoryboardSegue, sender: AnyObject?)
  @available(OSX 10.10, *)
  optional func performSegueWithIdentifier(identifier: String, sender: AnyObject?)
  @available(OSX 10.10, *)
  optional func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool
}
