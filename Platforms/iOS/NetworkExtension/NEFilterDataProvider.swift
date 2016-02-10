
@available(iOS 9.0, *)
class NEFilterDataProvider : NEFilterProvider {
  @available(iOS 9.0, *)
  func handleNewFlow(flow: NEFilterFlow) -> NEFilterNewFlowVerdict
  @available(iOS 9.0, *)
  func handleInboundDataFrom(flow: NEFilterFlow, readBytesStartOffset offset: Int, readBytes: Data) -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  func handleOutboundDataFrom(flow: NEFilterFlow, readBytesStartOffset offset: Int, readBytes: Data) -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  func handleInboundDataCompleteFor(flow: NEFilterFlow) -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  func handleOutboundDataCompleteFor(flow: NEFilterFlow) -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  func handleRemediationFor(flow: NEFilterFlow) -> NEFilterRemediationVerdict
  @available(iOS 9.0, *)
  func handleRulesChanged()
  init()
}
@available(iOS 9.0, *)
class NEFilterDataVerdict : NEFilterVerdict, SecureCoding, Copying {
  @available(iOS 9.0, *)
  class func allow() -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  class func drop() -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  class func remediateVerdict(withRemediationURLMapKey remediationURLMapKey: String?, remediationButtonTextMapKey: String?) -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  /*not inherited*/ init(passBytes: Int, peekBytes: Int)
  @available(iOS 9.0, *)
  class func needRules() -> NEFilterDataVerdict
  init()
  init?(coder aDecoder: Coder)
}
@available(iOS 9.0, *)
class NEFilterRemediationVerdict : NEFilterVerdict, SecureCoding, Copying {
  @available(iOS 9.0, *)
  class func allow() -> NEFilterRemediationVerdict
  @available(iOS 9.0, *)
  class func drop() -> NEFilterRemediationVerdict
  @available(iOS 9.0, *)
  class func needRules() -> NEFilterRemediationVerdict
  init()
  init?(coder aDecoder: Coder)
}
