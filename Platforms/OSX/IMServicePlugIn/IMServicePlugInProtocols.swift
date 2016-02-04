
protocol IMServicePlugIn : ObjectProtocol {
  init!(serviceApplication: IMServiceApplication!)
  @available(OSX 10.0, *)
  func updateAccountSettings(accountSettings: [Object : AnyObject]!)
  func login()
  func logout()
}
protocol IMServiceApplication : ObjectProtocol {
  func plugInDidLogIn()
  func plugInDidLogOutWithError(error: Error!, reconnect: Bool)
  func plugInDidFailToAuthenticate()
  @available(OSX 10.0, *)
  func plugInDidUpdateProperties(changes: [Object : AnyObject]!, ofHandle handle: String!)
}
