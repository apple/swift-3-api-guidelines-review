
extension Object {
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityAttributeNames() -> [AnyObject]
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityAttributeNames() -> [AnyObject]
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityAttributeValue(attribute: String) -> AnyObject?
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityAttributeValue(attribute: String) -> AnyObject?
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityIsAttributeSettable(attribute: String) -> Bool
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityIsAttributeSettable(attribute: String) -> Bool
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilitySetValue(value: AnyObject?, forAttribute attribute: String)
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilitySetValue(value: AnyObject?, forAttribute attribute: String)
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityParameterizedAttributeNames() -> [AnyObject]
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityParameterizedAttributeNames() -> [AnyObject]
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityAttributeValue(attribute: String, forParameter parameter: AnyObject?) -> AnyObject?
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityAttributeValue(attribute: String, forParameter parameter: AnyObject?) -> AnyObject?
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityActionNames() -> [AnyObject]
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityActionNames() -> [AnyObject]
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityActionDescription(action: String) -> String?
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityActionDescription(action: String) -> String?
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityPerformAction(action: String)
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityPerformAction(action: String)
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use isAccessibilityElement instead")
  class func accessibilityIsIgnored() -> Bool
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use isAccessibilityElement instead")
  func accessibilityIsIgnored() -> Bool
  class func accessibilityHitTest(point: Point) -> AnyObject?
  func accessibilityHitTest(point: Point) -> AnyObject?
  var accessibilityFocusedUIElement: AnyObject? { get }
  class func accessibilityIndexOf(child child: AnyObject) -> Int
  func accessibilityIndexOf(child child: AnyObject) -> Int
  class func accessibilityArrayAttributeCount(attribute: String) -> Int
  func accessibilityArrayAttributeCount(attribute: String) -> Int
  class func accessibilityArrayAttributeValues(attribute: String, index: Int, maxCount: Int) -> [AnyObject]
  func accessibilityArrayAttributeValues(attribute: String, index: Int, maxCount: Int) -> [AnyObject]
  @available(OSX 10.9, *)
  var accessibilityNotifiesWhenDestroyed: Bool { get }
  class func accessibilityFocusedUIElement() -> AnyObject?
  class func accessibilityNotifiesWhenDestroyed() -> Bool
}
extension NSWorkspace {
  @available(OSX 10.10, *)
  var accessibilityDisplayShouldIncreaseContrast: Bool { get }
  @available(OSX 10.10, *)
  var accessibilityDisplayShouldDifferentiateWithoutColor: Bool { get }
  @available(OSX 10.10, *)
  var accessibilityDisplayShouldReduceTransparency: Bool { get }
}
@available(OSX 10.10, *)
let NSWorkspaceAccessibilityDisplayOptionsDidChangeNotification: String
extension Object {
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilitySetOverrideValue(value: AnyObject?, forAttribute attribute: String) -> Bool
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilitySetOverrideValue(value: AnyObject?, forAttribute attribute: String) -> Bool
}
@available(OSX 10.10, *)
func NSAccessibilityFrameInView(parentView: NSView, _ frame: Rect) -> Rect
@available(OSX 10.10, *)
func NSAccessibilityPointInView(parentView: NSView, _ point: Point) -> Point
func NSAccessibilitySetMayContainProtectedContent(flag: Bool) -> Bool
func NSAccessibilityRoleDescription(role: String, _ subrole: String?) -> String?
func NSAccessibilityRoleDescriptionForUIElement(element: AnyObject) -> String?
func NSAccessibilityActionDescription(action: String) -> String?
@available(OSX, introduced=10.1, deprecated=10.11, message="Exceptions are no longer appropriate for indicating errors in accessibility API. Unexpected values should be handled through appropriate type checking.")
func NSAccessibilityRaiseBadArgumentException(element: AnyObject!, _ attribute: String!, _ value: AnyObject!)
func NSAccessibilityUnignoredAncestor(element: AnyObject) -> AnyObject?
func NSAccessibilityUnignoredDescendant(element: AnyObject) -> AnyObject?
func NSAccessibilityUnignoredChildren(originalChildren: [AnyObject]) -> [AnyObject]
func NSAccessibilityUnignoredChildrenForOnlyChild(originalChild: AnyObject) -> [AnyObject]
func NSAccessibilityPostNotification(element: AnyObject, _ notification: String)
