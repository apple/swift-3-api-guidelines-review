
@available(iOS 9.0, *)
class NEFilterControlProvider : NEFilterProvider {
  @available(iOS 9.0, *)
  var remediationMap: [String : [String : Object]]?
  @available(iOS 9.0, *)
  var urlAppendStringMap: [String : String]?
  @available(iOS 9.0, *)
  func handleRemediation(for flow: NEFilterFlow, completionHandler: (NEFilterControlVerdict) -> Void)
  @available(iOS 9.0, *)
  func handleNewFlow(flow: NEFilterFlow, completionHandler: (NEFilterControlVerdict) -> Void)
  @available(iOS 9.0, *)
  func notifyRulesChanged()
  init()
}
