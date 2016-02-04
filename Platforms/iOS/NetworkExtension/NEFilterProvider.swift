
@available(iOS 9.0, *)
let NEFilterProviderRemediationMapRemediationURLs: String
@available(iOS 9.0, *)
let NEFilterProviderRemediationMapRemediationButtonTexts: String
var NEFilterProviderRemediationURLFlowURLHostname: String { get }
var NEFilterProviderRemediationURLFlowURL: String { get }
var NEFilterProviderRemediationURLOrganization: String { get }
var NEFilterProviderRemediationURLUsername: String { get }
@available(iOS 9.0, *)
class NEFilterProvider : NEProvider {
  @available(iOS 9.0, *)
  func startFilterWithCompletionHandler(completionHandler: (NSError?) -> Void)
  @available(iOS 9.0, *)
  func stopFilterWithReason(reason: NEProviderStopReason, completionHandler: () -> Void)
  @available(iOS 9.0, *)
  var filterConfiguration: NEFilterProviderConfiguration { get }
  init()
}
@available(iOS 9.0, *)
class NEFilterVerdict : NSObject, NSSecureCoding, NSCopying {
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 9.0, *)
class NEFilterNewFlowVerdict : NEFilterVerdict, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  class func needRulesVerdict() -> NEFilterNewFlowVerdict
  @available(iOS 9.0, *)
  class func allowVerdict() -> NEFilterNewFlowVerdict
  @available(iOS 9.0, *)
  class func dropVerdict() -> NEFilterNewFlowVerdict
  @available(iOS 9.0, *)
  class func remediateVerdictWithRemediationURLMapKey(remediationURLMapKey: String, remediationButtonTextMapKey: String) -> NEFilterNewFlowVerdict
  @available(iOS 9.0, *)
  class func URLAppendStringVerdictWithMapKey(urlAppendMapKey: String) -> NEFilterNewFlowVerdict
  @available(iOS 9.0, *)
  class func filterDataVerdictWithFilterInbound(filterInbound: Bool, peekInboundBytes: Int, filterOutbound: Bool, peekOutboundBytes: Int) -> NEFilterNewFlowVerdict
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 9.0, *)
class NEFilterControlVerdict : NEFilterNewFlowVerdict, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  class func allowVerdictWithUpdateRules(updateRules: Bool) -> NEFilterControlVerdict
  @available(iOS 9.0, *)
  class func dropVerdictWithUpdateRules(updateRules: Bool) -> NEFilterControlVerdict
  @available(iOS 9.0, *)
  class func updateRules() -> NEFilterControlVerdict
  init()
  init?(coder aDecoder: NSCoder)
}
