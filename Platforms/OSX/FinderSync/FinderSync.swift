
class FIFinderSyncController : ExtensionContext {
  class func defaultController() -> Self
  var directoryURLs: Set<URL>!
  func setBadgeImage(image: NSImage, label: String?, forBadgeIdentifier badgeID: String)
  func setBadgeIdentifier(badgeID: String, forURL url: URL)
  func targetedURL() -> URL?
  func selectedItemURLs() -> [URL]?
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
  optional func beginObservingDirectoryAt(url: URL)
  optional func endObservingDirectoryAt(url: URL)
  optional func requestBadgeIdentifierFor(url: URL)
  optional var toolbarItemName: String { get }
  @NSCopying optional var toolbarItemImage: NSImage { get }
  optional var toolbarItemToolTip: String { get }
}
class FIFinderSync : Object, FIFinderSyncProtocol, ExtensionRequestHandling {
  init()
  func menuFor(menu: FIMenuKind) -> NSMenu?
  func beginObservingDirectoryAt(url: URL)
  func endObservingDirectoryAt(url: URL)
  func requestBadgeIdentifierFor(url: URL)
  var toolbarItemName: String { get }
  @NSCopying var toolbarItemImage: NSImage { get }
  var toolbarItemToolTip: String { get }
  @available(OSX 10.10, *)
  func beginRequest(context: ExtensionContext)
}
