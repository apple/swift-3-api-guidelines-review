
enum UIGuidedAccessRestrictionState : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Allow
  case Deny
}
@available(iOS 7.0, *)
protocol UIGuidedAccessRestrictionDelegate : NSObjectProtocol {
  func guidedAccessRestrictionIdentifiers() -> [String]?
  func guidedAccessRestrictionWithIdentifier(_ restrictionIdentifier: String, didChangeState newRestrictionState: UIGuidedAccessRestrictionState)
  func textForGuidedAccessRestrictionWithIdentifier(_ restrictionIdentifier: String) -> String?
  optional func detailTextForGuidedAccessRestrictionWithIdentifier(_ restrictionIdentifier: String) -> String?
}
@available(iOS 7.0, *)
func UIGuidedAccessRestrictionStateForIdentifier(_ restrictionIdentifier: String) -> UIGuidedAccessRestrictionState
