
@available(iOS 8.0, *)
class ExtensionContext : Object {
  var inputItems: [AnyObject] { get }
  func completeRequestReturningItems(items: [AnyObject]?, completionHandler: ((Bool) -> Void)? = nil)
  func cancelRequestWithError(error: Error)
  func open(URL: URL, completionHandler: ((Bool) -> Void)? = nil)
  init()
}
@available(iOS 8.0, *)
let extensionItemsAndErrorsKey: String
@available(iOS 8.2, *)
let extensionHostWillEnterForegroundNotification: String
@available(iOS 8.2, *)
let extensionHostDidEnterBackgroundNotification: String
@available(iOS 8.2, *)
let extensionHostWillResignActiveNotification: String
@available(iOS 8.2, *)
let extensionHostDidBecomeActiveNotification: String
