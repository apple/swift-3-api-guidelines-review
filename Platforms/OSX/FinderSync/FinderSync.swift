
class FIFinderSyncController : NSExtensionContext {
  class func defaultController() -> Self
  var directoryURLs: Set<NSURL>!
  func setBadgeImage(_ image: NSImage, label label: String?, forBadgeIdentifier badgeID: String)
  func setBadgeIdentifier(_ badgeID: String, forURL url: NSURL)
  func targetedURL() -> NSURL?
  func selectedItemURLs() -> [NSURL]?
}
enum FIMenuKind : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case ContextualMenuForItems
  case ContextualMenuForContainer
  case ContextualMenuForSidebar
  case ToolbarItemMenu
}
protocol FIFinderSyncProtocol {
  optional func menuForMenuKind(_ menu: FIMenuKind) -> NSMenu?
  optional func beginObservingDirectoryAtURL(_ url: NSURL)
  optional func endObservingDirectoryAtURL(_ url: NSURL)
  optional func requestBadgeIdentifierForURL(_ url: NSURL)
  optional var toolbarItemName: String { get }
  @NSCopying optional var toolbarItemImage: NSImage { get }
  optional var toolbarItemToolTip: String { get }
}
class FIFinderSync : NSObject, FIFinderSyncProtocol, NSExtensionRequestHandling {
  func menuForMenuKind(_ menu: FIMenuKind) -> NSMenu?
  func beginObservingDirectoryAtURL(_ url: NSURL)
  func endObservingDirectoryAtURL(_ url: NSURL)
  func requestBadgeIdentifierForURL(_ url: NSURL)
  var toolbarItemName: String { get }
  @NSCopying var toolbarItemImage: NSImage { get }
  var toolbarItemToolTip: String { get }
  @available(OSX 10.10, *)
  func beginRequestWithExtensionContext(_ context: NSExtensionContext)
}
