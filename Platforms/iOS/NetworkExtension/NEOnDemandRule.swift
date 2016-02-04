
@available(iOS 8.0, *)
enum NEOnDemandRuleAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Connect
  case Disconnect
  case EvaluateConnection
  case Ignore
}
@available(iOS 8.0, *)
enum NEOnDemandRuleInterfaceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 9.0, *)
  case Any
  @available(iOS 8.0, *)
  case WiFi
  @available(iOS 8.0, *)
  case Cellular
}
@available(iOS 8.0, *)
class NEOnDemandRule : NSObject, NSSecureCoding, NSCopying {
  @available(iOS 8.0, *)
  var action: NEOnDemandRuleAction { get }
  @available(iOS 8.0, *)
  var DNSSearchDomainMatch: [String]?
  @available(iOS 8.0, *)
  var DNSServerAddressMatch: [String]?
  @available(iOS 8.0, *)
  var interfaceTypeMatch: NEOnDemandRuleInterfaceType
  @available(iOS 8.0, *)
  var SSIDMatch: [String]?
  @available(iOS 8.0, *)
  @NSCopying var probeURL: NSURL?
  init()
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 8.0, *)
class NEOnDemandRuleConnect : NEOnDemandRule {
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
class NEOnDemandRuleDisconnect : NEOnDemandRule {
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
class NEOnDemandRuleIgnore : NEOnDemandRule {
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
class NEOnDemandRuleEvaluateConnection : NEOnDemandRule {
  @available(iOS 8.0, *)
  var connectionRules: [NEEvaluateConnectionRule]?
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
enum NEEvaluateConnectionRuleAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ConnectIfNeeded
  case NeverConnect
}
@available(iOS 8.0, *)
class NEEvaluateConnectionRule : NSObject, NSSecureCoding, NSCopying {
  @available(iOS 8.0, *)
  init(matchDomains domains: [String], andAction action: NEEvaluateConnectionRuleAction)
  @available(iOS 8.0, *)
  var action: NEEvaluateConnectionRuleAction { get }
  @available(iOS 8.0, *)
  var matchDomains: [String] { get }
  @available(iOS 8.0, *)
  var useDNSServers: [String]?
  @available(iOS 8.0, *)
  @NSCopying var probeURL: NSURL?
  init()
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
