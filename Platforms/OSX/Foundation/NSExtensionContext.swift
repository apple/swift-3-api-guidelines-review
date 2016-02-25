
@available(OSX 10.10, *)
class NSExtensionContext : NSObject {
  var inputItems: [AnyObject] { get }
  func completeRequestReturningItems(_ items: [AnyObject]?, completionHandler completionHandler: ((Bool) -> Void)? = nil)
  func cancelRequestWithError(_ error: NSError)
  func open(_ URL: NSURL, completionHandler completionHandler: ((Bool) -> Void)? = nil)
}
@available(OSX 10.10, *)
let NSExtensionItemsAndErrorsKey: String
