
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
  func nodeDetailsForKeys(inKeys: [AnyObject]!) throws -> [NSObject : AnyObject]
  @available(OSX 10.6, *)
  func supportedRecordTypes() throws -> [AnyObject]
  @available(OSX 10.6, *)
  func supportedAttributesForRecordType(inRecordType: String!) throws -> [AnyObject]
  @available(OSX 10.6, *)
  func setCredentialsWithRecordType(inRecordType: String!, recordName inRecordName: String!, password inPassword: String!) throws
  @available(OSX 10.6, *)
  func setCredentialsWithRecordType(inRecordType: String!, authenticationType inType: String!, authenticationItems inItems: [AnyObject]!, continueItems outItems: AutoreleasingUnsafeMutablePointer<NSArray?>, context outContext: AutoreleasingUnsafeMutablePointer<AnyObject?>) throws
  @available(OSX 10.6, *)
  func setCredentialsUsingKerberosCache(inCacheName: String!) throws
  @available(OSX 10.6, *)
  func createRecordWithRecordType(inRecordType: String!, name inRecordName: String!, attributes inAttributes: [NSObject : AnyObject]!) throws -> ODRecord
  @available(OSX 10.6, *)
  func recordWithRecordType(inRecordType: String!, name inRecordName: String!, attributes inAttributes: AnyObject!) throws -> ODRecord
  @available(OSX 10.6, *)
  func customCall(inCustomCode: Int, sendData inSendData: NSData!) throws -> NSData
  @available(OSX 10.9, *)
  func customFunction(function: String!, payload: AnyObject!) throws -> AnyObject
  var configuration: ODConfiguration! { get }
  @available(OSX, introduced=10.9, deprecated=10.10, message="use accountPoliciesAndReturnError:")
  func policies() throws -> [NSObject : AnyObject]
  @available(OSX, introduced=10.9, deprecated=10.10)
  func supportedPolicies() throws -> [NSObject : AnyObject]
  @available(OSX, introduced=10.9, deprecated=10.10, message="use setAccountPolicies:error:")
  func setPolicies(policies: [NSObject : AnyObject]!) throws
  @available(OSX, introduced=10.9, deprecated=10.10, message="use addAccountPolicy:toCategory:error:")
  func setPolicy(policy: ODPolicyType!, value: AnyObject!) throws
  @available(OSX, introduced=10.9, deprecated=10.10, message="use removeAccountPolicy:fromCategory:error:")
  func removePolicy(policy: ODPolicyType!) throws
  @available(OSX 10.10, *)
  func addAccountPolicy(policy: [NSObject : AnyObject]!, toCategory category: String!) throws
  @available(OSX 10.10, *)
  func removeAccountPolicy(policy: [NSObject : AnyObject]!, fromCategory category: String!) throws
  @available(OSX 10.10, *)
  func setAccountPolicies(policies: [NSObject : AnyObject]!) throws
  @available(OSX 10.10, *)
  func accountPolicies() throws -> [NSObject : AnyObject]
  @available(OSX 10.10, *)
  func passwordContentCheck(password: String!, forRecordName recordName: String!) throws
  init()
}
