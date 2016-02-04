
@available(tvOS 8.0, *)
class NSExtensionContext : NSObject {
  var inputItems: [AnyObject] { get }
  func completeRequestReturningItems(items: [AnyObject]?, completionHandler: ((Bool) -> Void)?)
  func cancelRequestWithError(error: NSError)
  func openURL(URL: NSURL, completionHandler: ((Bool) -> Void)?)
  init()
}
@available(tvOS 8.0, *)
let NSExtensionItemsAndErrorsKey: String
@available(tvOS 8.2, *)
let NSExtensionHostWillEnterForegroundNotification: String
@available(tvOS 8.2, *)
let NSExtensionHostDidEnterBackgroundNotification: String
@available(tvOS 8.2, *)
let NSExtensionHostWillResignActiveNotification: String
@available(tvOS 8.2, *)
let NSExtensionHostDidBecomeActiveNotification: String
