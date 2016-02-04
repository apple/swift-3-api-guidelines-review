
@available(OSX 10.5, *)
class CBIdentity : Object, Coding, Copying {
  /*not inherited*/ init?(name: String, authority: CBIdentityAuthority)
  @available(OSX 10.11, *)
  /*not inherited*/ init?(uniqueIdentifier uuid: UUID, authority: CBIdentityAuthority)
  @available(OSX, introduced=10.5, deprecated=10.11, message="Use +identityWithUniqueIdentifier:authority: instead.")
  /*not inherited*/ init?(uuidString uuid: String, authority: CBIdentityAuthority)
  /*not inherited*/ init?(persistentReference data: Data)
  var authority: CBIdentityAuthority { get }
  @available(OSX 10.11, *)
  var uniqueIdentifier: UUID { get }
  @available(OSX, introduced=10.5, deprecated=10.11, message="Use the uniqueIdentifier property instead.")
  var uuidString: String { get }
  var fullName: String { get }
  var posixName: String { get }
  var aliases: [String] { get }
  var emailAddress: String? { get }
  var image: NSImage? { get }
  var persistentReference: Data? { get }
  var isHidden: Bool { get }
  func isMemberOfGroup(group: CBGroupIdentity) -> Bool
  init()
  @available(OSX 10.5, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.5, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(OSX 10.5, *)
class CBUserIdentity : CBIdentity, Coding, Copying {
  /*not inherited*/ init?(posixUID uid: uid_t, authority: CBIdentityAuthority)
  var posixUID: uid_t { get }
  var certificate: SecCertificate? { get }
  var isEnabled: Bool { get }
  func authenticateWithPassword(password: String) -> Bool
  init()
  init?(coder aDecoder: Coder)
}
@available(OSX 10.5, *)
class CBGroupIdentity : CBIdentity {
  /*not inherited*/ init?(posixGID gid: gid_t, authority: CBIdentityAuthority)
  var posixGID: gid_t { get }
  @available(OSX 10.11, *)
  var memberIdentities: [CBIdentity] { get }
  init()
  init?(coder aDecoder: Coder)
}
