
protocol UIAccessibilityIdentification : NSObjectProtocol {
  @available(tvOS 5.0, *)
  var accessibilityIdentifier: String? { get set }
}
extension UIView : UIAccessibilityIdentification {
  @available(tvOS 5.0, *)
  var accessibilityIdentifier: String?
}
extension UIBarItem : UIAccessibilityIdentification {
  @available(tvOS 5.0, *)
  var accessibilityIdentifier: String?
}
extension UIImage : UIAccessibilityIdentification {
  @available(tvOS 5.0, *)
  var accessibilityIdentifier: String?
}
