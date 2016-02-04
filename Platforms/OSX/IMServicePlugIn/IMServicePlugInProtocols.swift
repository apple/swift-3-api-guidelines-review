
protocol IMServicePlugIn : NSObjectProtocol {
  init!(serviceApplication: IMServiceApplication!)
  @available(OSX 10.0, *)
  func updateAccountSettings(accountSettings: [NSObject : AnyObject]!)
  func login()
  func logout()
}
protocol IMServiceApplication : NSObjectProtocol {
  func plugInDidLogIn()
  func plugInDidLogOutWithError(error: NSError!, reconnect: Bool)
  func plugInDidFailToAuthenticate()
  @available(OSX 10.0, *)
  func plugInDidUpdateProperties(changes: [NSObject : AnyObject]!, ofHandle handle: String!)
}
