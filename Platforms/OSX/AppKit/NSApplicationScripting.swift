
extension NSApplication {
  var orderedDocuments: [NSDocument] { get }
  var orderedWindows: [NSWindow] { get }
}
extension NSObject {
  class func application(_ sender: NSApplication, delegateHandlesKey key: String) -> Bool
  func application(_ sender: NSApplication, delegateHandlesKey key: String) -> Bool
}
