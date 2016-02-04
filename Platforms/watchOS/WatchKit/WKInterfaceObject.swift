
@available(watchOS 2.0, *)
enum WKInterfaceObjectHorizontalAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Left
  case Center
  case Right
}
@available(watchOS 2.0, *)
enum WKInterfaceObjectVerticalAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Top
  case Center
  case Bottom
}
@available(watchOS 2.0, *)
class WKInterfaceObject : Object {
  func setHidden(hidden: Bool)
  func setAlpha(alpha: CGFloat)
  @available(watchOS 2.1, *)
  func setSemanticContentAttribute(semanticContentAttribute: WKInterfaceSemanticContentAttribute)
  @available(watchOS 2.0, *)
  func setHorizontalAlignment(horizontalAlignment: WKInterfaceObjectHorizontalAlignment)
  @available(watchOS 2.0, *)
  func setVerticalAlignment(verticalAlignment: WKInterfaceObjectVerticalAlignment)
  func setWidth(width: CGFloat)
  func setHeight(height: CGFloat)
  @available(watchOS 2.0, *)
  func setRelativeWidth(width: CGFloat, withAdjustment adjustment: CGFloat)
  @available(watchOS 2.0, *)
  func setRelativeHeight(height: CGFloat, withAdjustment adjustment: CGFloat)
  @available(watchOS 2.0, *)
  func sizeToFitWidth()
  @available(watchOS 2.0, *)
  func sizeToFitHeight()
  var interfaceProperty: String { get }
}
extension WKInterfaceObject {
  @available(watchOS 2.0, *)
  func setAccessibilityIdentifier(accessibilityIdentifier: String?)
  func setAccessibilityLabel(accessibilityLabel: String?)
  func setAccessibilityHint(accessibilityHint: String?)
  func setAccessibilityValue(accessibilityValue: String?)
  func setIsAccessibilityElement(isAccessibilityElement: Bool)
  func setAccessibilityTraits(accessibilityTraits: UIAccessibilityTraits)
  func setAccessibilityImageRegions(accessibilityImageRegions: [WKAccessibilityImageRegion])
}
@available(watchOS 2.0, *)
class WKAccessibilityImageRegion : Object {
  var frame: CGRect
  var label: String
  init()
}
