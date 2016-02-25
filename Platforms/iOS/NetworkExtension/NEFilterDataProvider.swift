
@available(iOS 9.0, *)
class NEFilterDataProvider : NEFilterProvider {
  @available(iOS 9.0, *)
  func handleNewFlow(_ flow: NEFilterFlow) -> NEFilterNewFlowVerdict
  @available(iOS 9.0, *)
  func handleInboundData(from flow: NEFilterFlow, readBytesStartOffset offset: Int, readBytes readBytes: NSData) -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  func handleOutboundData(from flow: NEFilterFlow, readBytesStartOffset offset: Int, readBytes readBytes: NSData) -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  func handleInboundDataComplete(for flow: NEFilterFlow) -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  func handleOutboundDataComplete(for flow: NEFilterFlow) -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  func handleRemediation(for flow: NEFilterFlow) -> NEFilterRemediationVerdict
  @available(iOS 9.0, *)
  func handleRulesChanged()
}
@available(iOS 9.0, *)
class NEFilterDataVerdict : NEFilterVerdict, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  class func allow() -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  class func drop() -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  class func remediateVerdict(withRemediationURLMapKey remediationURLMapKey: String?, remediationButtonTextMapKey remediationButtonTextMapKey: String?) -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  /*not inherited*/ init(passBytes passBytes: Int, peekBytes peekBytes: Int)
  @available(iOS 9.0, *)
  class func needRules() -> NEFilterDataVerdict
}
@available(iOS 9.0, *)
class NEFilterRemediationVerdict : NEFilterVerdict, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  class func allow() -> NEFilterRemediationVerdict
  @available(iOS 9.0, *)
  class func drop() -> NEFilterRemediationVerdict
  @available(iOS 9.0, *)
  class func needRules() -> NEFilterRemediationVerdict
}
