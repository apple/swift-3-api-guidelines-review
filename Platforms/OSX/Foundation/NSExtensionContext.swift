
@available(OSX 10.10, *)
class NSExtensionContext : NSObject {
  var inputItems: [AnyObject] { get }
  func completeRequestReturningItems(items: [AnyObject]?, completionHandler: ((Bool) -> Void)?)
  func cancelRequestWithError(error: NSError)
  func openURL(URL: NSURL, completionHandler: ((Bool) -> Void)?)
  init()
}
@available(OSX 10.10, *)
let NSExtensionItemsAndErrorsKey: String
