
@available(iOS 3.0, *)
class UIAccessibilityElement : Object, UIAccessibilityIdentification {
  init(accessibilityContainer container: AnyObject)
  unowned(unsafe) var accessibilityContainer: @sil_unmanaged AnyObject?
  var isAccessibilityElement: Bool
  var accessibilityLabel: String?
  var accessibilityHint: String?
  var accessibilityValue: String?
  var accessibilityFrame: CGRect
  var accessibilityTraits: UIAccessibilityTraits
  init()
  @available(iOS 5.0, *)
  var accessibilityIdentifier: String?
}
