
@available(iOS 8.2, *)
class WKInterfaceObject : NSObject {
  func setHidden(_ hidden: Bool)
  func setAlpha(_ alpha: CGFloat)
  func setWidth(_ width: CGFloat)
  func setHeight(_ height: CGFloat)
  var interfaceProperty: String { get }
}
extension WKInterfaceObject {
  @available(iOS 9.0, *)
  func setAccessibilityIdentifier(_ accessibilityIdentifier: String?)
  func setAccessibilityLabel(_ accessibilityLabel: String?)
  func setAccessibilityHint(_ accessibilityHint: String?)
  func setAccessibilityValue(_ accessibilityValue: String?)
  func setIsAccessibilityElement(_ isAccessibilityElement: Bool)
  func setAccessibilityTraits(_ accessibilityTraits: UIAccessibilityTraits)
  func setAccessibilityImageRegions(_ accessibilityImageRegions: [WKAccessibilityImageRegion])
}
@available(iOS 8.2, *)
class WKAccessibilityImageRegion : NSObject {
  var frame: CGRect
  var label: String
}
