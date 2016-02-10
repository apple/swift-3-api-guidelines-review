
@available(OSX 10.11, *)
class NEFilterProviderConfiguration : Object, SecureCoding, Copying {
  @available(OSX 10.11, *)
  var filterBrowsers: Bool
  @available(OSX 10.11, *)
  var filterSockets: Bool
  @available(OSX 10.11, *)
  var vendorConfiguration: [String : AnyObject]?
  @available(OSX 10.11, *)
  var serverAddress: String?
  @available(OSX 10.11, *)
  var username: String?
  @available(OSX 10.11, *)
  var organization: String?
  @available(OSX 10.11, *)
  @NSCopying var passwordReference: Data?
  @available(OSX 10.11, *)
  @NSCopying var identityReference: Data?
  init()
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.11, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
