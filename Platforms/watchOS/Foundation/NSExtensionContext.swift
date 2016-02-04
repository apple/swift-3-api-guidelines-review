
@available(watchOS 2.0, *)
class NSExtensionContext : NSObject {
  var inputItems: [AnyObject] { get }
  func completeRequestReturningItems(items: [AnyObject]?, completionHandler: ((Bool) -> Void)?)
  func cancelRequestWithError(error: NSError)
  func openURL(URL: NSURL, completionHandler: ((Bool) -> Void)?)
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
