
protocol IMServicePlugInPresenceSupport {
  @available(OSX 10.0, *)
  func updateSessionProperties(properties: [NSObject : AnyObject]!)
}
