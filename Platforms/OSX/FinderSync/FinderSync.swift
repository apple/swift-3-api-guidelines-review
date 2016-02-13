
class FIFinderSyncController : ExtensionContext {
  class func defaultController() -> Self
  var directoryURLs: Set<URL>!
  func setBadgeImage(image: NSImage, label: String?, forBadgeIdentifier badgeID: String)
  func setBadgeIdentifier(badgeID: String, for url: URL)
  func targetedURL() -> URL?
  func selectedItemURLs() -> [URL]?
  init()
}
enum FIMenuKind : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case contextualMenuForItems
  case contextualMenuForContainer
  case contextualMenuForSidebar
  case toolbarItemMenu
}
protocol FIFinderSyncProtocol {
  optional func menu(for menu: FIMenuKind) -> NSMenu?
  optional func beginObservingDirectory(at url: URL)
  optional func endObservingDirectory(at url: URL)
  optional func requestBadgeIdentifier(for url: URL)
  optional var toolbarItemName: String { get }
  @NSCopying optional var toolbarItemImage: NSImage { get }
  optional var toolbarItemToolTip: String { get }
}
class FIFinderSync : Object, FIFinderSyncProtocol, ExtensionRequestHandling {
  init()
  func menu(for menu: FIMenuKind) -> NSMenu?
  func beginObservingDirectory(at url: URL)
  func endObservingDirectory(at url: URL)
  func requestBadgeIdentifier(for url: URL)
  var toolbarItemName: String { get }
  @NSCopying var toolbarItemImage: NSImage { get }
  var toolbarItemToolTip: String { get }
  @available(OSX 10.10, *)
  func beginRequest(with context: ExtensionContext)
}
