
@available(OSX 10.10, *)
enum NEOnDemandRuleAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Connect
  case Disconnect
  case EvaluateConnection
  case Ignore
}
@available(OSX 10.10, *)
enum NEOnDemandRuleInterfaceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(OSX 10.11, *)
  case Any
  @available(OSX 10.10, *)
  case Ethernet
  @available(OSX 10.10, *)
  case WiFi
}
@available(OSX 10.10, *)
class NEOnDemandRule : NSObject, NSSecureCoding, NSCopying {
  @available(OSX 10.10, *)
  var action: NEOnDemandRuleAction { get }
  @available(OSX 10.10, *)
  var DNSSearchDomainMatch: [String]?
  @available(OSX 10.10, *)
  var DNSServerAddressMatch: [String]?
  @available(OSX 10.10, *)
  var interfaceTypeMatch: NEOnDemandRuleInterfaceType
  @available(OSX 10.10, *)
  var SSIDMatch: [String]?
  @available(OSX 10.10, *)
  @NSCopying var probeURL: NSURL?
  init()
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(OSX 10.10, *)
class NEOnDemandRuleConnect : NEOnDemandRule {
  init()
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.10, *)
class NEOnDemandRuleDisconnect : NEOnDemandRule {
  init()
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.10, *)
class NEOnDemandRuleIgnore : NEOnDemandRule {
  init()
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.10, *)
class NEOnDemandRuleEvaluateConnection : NEOnDemandRule {
  @available(OSX 10.10, *)
  var connectionRules: [NEEvaluateConnectionRule]?
  init()
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.10, *)
enum NEEvaluateConnectionRuleAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ConnectIfNeeded
  case NeverConnect
}
@available(OSX 10.10, *)
class NEEvaluateConnectionRule : NSObject, NSSecureCoding, NSCopying {
  @available(OSX 10.10, *)
  init(matchDomains domains: [String], andAction action: NEEvaluateConnectionRuleAction)
  @available(OSX 10.10, *)
  var action: NEEvaluateConnectionRuleAction { get }
  @available(OSX 10.10, *)
  var matchDomains: [String] { get }
  @available(OSX 10.10, *)
  var useDNSServers: [String]?
  @available(OSX 10.10, *)
  @NSCopying var probeURL: NSURL?
  init()
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
