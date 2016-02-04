
extension NSApplication {
  var orderedDocuments: [NSDocument] { get }
  var orderedWindows: [NSWindow] { get }
}
extension Object {
  class func application(sender: NSApplication, delegateHandlesKey key: String) -> Bool
  func application(sender: NSApplication, delegateHandlesKey key: String) -> Bool
}
