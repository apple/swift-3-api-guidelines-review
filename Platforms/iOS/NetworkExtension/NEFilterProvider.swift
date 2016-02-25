
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
  func startFilterWithCompletionHandler(_ completionHandler: (NSError?) -> Void)
  @available(iOS 9.0, *)
  func stopFilterWithReason(_ reason: NEProviderStopReason, completionHandler completionHandler: () -> Void)
  @available(iOS 9.0, *)
  var filterConfiguration: NEFilterProviderConfiguration { get }
}
@available(iOS 9.0, *)
class NEFilterVerdict : NSObject, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 9.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
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
  class func remediateVerdictWithRemediationURLMapKey(_ remediationURLMapKey: String, remediationButtonTextMapKey remediationButtonTextMapKey: String) -> NEFilterNewFlowVerdict
  @available(iOS 9.0, *)
  class func URLAppendStringVerdictWithMapKey(_ urlAppendMapKey: String) -> NEFilterNewFlowVerdict
  @available(iOS 9.0, *)
  class func filterDataVerdictWithFilterInbound(_ filterInbound: Bool, peekInboundBytes peekInboundBytes: Int, filterOutbound filterOutbound: Bool, peekOutboundBytes peekOutboundBytes: Int) -> NEFilterNewFlowVerdict
}
@available(iOS 9.0, *)
class NEFilterControlVerdict : NEFilterNewFlowVerdict, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  class func allowVerdictWithUpdateRules(_ updateRules: Bool) -> NEFilterControlVerdict
  @available(iOS 9.0, *)
  class func dropVerdictWithUpdateRules(_ updateRules: Bool) -> NEFilterControlVerdict
  @available(iOS 9.0, *)
  class func updateRules() -> NEFilterControlVerdict
}
