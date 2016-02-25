
@available(iOS 3.0, *)
class UIAccessibilityElement : NSObject, UIAccessibilityIdentification {
  init(accessibilityContainer container: AnyObject)
  unowned(unsafe) var accessibilityContainer: @sil_unmanaged AnyObject?
  @available(iOS 5.0, *)
  var accessibilityIdentifier: String?
}
