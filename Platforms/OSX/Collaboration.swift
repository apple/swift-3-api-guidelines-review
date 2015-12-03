
@available(OSX 10.5, *)
class CBIdentity : NSObject, NSCoding, NSCopying {
  /*not inherited*/ init?(name: String, authority: CBIdentityAuthority)
  @available(OSX 10.11, *)
  /*not inherited*/ init?(uniqueIdentifier uuid: NSUUID, authority: CBIdentityAuthority)
  @available(OSX, introduced=10.5, deprecated=10.11, message="Use +identityWithUniqueIdentifier:authority: instead.")
  /*not inherited*/ init?(uuidString uuid: String, authority: CBIdentityAuthority)
  /*not inherited*/ init?(persistentReference data: NSData)
  var authority: CBIdentityAuthority { get }
  @available(OSX 10.11, *)
  var uniqueIdentifier: NSUUID { get }
  @available(OSX, introduced=10.5, deprecated=10.11, message="Use the uniqueIdentifier property instead.")
  var uuidString: String { get }
  var fullName: String { get }
  var posixName: String { get }
  var aliases: [String] { get }
  var emailAddress: String? { get }
  var image: NSImage? { get }
  var persistentReference: NSData? { get }
  var isHidden: Bool { get }
  func isMemberOfGroup(group: CBGroupIdentity) -> Bool
  init()
  @available(OSX 10.5, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.5, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.5, *)
class CBUserIdentity : CBIdentity, NSCoding, NSCopying {
  /*not inherited*/ init?(posixUID uid: uid_t, authority: CBIdentityAuthority)
  var posixUID: uid_t { get }
  var certificate: SecCertificate? { get }
  var isEnabled: Bool { get }
  func authenticateWithPassword(password: String) -> Bool
  init()
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.5, *)
class CBGroupIdentity : CBIdentity {
  /*not inherited*/ init?(posixGID gid: gid_t, authority: CBIdentityAuthority)
  var posixGID: gid_t { get }
  @available(OSX 10.11, *)
  var memberIdentities: [CBIdentity] { get }
  init()
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.5, *)
class CBIdentityAuthority : NSObject {
  class func local() -> CBIdentityAuthority
  class func managed() -> CBIdentityAuthority
  class func defaultIdentityAuthority() -> CBIdentityAuthority
  var localizedName: String { get }
  init()
}
@available(OSX 10.5, *)
class CBIdentityPicker : NSObject {
  var title: String?
  var allowsMultipleSelection: Bool
  func runModal() -> Int
  @available(OSX, introduced=10.5, deprecated=10.11)
  func runModalFor(window: NSWindow, modalDelegate delegate: AnyObject?, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func runModalFor(window: NSWindow, completionHandler: ((NSModalResponse) -> Void)? = nil)
  var identities: [CBIdentity] { get }
  init()
}
