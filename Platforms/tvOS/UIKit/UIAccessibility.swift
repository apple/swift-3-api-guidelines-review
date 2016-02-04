
extension NSObject {
  var isAccessibilityElement: Bool
  var accessibilityLabel: String?
  var accessibilityHint: String?
  var accessibilityValue: String?
  var accessibilityTraits: UIAccessibilityTraits
  var accessibilityFrame: CGRect
  @available(tvOS 7.0, *)
  @NSCopying var accessibilityPath: UIBezierPath?
  @available(tvOS 5.0, *)
  var accessibilityActivationPoint: CGPoint
  var accessibilityLanguage: String?
  @available(tvOS 5.0, *)
  var accessibilityElementsHidden: Bool
  @available(tvOS 5.0, *)
  var accessibilityViewIsModal: Bool
  @available(tvOS 6.0, *)
  var shouldGroupAccessibilityChildren: Bool
  @available(tvOS 8.0, *)
  var accessibilityNavigationStyle: UIAccessibilityNavigationStyle
  @available(tvOS 9.0, *)
  var accessibilityHeaderElements: [AnyObject]?
  class func isAccessibilityElement() -> Bool
  class func setIsAccessibilityElement(isAccessibilityElement: Bool)
  class func accessibilityLabel() -> String?
  class func setAccessibilityLabel(accessibilityLabel: String?)
  class func accessibilityHint() -> String?
  class func setAccessibilityHint(accessibilityHint: String?)
  class func accessibilityValue() -> String?
  class func setAccessibilityValue(accessibilityValue: String?)
  class func accessibilityTraits() -> UIAccessibilityTraits
  class func setAccessibilityTraits(accessibilityTraits: UIAccessibilityTraits)
  class func accessibilityFrame() -> CGRect
  class func setAccessibilityFrame(accessibilityFrame: CGRect)
  class func accessibilityPath() -> UIBezierPath?
  class func setAccessibilityPath(accessibilityPath: UIBezierPath?)
  class func accessibilityActivationPoint() -> CGPoint
  class func setAccessibilityActivationPoint(accessibilityActivationPoint: CGPoint)
  class func accessibilityLanguage() -> String?
  class func setAccessibilityLanguage(accessibilityLanguage: String?)
  class func accessibilityElementsHidden() -> Bool
  class func setAccessibilityElementsHidden(accessibilityElementsHidden: Bool)
  class func accessibilityViewIsModal() -> Bool
  class func setAccessibilityViewIsModal(accessibilityViewIsModal: Bool)
  class func shouldGroupAccessibilityChildren() -> Bool
  class func setShouldGroupAccessibilityChildren(shouldGroupAccessibilityChildren: Bool)
  class func accessibilityNavigationStyle() -> UIAccessibilityNavigationStyle
  class func setAccessibilityNavigationStyle(accessibilityNavigationStyle: UIAccessibilityNavigationStyle)
  class func accessibilityHeaderElements() -> [AnyObject]?
  class func setAccessibilityHeaderElements(accessibilityHeaderElements: [AnyObject]?)
}
@available(tvOS 7.0, *)
func UIAccessibilityConvertFrameToScreenCoordinates(rect: CGRect, _ view: UIView) -> CGRect
@available(tvOS 7.0, *)
func UIAccessibilityConvertPathToScreenCoordinates(path: UIBezierPath, _ view: UIView) -> UIBezierPath
extension NSObject {
  class func accessibilityElementCount() -> Int
  func accessibilityElementCount() -> Int
  class func accessibilityElementAtIndex(index: Int) -> AnyObject?
  func accessibilityElementAtIndex(index: Int) -> AnyObject?
  class func indexOfAccessibilityElement(element: AnyObject) -> Int
  func indexOfAccessibilityElement(element: AnyObject) -> Int
  @available(tvOS 8.0, *)
  var accessibilityElements: [AnyObject]?
  class func accessibilityElements() -> [AnyObject]?
  class func setAccessibilityElements(accessibilityElements: [AnyObject]?)
}
extension NSObject {
  @available(tvOS 4.0, *)
  class func accessibilityElementDidBecomeFocused()
  @available(tvOS 4.0, *)
  func accessibilityElementDidBecomeFocused()
  @available(tvOS 4.0, *)
  class func accessibilityElementDidLoseFocus()
  @available(tvOS 4.0, *)
  func accessibilityElementDidLoseFocus()
  @available(tvOS 4.0, *)
  class func accessibilityElementIsFocused() -> Bool
  @available(tvOS 4.0, *)
  func accessibilityElementIsFocused() -> Bool
  @available(tvOS 9.0, *)
  class func accessibilityAssistiveTechnologyFocusedIdentifiers() -> Set<String>?
  @available(tvOS 9.0, *)
  func accessibilityAssistiveTechnologyFocusedIdentifiers() -> Set<String>?
}
@available(tvOS 9.0, *)
func UIAccessibilityFocusedElement(assistiveTechnologyIdentifier: String?) -> AnyObject?
extension NSObject {
  @available(tvOS 7.0, *)
  class func accessibilityActivate() -> Bool
  @available(tvOS 7.0, *)
  func accessibilityActivate() -> Bool
  @available(tvOS 4.0, *)
  class func accessibilityIncrement()
  @available(tvOS 4.0, *)
  func accessibilityIncrement()
  @available(tvOS 4.0, *)
  class func accessibilityDecrement()
  @available(tvOS 4.0, *)
  func accessibilityDecrement()
  @available(tvOS 4.2, *)
  class func accessibilityScroll(direction: UIAccessibilityScrollDirection) -> Bool
  @available(tvOS 4.2, *)
  func accessibilityScroll(direction: UIAccessibilityScrollDirection) -> Bool
  @available(tvOS 5.0, *)
  class func accessibilityPerformEscape() -> Bool
  @available(tvOS 5.0, *)
  func accessibilityPerformEscape() -> Bool
  @available(tvOS 6.0, *)
  class func accessibilityPerformMagicTap() -> Bool
  @available(tvOS 6.0, *)
  func accessibilityPerformMagicTap() -> Bool
  @available(tvOS 8.0, *)
  var accessibilityCustomActions: [UIAccessibilityCustomAction]?
  class func accessibilityCustomActions() -> [UIAccessibilityCustomAction]?
  class func setAccessibilityCustomActions(accessibilityCustomActions: [UIAccessibilityCustomAction]?)
}
enum UIAccessibilityScrollDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Right
  case Left
  case Up
  case Down
  @available(tvOS 5.0, *)
  case Next
  @available(tvOS 5.0, *)
  case Previous
}
protocol UIAccessibilityReadingContent {
  @available(tvOS 5.0, *)
  func accessibilityLineNumberForPoint(point: CGPoint) -> Int
  @available(tvOS 5.0, *)
  func accessibilityContentForLineNumber(lineNumber: Int) -> String?
  @available(tvOS 5.0, *)
  func accessibilityFrameForLineNumber(lineNumber: Int) -> CGRect
  @available(tvOS 5.0, *)
  func accessibilityPageContent() -> String?
}
func UIAccessibilityPostNotification(notification: UIAccessibilityNotifications, _ argument: AnyObject?)
@available(tvOS 4.0, *)
func UIAccessibilityIsVoiceOverRunning() -> Bool
@available(tvOS 4.0, *)
let UIAccessibilityVoiceOverStatusChanged: String
@available(tvOS 5.0, *)
func UIAccessibilityIsMonoAudioEnabled() -> Bool
@available(tvOS 5.0, *)
let UIAccessibilityMonoAudioStatusDidChangeNotification: String
@available(tvOS 5.0, *)
func UIAccessibilityIsClosedCaptioningEnabled() -> Bool
@available(tvOS 5.0, *)
let UIAccessibilityClosedCaptioningStatusDidChangeNotification: String
@available(tvOS 6.0, *)
func UIAccessibilityIsInvertColorsEnabled() -> Bool
@available(tvOS 6.0, *)
let UIAccessibilityInvertColorsStatusDidChangeNotification: String
@available(tvOS 6.0, *)
func UIAccessibilityIsGuidedAccessEnabled() -> Bool
@available(tvOS 6.0, *)
let UIAccessibilityGuidedAccessStatusDidChangeNotification: String
@available(tvOS 8.0, *)
func UIAccessibilityIsBoldTextEnabled() -> Bool
@available(tvOS 8.0, *)
let UIAccessibilityBoldTextStatusDidChangeNotification: String
@available(tvOS 8.0, *)
func UIAccessibilityIsGrayscaleEnabled() -> Bool
@available(tvOS 8.0, *)
let UIAccessibilityGrayscaleStatusDidChangeNotification: String
@available(tvOS 8.0, *)
func UIAccessibilityIsReduceTransparencyEnabled() -> Bool
@available(tvOS 8.0, *)
let UIAccessibilityReduceTransparencyStatusDidChangeNotification: String
@available(tvOS 8.0, *)
func UIAccessibilityIsReduceMotionEnabled() -> Bool
@available(tvOS 8.0, *)
let UIAccessibilityReduceMotionStatusDidChangeNotification: String
@available(tvOS 8.0, *)
func UIAccessibilityDarkerSystemColorsEnabled() -> Bool
@available(tvOS 8.0, *)
let UIAccessibilityDarkerSystemColorsStatusDidChangeNotification: String
@available(tvOS 8.0, *)
func UIAccessibilityIsSwitchControlRunning() -> Bool
@available(tvOS 8.0, *)
let UIAccessibilitySwitchControlStatusDidChangeNotification: String
@available(tvOS 8.0, *)
func UIAccessibilityIsSpeakSelectionEnabled() -> Bool
@available(tvOS 8.0, *)
let UIAccessibilitySpeakSelectionStatusDidChangeNotification: String
@available(tvOS 8.0, *)
func UIAccessibilityIsSpeakScreenEnabled() -> Bool
@available(tvOS 8.0, *)
let UIAccessibilitySpeakScreenStatusDidChangeNotification: String
@available(tvOS 9.0, *)
func UIAccessibilityIsShakeToUndoEnabled() -> Bool
@available(tvOS 9.0, *)
let UIAccessibilityShakeToUndoDidChangeNotification: String
@available(tvOS 7.0, *)
func UIAccessibilityRequestGuidedAccessSession(enable: Bool, _ completionHandler: (Bool) -> Void)
