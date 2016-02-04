
var NS_USER_ACTIVITY_SUPPORTED: Int32 { get }
extension NSResponder {
  @available(OSX 10.10, *)
  var userActivity: UserActivity?
  @available(OSX 10.10, *)
  func updateUserActivityState(userActivity: UserActivity)
  @available(OSX 10.10, *)
  func restoreUserActivityState(userActivity: UserActivity)
}
extension NSDocument {
  @available(OSX 10.10, *)
  var userActivity: UserActivity?
  @available(OSX 10.10, *)
  func updateUserActivityState(activity: UserActivity)
  @available(OSX 10.10, *)
  func restoreUserActivityState(activity: UserActivity)
}
@available(OSX 10.10, *)
let NSUserActivityDocumentURLKey: String
