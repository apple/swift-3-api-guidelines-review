
var NS_USER_ACTIVITY_SUPPORTED: Int32 { get }
extension NSResponder {
  @available(OSX 10.10, *)
  var userActivity: NSUserActivity?
  @available(OSX 10.10, *)
  func updateUserActivityState(userActivity: NSUserActivity)
  @available(OSX 10.10, *)
  func restoreUserActivityState(userActivity: NSUserActivity)
}
extension NSDocument {
  @available(OSX 10.10, *)
  var userActivity: NSUserActivity?
  @available(OSX 10.10, *)
  func updateUserActivityState(activity: NSUserActivity)
  @available(OSX 10.10, *)
  func restoreUserActivityState(activity: NSUserActivity)
}
@available(OSX 10.10, *)
let NSUserActivityDocumentURLKey: String
