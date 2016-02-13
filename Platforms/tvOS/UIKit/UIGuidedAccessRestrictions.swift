
enum UIGuidedAccessRestrictionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case allow
  case deny
}
@available(tvOS 7.0, *)
protocol UIGuidedAccessRestrictionDelegate : ObjectProtocol {
  func guidedAccessRestrictionIdentifiers() -> [String]?
  func guidedAccessRestriction(identifier restrictionIdentifier: String, didChange newRestrictionState: UIGuidedAccessRestrictionState)
  func textForGuidedAccessRestriction(identifier restrictionIdentifier: String) -> String?
  optional func detailTextForGuidedAccessRestriction(identifier restrictionIdentifier: String) -> String?
}
@available(tvOS 7.0, *)
func UIGuidedAccessRestrictionStateForIdentifier(restrictionIdentifier: String) -> UIGuidedAccessRestrictionState
