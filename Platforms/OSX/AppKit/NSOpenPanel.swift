
class NSOpenPanel : NSSavePanel {
  var URLs: [NSURL] { get }
  var resolvesAliases: Bool
  var canChooseDirectories: Bool
  var allowsMultipleSelection: Bool
  var canChooseFiles: Bool
  @available(OSX 10.10, *)
  var canResolveUbiquitousConflicts: Bool
  @available(OSX 10.10, *)
  var canDownloadUbiquitousContents: Bool
  @available(OSX 10.11, *)
  var accessoryViewDisclosed: Bool
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: NSCoder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
extension NSOpenPanel {
}
