
class FIFinderSyncController : NSExtensionContext {
  class func defaultController() -> Self
  var directoryURLs: Set<NSURL>!
  func setBadgeImage(image: NSImage, label: String?, forBadgeIdentifier badgeID: String)
  func setBadgeIdentifier(badgeID: String, forURL url: NSURL)
  func targetedURL() -> NSURL?
  func selectedItemURLs() -> [NSURL]?
  init()
}
enum FIMenuKind : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ContextualMenuForItems
  case ContextualMenuForContainer
  case ContextualMenuForSidebar
  case ToolbarItemMenu
}
protocol FIFinderSyncProtocol {
  optional func menuForMenuKind(menu: FIMenuKind) -> NSMenu?
  optional func beginObservingDirectoryAtURL(url: NSURL)
  optional func endObservingDirectoryAtURL(url: NSURL)
  optional func requestBadgeIdentifierForURL(url: NSURL)
  optional var toolbarItemName: String { get }
  @NSCopying optional var toolbarItemImage: NSImage { get }
  optional var toolbarItemToolTip: String { get }
}
class FIFinderSync : NSObject, FIFinderSyncProtocol, NSExtensionRequestHandling {
  init()
  func menuForMenuKind(menu: FIMenuKind) -> NSMenu?
  func beginObservingDirectoryAtURL(url: NSURL)
  func endObservingDirectoryAtURL(url: NSURL)
  func requestBadgeIdentifierForURL(url: NSURL)
  var toolbarItemName: String { get }
  @NSCopying var toolbarItemImage: NSImage { get }
  var toolbarItemToolTip: String { get }
  @available(OSX 10.10, *)
  func beginRequestWithExtensionContext(context: NSExtensionContext)
}
