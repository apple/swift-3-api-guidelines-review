
@available(tvOS 8.0, *)
class ExtensionContext : Object {
  var inputItems: [AnyObject] { get }
  func completeRequestReturningItems(items: [AnyObject]?, completionHandler: ((Bool) -> Void)? = nil)
  func cancelRequestWithError(error: Error)
  func open(URL: URL, completionHandler: ((Bool) -> Void)? = nil)
  init()
}
@available(tvOS 8.0, *)
let extensionItemsAndErrorsKey: String
@available(tvOS 8.2, *)
let extensionHostWillEnterForegroundNotification: String
@available(tvOS 8.2, *)
let extensionHostDidEnterBackgroundNotification: String
@available(tvOS 8.2, *)
let extensionHostWillResignActiveNotification: String
@available(tvOS 8.2, *)
let extensionHostDidBecomeActiveNotification: String
