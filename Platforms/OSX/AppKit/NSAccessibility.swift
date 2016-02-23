
extension NSObject {
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityAttributeNames() -> [AnyObject]
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityAttributeNames() -> [AnyObject]
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityAttributeValue(_ attribute: String) -> AnyObject?
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityAttributeValue(_ attribute: String) -> AnyObject?
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityIsAttributeSettable(_ attribute: String) -> Bool
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityIsAttributeSettable(_ attribute: String) -> Bool
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilitySetValue(_ value: AnyObject?, forAttribute attribute: String)
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilitySetValue(_ value: AnyObject?, forAttribute attribute: String)
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityParameterizedAttributeNames() -> [AnyObject]
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityParameterizedAttributeNames() -> [AnyObject]
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityAttributeValue(_ attribute: String, forParameter parameter: AnyObject?) -> AnyObject?
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityAttributeValue(_ attribute: String, forParameter parameter: AnyObject?) -> AnyObject?
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityActionNames() -> [AnyObject]
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityActionNames() -> [AnyObject]
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityActionDescription(_ action: String) -> String?
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityActionDescription(_ action: String) -> String?
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilityPerformAction(_ action: String)
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilityPerformAction(_ action: String)
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use isAccessibilityElement instead")
  class func accessibilityIsIgnored() -> Bool
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use isAccessibilityElement instead")
  func accessibilityIsIgnored() -> Bool
  class func accessibilityHitTest(_ point: NSPoint) -> AnyObject?
  func accessibilityHitTest(_ point: NSPoint) -> AnyObject?
  var accessibilityFocusedUIElement: AnyObject? { get }
  class func accessibilityIndex(ofChild child: AnyObject) -> Int
  func accessibilityIndex(ofChild child: AnyObject) -> Int
  class func accessibilityArrayAttributeCount(_ attribute: String) -> Int
  func accessibilityArrayAttributeCount(_ attribute: String) -> Int
  class func accessibilityArrayAttributeValues(_ attribute: String, index index: Int, maxCount maxCount: Int) -> [AnyObject]
  func accessibilityArrayAttributeValues(_ attribute: String, index index: Int, maxCount maxCount: Int) -> [AnyObject]
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
extension NSObject {
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  class func accessibilitySetOverrideValue(_ value: AnyObject?, forAttribute attribute: String) -> Bool
  @available(OSX, introduced=10.1, deprecated=10.10, message="Use the NSAccessibility protocol methods instead (see NSAccessibilityProtocols.h)")
  func accessibilitySetOverrideValue(_ value: AnyObject?, forAttribute attribute: String) -> Bool
}
@available(OSX 10.10, *)
func NSAccessibilityFrameInView(_ parentView: NSView, _ frame: NSRect) -> NSRect
@available(OSX 10.10, *)
func NSAccessibilityPointInView(_ parentView: NSView, _ point: NSPoint) -> NSPoint
func NSAccessibilitySetMayContainProtectedContent(_ flag: Bool) -> Bool
func NSAccessibilityRoleDescription(_ role: String, _ subrole: String?) -> String?
func NSAccessibilityRoleDescriptionForUIElement(_ element: AnyObject) -> String?
func NSAccessibilityActionDescription(_ action: String) -> String?
@available(OSX, introduced=10.1, deprecated=10.11, message="Exceptions are no longer appropriate for indicating errors in accessibility API. Unexpected values should be handled through appropriate type checking.")
func NSAccessibilityRaiseBadArgumentException(_ element: AnyObject!, _ attribute: String!, _ value: AnyObject!)
func NSAccessibilityUnignoredAncestor(_ element: AnyObject) -> AnyObject?
func NSAccessibilityUnignoredDescendant(_ element: AnyObject) -> AnyObject?
func NSAccessibilityUnignoredChildren(_ originalChildren: [AnyObject]) -> [AnyObject]
func NSAccessibilityUnignoredChildrenForOnlyChild(_ originalChild: AnyObject) -> [AnyObject]
func NSAccessibilityPostNotification(_ element: AnyObject, _ notification: String)
