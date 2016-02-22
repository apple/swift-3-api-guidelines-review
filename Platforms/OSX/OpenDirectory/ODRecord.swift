
class ODRecord : NSObject {
  @available(OSX 10.6, *)
  func setNodeCredentials(inUsername: String!, password inPassword: String!) throws
  @available(OSX 10.6, *)
  func setNodeCredentialsWithRecordType(inRecordType: String!, authenticationType inType: String!, authenticationItems inItems: [AnyObject]!, continueItems outItems: AutoreleasingUnsafeMutablePointer<NSArray?>, context outContext: AutoreleasingUnsafeMutablePointer<AnyObject?>) throws
  @available(OSX 10.6, *)
  func verifyPassword(inPassword: String!) throws
  @available(OSX 10.6, *)
  func verifyExtended(withAuthenticationType inType: String!, authenticationItems inItems: [AnyObject]!, continueItems outItems: AutoreleasingUnsafeMutablePointer<NSArray?>, context outContext: AutoreleasingUnsafeMutablePointer<AnyObject?>) throws
  @available(OSX 10.6, *)
  func changePassword(oldPassword: String!, toPassword newPassword: String!) throws
  @available(OSX 10.6, *)
  func synchronize() throws
  @available(OSX 10.6, *)
  var recordType: String! { get }
  @available(OSX 10.6, *)
  var recordName: String! { get }
  @available(OSX 10.6, *)
  func recordDetails(forAttributes inAttributes: [AnyObject]!) throws -> [NSObject : AnyObject]
  @available(OSX 10.6, *)
  func values(forAttribute inAttribute: String!) throws -> [AnyObject]
  @available(OSX 10.6, *)
  func setValue(inValueOrValues: AnyObject!, forAttribute inAttribute: String!) throws
  @available(OSX 10.6, *)
  func removeValues(forAttribute inAttribute: String!) throws
  @available(OSX 10.6, *)
  func addValue(inValue: AnyObject!, toAttribute inAttribute: String!) throws
  @available(OSX 10.6, *)
  func removeValue(inValue: AnyObject!, fromAttribute inAttribute: String!) throws
  @available(OSX 10.6, *)
  func delete() throws
  @available(OSX, introduced=10.9, deprecated=10.10, message="use accountPoliciesAndReturnError:")
  func policies() throws -> [NSObject : AnyObject]
  @available(OSX, introduced=10.9, deprecated=10.10, message="use authenticationAllowedAndReturnError: and similar methods")
  func effectivePolicies() throws -> [NSObject : AnyObject]
  @available(OSX, introduced=10.9, deprecated=10.10)
  func supportedPolicies() throws -> [NSObject : AnyObject]
  @available(OSX, introduced=10.9, deprecated=10.10, message="use setAccountPolicies:error:")
  func setPolicies(policies: [NSObject : AnyObject]!) throws
  @available(OSX, introduced=10.9, deprecated=10.10, message="use addAccountPolicy:toCategory:error:")
  func setPolicy(policy: ODPolicyType!, value: AnyObject!) throws
  @available(OSX, introduced=10.9, deprecated=10.10, message="use removeAccountPolicy:fromCategory:error:")
  func remove(policy: ODPolicyType!) throws
  @available(OSX 10.10, *)
  func addAccountPolicy(policy: [NSObject : AnyObject]!, toCategory category: String!) throws
  @available(OSX 10.10, *)
  func removeAccountPolicy(policy: [NSObject : AnyObject]!, fromCategory category: String!) throws
  @available(OSX 10.10, *)
  func setAccountPolicies(policies: [NSObject : AnyObject]!) throws
  @available(OSX 10.10, *)
  func accountPolicies() throws -> [NSObject : AnyObject]
  @available(OSX 10.10, *)
  func authenticationAllowed() throws
  @available(OSX 10.10, *)
  func passwordChangeAllowed(newPassword: String!) throws
  @available(OSX 10.10, *)
  func willPasswordExpire(willExpireIn: UInt64) -> Bool
  @available(OSX 10.10, *)
  func willAuthenticationsExpire(willExpireIn: UInt64) -> Bool
  @available(OSX 10.10, *)
  var secondsUntilPasswordExpires: Int64 { get }
  @available(OSX 10.10, *)
  var secondsUntilAuthenticationsExpire: Int64 { get }
  init()
}
extension ODRecord {
  @available(OSX 10.6, *)
  func addMemberRecord(inRecord: ODRecord!) throws
  @available(OSX 10.6, *)
  func removeMemberRecord(inRecord: ODRecord!) throws
  @available(OSX 10.6, *)
  func isMemberRecord(inRecord: ODRecord!) throws
}
