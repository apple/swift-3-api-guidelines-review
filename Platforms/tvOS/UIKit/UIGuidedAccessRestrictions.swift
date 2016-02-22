
enum UIGuidedAccessRestrictionState : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case allow
  case deny
}
@available(tvOS 7.0, *)
protocol UIGuidedAccessRestrictionDelegate : NSObjectProtocol {
  func guidedAccessRestrictionIdentifiers() -> [String]?
  func guidedAccessRestriction(withIdentifier restrictionIdentifier: String, didChange newRestrictionState: UIGuidedAccessRestrictionState)
  func textForGuidedAccessRestriction(withIdentifier restrictionIdentifier: String) -> String?
  optional func detailTextForGuidedAccessRestriction(withIdentifier restrictionIdentifier: String) -> String?
}
@available(tvOS 7.0, *)
func UIGuidedAccessRestrictionStateForIdentifier(_ restrictionIdentifier: String) -> UIGuidedAccessRestrictionState
