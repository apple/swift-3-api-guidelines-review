
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
  func startFilter(completionHandler completionHandler: (NSError?) -> Void)
  @available(iOS 9.0, *)
  func stopFilter(with reason: NEProviderStopReason, completionHandler completionHandler: () -> Void)
  @available(iOS 9.0, *)
  var filterConfiguration: NEFilterProviderConfiguration { get }
}
@available(iOS 9.0, *)
class NEFilterVerdict : NSObject, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 9.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
@available(iOS 9.0, *)
class NEFilterNewFlowVerdict : NEFilterVerdict, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  class func needRules() -> NEFilterNewFlowVerdict
  @available(iOS 9.0, *)
  class func allow() -> NEFilterNewFlowVerdict
  @available(iOS 9.0, *)
  class func drop() -> NEFilterNewFlowVerdict
  @available(iOS 9.0, *)
  class func remediateVerdict(withRemediationURLMapKey remediationURLMapKey: String, remediationButtonTextMapKey remediationButtonTextMapKey: String) -> NEFilterNewFlowVerdict
  @available(iOS 9.0, *)
  class func urlAppendStringVerdict(withMapKey urlAppendMapKey: String) -> NEFilterNewFlowVerdict
  @available(iOS 9.0, *)
  class func filterDataVerdict(withFilterInbound filterInbound: Bool, peekInboundBytes peekInboundBytes: Int, filterOutbound filterOutbound: Bool, peekOutboundBytes peekOutboundBytes: Int) -> NEFilterNewFlowVerdict
}
@available(iOS 9.0, *)
class NEFilterControlVerdict : NEFilterNewFlowVerdict, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  class func allow(withUpdateRules updateRules: Bool) -> NEFilterControlVerdict
  @available(iOS 9.0, *)
  class func drop(withUpdateRules updateRules: Bool) -> NEFilterControlVerdict
  @available(iOS 9.0, *)
  class func updateRules() -> NEFilterControlVerdict
}
