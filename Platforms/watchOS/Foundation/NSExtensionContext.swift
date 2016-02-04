
@available(watchOS 2.0, *)
class ExtensionContext : Object {
  var inputItems: [AnyObject] { get }
  func completeRequestReturningItems(items: [AnyObject]?, completionHandler: ((Bool) -> Void)? = nil)
  func cancelRequestWithError(error: Error)
  func open(URL: URL, completionHandler: ((Bool) -> Void)? = nil)
  init()
}
@available(watchOS 2.0, *)
let extensionItemsAndErrorsKey: String
@available(watchOS 2.0, *)
let extensionHostWillEnterForegroundNotification: String
@available(watchOS 2.0, *)
let extensionHostDidEnterBackgroundNotification: String
@available(watchOS 2.0, *)
let extensionHostWillResignActiveNotification: String
@available(watchOS 2.0, *)
let extensionHostDidBecomeActiveNotification: String
