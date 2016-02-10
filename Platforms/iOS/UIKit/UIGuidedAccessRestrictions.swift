
enum UIGuidedAccessRestrictionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case allow
  case deny
}
@available(iOS 7.0, *)
protocol UIGuidedAccessRestrictionDelegate : ObjectProtocol {
  func guidedAccessRestrictionIdentifiers() -> [String]?
  func guidedAccessRestriction(withIdentifier restrictionIdentifier: String, didChange newRestrictionState: UIGuidedAccessRestrictionState)
  func textForGuidedAccessRestriction(withIdentifier restrictionIdentifier: String) -> String?
  optional func detailTextForGuidedAccessRestriction(withIdentifier restrictionIdentifier: String) -> String?
}
@available(iOS 7.0, *)
func UIGuidedAccessRestrictionStateForIdentifier(restrictionIdentifier: String) -> UIGuidedAccessRestrictionState
