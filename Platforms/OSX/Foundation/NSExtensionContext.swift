
@available(OSX 10.10, *)
class NSExtensionContext : NSObject {
  var inputItems: [AnyObject] { get }
  func completeRequestReturningItems(_ items: [AnyObject]?, completionHandler completionHandler: ((Bool) -> Void)?)
  func cancelRequestWithError(_ error: NSError)
  func openURL(_ URL: NSURL, completionHandler completionHandler: ((Bool) -> Void)?)
}
@available(OSX 10.10, *)
let NSExtensionItemsAndErrorsKey: String
