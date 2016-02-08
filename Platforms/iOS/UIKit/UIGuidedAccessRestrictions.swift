
enum UIGuidedAccessRestrictionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case allow
  case deny
}
@available(iOS 7.0, *)
protocol UIGuidedAccessRestrictionDelegate : ObjectProtocol {
  func guidedAccessRestrictionIdentifiers() -> [String]?
  func guidedAccessRestrictionWith(identifier restrictionIdentifier: String, didChange newRestrictionState: UIGuidedAccessRestrictionState)
  func textForGuidedAccessRestrictionWith(identifier restrictionIdentifier: String) -> String?
  optional func detailTextForGuidedAccessRestrictionWith(identifier restrictionIdentifier: String) -> String?
}
@available(iOS 7.0, *)
func UIGuidedAccessRestrictionStateForIdentifier(restrictionIdentifier: String) -> UIGuidedAccessRestrictionState
