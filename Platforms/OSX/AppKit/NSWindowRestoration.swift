
protocol NSWindowRestoration : ObjectProtocol {
  @available(OSX 10.7, *)
  static func restoreWindowWithIdentifier(identifier: String, state: Coder, completionHandler: (NSWindow?, Error?) -> Void)
}
extension NSDocumentController : NSWindowRestoration {
  @available(OSX 10.7, *)
  class func restoreWindowWithIdentifier(identifier: String, state: Coder, completionHandler: (NSWindow?, Error?) -> Void)
}
extension NSApplication {
  @available(OSX 10.7, *)
  func restoreWindowWithIdentifier(identifier: String, state: Coder, completionHandler: (NSWindow?, Error?) -> Void) -> Bool
}
@available(OSX 10.7, *)
let NSApplicationDidFinishRestoringWindowsNotification: String
extension NSWindow {
  @available(OSX 10.7, *)
  var isRestorable: Bool
  @available(OSX 10.7, *)
  var restorationClass: AnyObject.Type?
  func disableSnapshotRestoration()
  func enableSnapshotRestoration()
}
extension NSResponder {
  @available(OSX 10.7, *)
  func encodeRestorableStateWith(coder: Coder)
  @available(OSX 10.7, *)
  func restoreStateWith(coder: Coder)
  @available(OSX 10.7, *)
  func invalidateRestorableState()
  @available(OSX 10.7, *)
  class func restorableStateKeyPaths() -> [String]
}
extension NSApplication {
  @available(OSX 10.7, *)
  func extendStateRestoration()
  @available(OSX 10.7, *)
  func completeStateRestoration()
}
extension NSDocument {
  @available(OSX 10.7, *)
  func restoreWindowWithIdentifier(identifier: String, state: Coder, completionHandler: (NSWindow?, Error?) -> Void)
  @available(OSX 10.7, *)
  func encodeRestorableStateWith(coder: Coder)
  @available(OSX 10.7, *)
  func restoreStateWith(coder: Coder)
  @available(OSX 10.7, *)
  func invalidateRestorableState()
  @available(OSX 10.7, *)
  class func restorableStateKeyPaths() -> [String]
}
