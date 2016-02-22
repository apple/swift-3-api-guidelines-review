
@available(OSX 10.10, *)
class NSExtensionContext : NSObject {
  var inputItems: [AnyObject] { get }
  func completeRequestReturningItems(items: [AnyObject]?, completionHandler: ((Bool) -> Void)? = nil)
  func cancelRequestWithError(error: NSError)
  func open(URL: NSURL, completionHandler: ((Bool) -> Void)? = nil)
  init()
}
@available(OSX 10.10, *)
let NSExtensionItemsAndErrorsKey: String
