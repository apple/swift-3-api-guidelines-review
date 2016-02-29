
class ODNode : NSObject {
  @available(OSX 10.6, *)
  init(session inSession: ODSession!, type inType: ODNodeType) throws
  @available(OSX 10.6, *)
  init(session inSession: ODSession!, name inName: String!) throws
  @available(OSX 10.6, *)
  func subnodeNames() throws -> [AnyObject]
  @available(OSX 10.6, *)
  func unreachableSubnodeNames() throws -> [AnyObject]
  @available(OSX 10.6, *)
  var nodeName: String! { get }
  @available(OSX 10.6, *)
  func nodeDetails(forKeys inKeys: [AnyObject]!) throws -> [NSObject : AnyObject]
  @available(OSX 10.6, *)
  func supportedRecordTypes() throws -> [AnyObject]
  @available(OSX 10.6, *)
  func supportedAttributes(forRecordType inRecordType: String!) throws -> [AnyObject]
  @available(OSX 10.6, *)
  func setCredentialsWithRecordType(_ inRecordType: String!, recordName inRecordName: String!, password inPassword: String!) throws
  @available(OSX 10.6, *)
  func setCredentialsWithRecordType(_ inRecordType: String!, authenticationType inType: String!, authenticationItems inItems: [AnyObject]!, continueItems outItems: AutoreleasingUnsafeMutablePointer<NSArray?>, context outContext: AutoreleasingUnsafeMutablePointer<AnyObject?>) throws
  @available(OSX 10.6, *)
  func setCredentialsUsingKerberosCache(_ inCacheName: String!) throws
  @available(OSX 10.6, *)
  func createRecord(withRecordType inRecordType: String!, name inRecordName: String!, attributes inAttributes: [NSObject : AnyObject]! = [:]) throws -> ODRecord
  @available(OSX 10.6, *)
  func record(withRecordType inRecordType: String!, name inRecordName: String!, attributes inAttributes: AnyObject!) throws -> ODRecord
  @available(OSX 10.6, *)
  func customCall(_ inCustomCode: Int, send inSendData: NSData!) throws -> NSData
  @available(OSX 10.9, *)
  func customFunction(_ function: String!, payload payload: AnyObject!) throws -> AnyObject
  var configuration: ODConfiguration! { get }
  @available(OSX, introduced=10.9, deprecated=10.10, message="use accountPoliciesAndReturnError:")
  func policies() throws -> [NSObject : AnyObject]
  @available(OSX, introduced=10.9, deprecated=10.10)
  func supportedPolicies() throws -> [NSObject : AnyObject]
  @available(OSX, introduced=10.9, deprecated=10.10, message="use setAccountPolicies:error:")
  func setPolicies(_ policies: [NSObject : AnyObject]!) throws
  @available(OSX, introduced=10.9, deprecated=10.10, message="use addAccountPolicy:toCategory:error:")
  func setPolicy(_ policy: ODPolicyType!, value value: AnyObject!) throws
  @available(OSX, introduced=10.9, deprecated=10.10, message="use removeAccountPolicy:fromCategory:error:")
  func remove(_ policy: ODPolicyType!) throws
  @available(OSX 10.10, *)
  func addAccountPolicy(_ policy: [NSObject : AnyObject]!, toCategory category: String!) throws
  @available(OSX 10.10, *)
  func removeAccountPolicy(_ policy: [NSObject : AnyObject]!, fromCategory category: String!) throws
  @available(OSX 10.10, *)
  func setAccountPolicies(_ policies: [NSObject : AnyObject]!) throws
  @available(OSX 10.10, *)
  func accountPolicies() throws -> [NSObject : AnyObject]
  @available(OSX 10.10, *)
  func passwordContentCheck(_ password: String!, forRecordName recordName: String!) throws
}
