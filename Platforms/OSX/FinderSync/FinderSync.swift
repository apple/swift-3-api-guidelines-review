
class FIFinderSyncController : NSExtensionContext {
  class func defaultController() -> Self
  var directoryURLs: Set<NSURL>!
  func setBadgeImage(_ image: NSImage, label label: String?, forBadgeIdentifier badgeID: String)
  func setBadgeIdentifier(_ badgeID: String, for url: NSURL)
  func targetedURL() -> NSURL?
  func selectedItemURLs() -> [NSURL]?
}
enum FIMenuKind : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case contextualMenuForItems
  case contextualMenuForContainer
  case contextualMenuForSidebar
  case toolbarItemMenu
}
protocol FIFinderSyncProtocol {
  optional func menu(for menu: FIMenuKind) -> NSMenu?
  optional func beginObservingDirectory(at url: NSURL)
  optional func endObservingDirectory(at url: NSURL)
  optional func requestBadgeIdentifier(for url: NSURL)
  optional var toolbarItemName: String { get }
  @NSCopying optional var toolbarItemImage: NSImage { get }
  optional var toolbarItemToolTip: String { get }
}
class FIFinderSync : NSObject, FIFinderSyncProtocol, NSExtensionRequestHandling {
  func menu(for menu: FIMenuKind) -> NSMenu?
  func beginObservingDirectory(at url: NSURL)
  func endObservingDirectory(at url: NSURL)
  func requestBadgeIdentifier(for url: NSURL)
  var toolbarItemName: String { get }
  @NSCopying var toolbarItemImage: NSImage { get }
  var toolbarItemToolTip: String { get }
  @available(OSX 10.10, *)
  func beginRequest(with context: NSExtensionContext)
}
