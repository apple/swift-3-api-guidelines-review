
@available(iOS 9.0, *)
class NEFilterControlProvider : NEFilterProvider {
  @available(iOS 9.0, *)
  var remediationMap: [String : [String : NSObject]]?
  @available(iOS 9.0, *)
  var URLAppendStringMap: [String : String]?
  @available(iOS 9.0, *)
  func handleRemediationForFlow(_ flow: NEFilterFlow, completionHandler completionHandler: (NEFilterControlVerdict) -> Void)
  @available(iOS 9.0, *)
  func handleNewFlow(_ flow: NEFilterFlow, completionHandler completionHandler: (NEFilterControlVerdict) -> Void)
  @available(iOS 9.0, *)
  func notifyRulesChanged()
}
