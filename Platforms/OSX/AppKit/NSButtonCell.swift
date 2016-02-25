
enum NSButtonType : UInt {
  init?(rawValue rawValue: UInt)
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
  init?(rawValue rawValue: UInt)
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
  init(__reserved __reserved: UInt32, allowTitleTightening allowTitleTightening: UInt32, isDrawingFocus isDrawingFocus: UInt32, useButtonImageSource useButtonImageSource: UInt32, hasTitleTextField hasTitleTextField: UInt32, isDrawingDisclosure isDrawingDisclosure: UInt32, suppressAXValueChangeNote suppressAXValueChangeNote: UInt32, doesNotDimImage doesNotDimImage: UInt32, inset inset: UInt32, transparent transparent: UInt32, inIntermediateDisclosure inIntermediateDisclosure: UInt32, hasKeyEquivalentInsteadOfImage hasKeyEquivalentInsteadOfImage: UInt32, imageSizeDiff imageSizeDiff: UInt32, imageAndText imageAndText: UInt32, bottomOrLeft bottomOrLeft: UInt32, horizontal horizontal: UInt32, imageOverlaps imageOverlaps: UInt32, bordered bordered: UInt32, drawing drawing: UInt32, lightByGray lightByGray: UInt32, lightByBackground lightByBackground: UInt32, lightByContents lightByContents: UInt32, changeGray changeGray: UInt32, changeBackground changeBackground: UInt32, changeContents changeContents: UInt32, pushIn pushIn: UInt32)
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
  init(bezelStyle bezelStyle: UInt32, showsBorderOnlyWhileMouseInside showsBorderOnlyWhileMouseInside: UInt32, mouseInside mouseInside: UInt32, bezelStyle2 bezelStyle2: UInt32, imageScaling imageScaling: UInt32, keyEquivalentModifierMask keyEquivalentModifierMask: UInt32)
}
typealias _BCFlags2 = __BCFlags2
class NSButtonCell : NSActionCell {
  var alternateTitle: String
  var alternateImage: NSImage?
  var imagePosition: NSCellImagePosition
  @available(OSX 10.5, *)
  var imageScaling: NSImageScaling
  var highlightsBy: NSCellStyleMask
  var showsStateBy: NSCellStyleMask
  func setButtonType(_ aType: NSButtonType)
  var transparent: Bool
  func setPeriodicDelay(_ delay: Float, interval interval: Float)
  var keyEquivalentModifierMask: Int
  var keyEquivalentFont: NSFont?
  func setKeyEquivalentFont(_ fontName: String, size fontSize: CGFloat)
  func drawImage(_ image: NSImage, withFrame frame: NSRect, inView controlView: NSView)
  func drawTitle(_ title: NSAttributedString, withFrame frame: NSRect, inView controlView: NSView) -> NSRect
  func drawBezelWithFrame(_ frame: NSRect, inView controlView: NSView)
}
enum NSGradientType : UInt {
  init?(rawValue rawValue: UInt)
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
  func mouseEntered(_ event: NSEvent)
  func mouseExited(_ event: NSEvent)
  @NSCopying var backgroundColor: NSColor?
}
extension NSButtonCell {
  @NSCopying var attributedTitle: NSAttributedString
  @NSCopying var attributedAlternateTitle: NSAttributedString
}
extension NSButtonCell {
  var bezelStyle: NSBezelStyle
}
extension NSButtonCell {
  var sound: NSSound?
}
extension NSButtonCell {
}
