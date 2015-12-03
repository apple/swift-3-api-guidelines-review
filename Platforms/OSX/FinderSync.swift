
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
  optional func menuFor(menu: FIMenuKind) -> NSMenu?
  optional func beginObservingDirectoryAt(url: NSURL)
  optional func endObservingDirectoryAt(url: NSURL)
  optional func requestBadgeIdentifierFor(url: NSURL)
  optional var toolbarItemName: String { get }
  @NSCopying optional var toolbarItemImage: NSImage { get }
  optional var toolbarItemToolTip: String { get }
}
class FIFinderSync : NSObject, FIFinderSyncProtocol, NSExtensionRequestHandling {
  init()
  func menuFor(menu: FIMenuKind) -> NSMenu?
  func beginObservingDirectoryAt(url: NSURL)
  func endObservingDirectoryAt(url: NSURL)
  func requestBadgeIdentifierFor(url: NSURL)
  var toolbarItemName: String { get }
  @NSCopying var toolbarItemImage: NSImage { get }
  var toolbarItemToolTip: String { get }
  @available(OSX 10.10, *)
  func beginRequestWith(context: NSExtensionContext)
}
