
@available(iOS 8.2, *)
class WKInterfaceObject : Object {
  func setHidden(hidden: Bool)
  func setAlpha(alpha: CGFloat)
  func setWidth(width: CGFloat)
  func setHeight(height: CGFloat)
  var interfaceProperty: String { get }
}
extension WKInterfaceObject {
  @available(iOS 9.0, *)
  func setAccessibilityIdentifier(accessibilityIdentifier: String?)
  func setAccessibilityLabel(accessibilityLabel: String?)
  func setAccessibilityHint(accessibilityHint: String?)
  func setAccessibilityValue(accessibilityValue: String?)
  func setIsAccessibilityElement(isAccessibilityElement: Bool)
  func setAccessibilityTraits(accessibilityTraits: UIAccessibilityTraits)
  func setAccessibilityImageRegions(accessibilityImageRegions: [WKAccessibilityImageRegion])
}
@available(iOS 8.2, *)
class WKAccessibilityImageRegion : Object {
  var frame: CGRect
  var label: String
  init()
}
