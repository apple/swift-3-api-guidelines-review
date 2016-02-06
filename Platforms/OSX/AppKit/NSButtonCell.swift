
enum NSButtonType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case MomentaryLightButton
  case PushOnPushOffButton
  case ToggleButton
  case SwitchButton
  case RadioButton
  case MomentaryChangeButton
  case OnOffButton
  case MomentaryPushInButton
  @available(OSX 10.10.3, *)
  case AcceleratorButton
  @available(OSX 10.10.3, *)
  case MultiLevelAcceleratorButton
}
enum NSBezelStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case RoundedBezelStyle
  case RegularSquareBezelStyle
  case ThickSquareBezelStyle
  case ThickerSquareBezelStyle
  case DisclosureBezelStyle
  case ShadowlessSquareBezelStyle
  case CircularBezelStyle
  case TexturedSquareBezelStyle
  case HelpButtonBezelStyle
  case SmallSquareBezelStyle
  case TexturedRoundedBezelStyle
  case RoundRectBezelStyle
  case RecessedBezelStyle
  case RoundedDisclosureBezelStyle
  @available(OSX 10.7, *)
  case InlineBezelStyle
}
struct __BCFlags {
  var __reserved: UInt32
  var allowTitleTightening: UInt32
  var isDrawingFocus: UInt32
  var useButtonImageSource: UInt32
  var hasTitleTextField: UInt32
  var isDrawingDisclosure: UInt32
  var suppressAXValueChangeNote: UInt32
  var doesNotDimImage: UInt32
  var inset: UInt32
  var transparent: UInt32
  var inIntermediateDisclosure: UInt32
  var hasKeyEquivalentInsteadOfImage: UInt32
  var imageSizeDiff: UInt32
  var imageAndText: UInt32
  var bottomOrLeft: UInt32
  var horizontal: UInt32
  var imageOverlaps: UInt32
  var bordered: UInt32
  var drawing: UInt32
  var lightByGray: UInt32
  var lightByBackground: UInt32
  var lightByContents: UInt32
  var changeGray: UInt32
  var changeBackground: UInt32
  var changeContents: UInt32
  var pushIn: UInt32
  init()
  init(__reserved: UInt32, allowTitleTightening: UInt32, isDrawingFocus: UInt32, useButtonImageSource: UInt32, hasTitleTextField: UInt32, isDrawingDisclosure: UInt32, suppressAXValueChangeNote: UInt32, doesNotDimImage: UInt32, inset: UInt32, transparent: UInt32, inIntermediateDisclosure: UInt32, hasKeyEquivalentInsteadOfImage: UInt32, imageSizeDiff: UInt32, imageAndText: UInt32, bottomOrLeft: UInt32, horizontal: UInt32, imageOverlaps: UInt32, bordered: UInt32, drawing: UInt32, lightByGray: UInt32, lightByBackground: UInt32, lightByContents: UInt32, changeGray: UInt32, changeBackground: UInt32, changeContents: UInt32, pushIn: UInt32)
}
typealias _BCFlags = __BCFlags
struct __BCFlags2 {
  var bezelStyle: UInt32
  var showsBorderOnlyWhileMouseInside: UInt32
  var mouseInside: UInt32
  var bezelStyle2: UInt32
  var imageScaling: UInt32
  var keyEquivalentModifierMask: UInt32
  init()
  init(bezelStyle: UInt32, showsBorderOnlyWhileMouseInside: UInt32, mouseInside: UInt32, bezelStyle2: UInt32, imageScaling: UInt32, keyEquivalentModifierMask: UInt32)
}
typealias _BCFlags2 = __BCFlags2
class NSButtonCell : NSActionCell {
  var title: String!
  var alternateTitle: String
  var alternateImage: NSImage?
  var imagePosition: NSCellImagePosition
  @available(OSX 10.5, *)
  var imageScaling: NSImageScaling
  var highlightsBy: NSCellStyleMask
  var showsStateBy: NSCellStyleMask
  func setButtonType(aType: NSButtonType)
  var isOpaque: Bool { get }
  var isTransparent: Bool
  func setPeriodicDelay(delay: Float, interval: Float)
  func getPeriodicDelay(delay: UnsafeMutablePointer<Float>, interval: UnsafeMutablePointer<Float>)
  var keyEquivalent: String
  var keyEquivalentModifierMask: Int
  var keyEquivalentFont: NSFont?
  func setKeyEquivalentFont(fontName: String, size fontSize: CGFloat)
  func performClick(sender: AnyObject?)
  func drawImage(image: NSImage, withFrame frame: Rect, in controlView: NSView)
  func drawTitle(title: AttributedString, withFrame frame: Rect, in controlView: NSView) -> Rect
  func drawBezel(frame frame: Rect, in controlView: NSView)
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: Coder)
}
enum NSGradientType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case ConcaveWeak
  case ConcaveStrong
  case ConvexWeak
  case ConvexStrong
}
extension NSButtonCell {
  var gradientType: NSGradientType
  var imageDimsWhenDisabled: Bool
  var showsBorderOnlyWhileMouseInside: Bool
  func mouseEntered(event: NSEvent)
  func mouseExited(event: NSEvent)
  @NSCopying var backgroundColor: NSColor?
}
extension NSButtonCell {
  @NSCopying var attributedTitle: AttributedString
  @NSCopying var attributedAlternateTitle: AttributedString
}
extension NSButtonCell {
  var bezelStyle: NSBezelStyle
}
extension NSButtonCell {
  var sound: NSSound?
}
extension NSButtonCell {
}
