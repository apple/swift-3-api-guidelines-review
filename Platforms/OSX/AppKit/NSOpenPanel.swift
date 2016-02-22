
class NSOpenPanel : NSSavePanel {
  var urls: [NSURL] { get }
  var resolvesAliases: Bool
  var canChooseDirectories: Bool
  var allowsMultipleSelection: Bool
  var canChooseFiles: Bool
  @available(OSX 10.10, *)
  var canResolveUbiquitousConflicts: Bool
  @available(OSX 10.10, *)
  var canDownloadUbiquitousContents: Bool
  @available(OSX 10.11, *)
  var isAccessoryViewDisclosed: Bool
  init(contentRect contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController contentViewController: NSViewController)
  convenience init()
  init?(coder coder: NSCoder)
  convenience init?(windowRef windowRef: UnsafeMutablePointer<Void>)
}
extension NSOpenPanel {
}
