
@available(watchOS 2.0, *)
class NSExtensionContext : NSObject {
  var inputItems: [AnyObject] { get }
  func completeRequestReturningItems(items: [AnyObject]?, completionHandler: ((Bool) -> Void)? = nil)
  func cancelRequestWithError(error: NSError)
  func open(URL: NSURL, completionHandler: ((Bool) -> Void)? = nil)
  init()
}
@available(watchOS 2.0, *)
let NSExtensionItemsAndErrorsKey: String
@available(watchOS 2.0, *)
let NSExtensionHostWillEnterForegroundNotification: String
@available(watchOS 2.0, *)
let NSExtensionHostDidEnterBackgroundNotification: String
@available(watchOS 2.0, *)
let NSExtensionHostWillResignActiveNotification: String
@available(watchOS 2.0, *)
let NSExtensionHostDidBecomeActiveNotification: String
