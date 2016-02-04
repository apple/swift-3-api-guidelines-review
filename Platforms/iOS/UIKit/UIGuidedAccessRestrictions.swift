
enum UIGuidedAccessRestrictionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Allow
  case Deny
}
@available(iOS 7.0, *)
protocol UIGuidedAccessRestrictionDelegate : NSObjectProtocol {
  func guidedAccessRestrictionIdentifiers() -> [String]?
  func guidedAccessRestrictionWithIdentifier(restrictionIdentifier: String, didChangeState newRestrictionState: UIGuidedAccessRestrictionState)
  func textForGuidedAccessRestrictionWithIdentifier(restrictionIdentifier: String) -> String?
  optional func detailTextForGuidedAccessRestrictionWithIdentifier(restrictionIdentifier: String) -> String?
}
@available(iOS 7.0, *)
func UIGuidedAccessRestrictionStateForIdentifier(restrictionIdentifier: String) -> UIGuidedAccessRestrictionState
