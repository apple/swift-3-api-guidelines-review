
@available(iOS 9.0, *)
class NEFilterDataProvider : NEFilterProvider {
  @available(iOS 9.0, *)
  func handleNewFlow(flow: NEFilterFlow) -> NEFilterNewFlowVerdict
  @available(iOS 9.0, *)
  func handleInboundDataFromFlow(flow: NEFilterFlow, readBytesStartOffset offset: Int, readBytes: NSData) -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  func handleOutboundDataFromFlow(flow: NEFilterFlow, readBytesStartOffset offset: Int, readBytes: NSData) -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  func handleInboundDataCompleteForFlow(flow: NEFilterFlow) -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  func handleOutboundDataCompleteForFlow(flow: NEFilterFlow) -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  func handleRemediationForFlow(flow: NEFilterFlow) -> NEFilterRemediationVerdict
  @available(iOS 9.0, *)
  func handleRulesChanged()
  init()
}
@available(iOS 9.0, *)
class NEFilterDataVerdict : NEFilterVerdict, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  class func allowVerdict() -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  class func dropVerdict() -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  class func remediateVerdictWithRemediationURLMapKey(remediationURLMapKey: String?, remediationButtonTextMapKey: String?) -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  /*not inherited*/ init(passBytes: Int, peekBytes: Int)
  @available(iOS 9.0, *)
  class func needRulesVerdict() -> NEFilterDataVerdict
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 9.0, *)
class NEFilterRemediationVerdict : NEFilterVerdict, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  class func allowVerdict() -> NEFilterRemediationVerdict
  @available(iOS 9.0, *)
  class func dropVerdict() -> NEFilterRemediationVerdict
  @available(iOS 9.0, *)
  class func needRulesVerdict() -> NEFilterRemediationVerdict
  init()
  init?(coder aDecoder: NSCoder)
}
