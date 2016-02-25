
@available(iOS 9.0, *)
class NEFilterDataProvider : NEFilterProvider {
  @available(iOS 9.0, *)
  func handleNewFlow(_ flow: NEFilterFlow) -> NEFilterNewFlowVerdict
  @available(iOS 9.0, *)
  func handleInboundDataFromFlow(_ flow: NEFilterFlow, readBytesStartOffset offset: Int, readBytes readBytes: NSData) -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  func handleOutboundDataFromFlow(_ flow: NEFilterFlow, readBytesStartOffset offset: Int, readBytes readBytes: NSData) -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  func handleInboundDataCompleteForFlow(_ flow: NEFilterFlow) -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  func handleOutboundDataCompleteForFlow(_ flow: NEFilterFlow) -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  func handleRemediationForFlow(_ flow: NEFilterFlow) -> NEFilterRemediationVerdict
  @available(iOS 9.0, *)
  func handleRulesChanged()
}
@available(iOS 9.0, *)
class NEFilterDataVerdict : NEFilterVerdict, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  class func allowVerdict() -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  class func dropVerdict() -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  class func remediateVerdictWithRemediationURLMapKey(_ remediationURLMapKey: String?, remediationButtonTextMapKey remediationButtonTextMapKey: String?) -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  /*not inherited*/ init(passBytes passBytes: Int, peekBytes peekBytes: Int)
  @available(iOS 9.0, *)
  class func needRulesVerdict() -> NEFilterDataVerdict
}
@available(iOS 9.0, *)
class NEFilterRemediationVerdict : NEFilterVerdict, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  class func allowVerdict() -> NEFilterRemediationVerdict
  @available(iOS 9.0, *)
  class func dropVerdict() -> NEFilterRemediationVerdict
  @available(iOS 9.0, *)
  class func needRulesVerdict() -> NEFilterRemediationVerdict
}
