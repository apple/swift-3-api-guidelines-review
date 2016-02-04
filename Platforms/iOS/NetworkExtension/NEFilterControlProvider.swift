
@available(iOS 9.0, *)
class NEFilterControlProvider : NEFilterProvider {
  @available(iOS 9.0, *)
  var remediationMap: [String : [String : NSObject]]?
  @available(iOS 9.0, *)
  var URLAppendStringMap: [String : String]?
  @available(iOS 9.0, *)
  func handleRemediationForFlow(flow: NEFilterFlow, completionHandler: (NEFilterControlVerdict) -> Void)
  @available(iOS 9.0, *)
  func handleNewFlow(flow: NEFilterFlow, completionHandler: (NEFilterControlVerdict) -> Void)
  @available(iOS 9.0, *)
  func notifyRulesChanged()
  init()
}
