
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
  func startFilter(withCompletionHandler completionHandler: (Error?) -> Void)
  @available(iOS 9.0, *)
  func stopFilter(withReason reason: NEProviderStopReason, completionHandler: () -> Void)
  @available(iOS 9.0, *)
  var filterConfiguration: NEFilterProviderConfiguration { get }
  init()
}
@available(iOS 9.0, *)
class NEFilterVerdict : Object, SecureCoding, Copying {
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 9.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
@available(iOS 9.0, *)
class NEFilterNewFlowVerdict : NEFilterVerdict, SecureCoding, Copying {
  @available(iOS 9.0, *)
  class func needRules() -> NEFilterNewFlowVerdict
  @available(iOS 9.0, *)
  class func allow() -> NEFilterNewFlowVerdict
  @available(iOS 9.0, *)
  class func drop() -> NEFilterNewFlowVerdict
  @available(iOS 9.0, *)
  class func remediateVerdict(withRemediationURLMapKey remediationURLMapKey: String, remediationButtonTextMapKey: String) -> NEFilterNewFlowVerdict
  @available(iOS 9.0, *)
  class func urlAppendStringVerdict(withMapKey urlAppendMapKey: String) -> NEFilterNewFlowVerdict
  @available(iOS 9.0, *)
  class func filterDataVerdict(withFilterInbound filterInbound: Bool, peekInboundBytes: Int, filterOutbound: Bool, peekOutboundBytes: Int) -> NEFilterNewFlowVerdict
  init()
  init?(coder aDecoder: Coder)
}
@available(iOS 9.0, *)
class NEFilterControlVerdict : NEFilterNewFlowVerdict, SecureCoding, Copying {
  @available(iOS 9.0, *)
  class func allow(updateRules updateRules: Bool) -> NEFilterControlVerdict
  @available(iOS 9.0, *)
  class func drop(updateRules updateRules: Bool) -> NEFilterControlVerdict
  @available(iOS 9.0, *)
  class func updateRules() -> NEFilterControlVerdict
  init()
  init?(coder aDecoder: Coder)
}
