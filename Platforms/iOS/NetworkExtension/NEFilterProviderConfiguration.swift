
@available(iOS 9.0, *)
class NEFilterProviderConfiguration : Object, SecureCoding, Copying {
  @available(iOS 9.0, *)
  var filterBrowsers: Bool
  @available(iOS 9.0, *)
  var filterSockets: Bool
  @available(iOS 9.0, *)
  var vendorConfiguration: [String : AnyObject]?
  @available(iOS 9.0, *)
  var serverAddress: String?
  @available(iOS 9.0, *)
  var username: String?
  @available(iOS 9.0, *)
  var organization: String?
  @available(iOS 9.0, *)
  @NSCopying var passwordReference: Data?
  @available(iOS 9.0, *)
  @NSCopying var identityReference: Data?
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 9.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
