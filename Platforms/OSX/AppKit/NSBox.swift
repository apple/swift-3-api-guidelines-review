
enum NSTitlePosition : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoTitle
  case AboveTop
  case AtTop
  case BelowTop
  case AboveBottom
  case AtBottom
  case BelowBottom
}
enum NSBoxType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Primary
  case Secondary
  case Separator
  case OldStyle
  @available(OSX 10.5, *)
  case Custom
}
class NSBox : NSView {
  var borderType: NSBorderType
  var titlePosition: NSTitlePosition
  var boxType: NSBoxType
  var title: String
  var titleFont: NSFont
  var borderRect: Rect { get }
  var titleRect: Rect { get }
  var titleCell: AnyObject { get }
  func sizeToFit()
  var contentViewMargins: Size
  func setFrameFrom(contentFrame contentFrame: Rect)
  unowned(unsafe) var contentView: @sil_unmanaged NSView?
  @available(OSX 10.5, *)
  var isTransparent: Bool
  @available(OSX 10.5, *)
  var borderWidth: CGFloat
  @available(OSX 10.5, *)
  var cornerRadius: CGFloat
  @available(OSX 10.5, *)
  @NSCopying var borderColor: NSColor
  @available(OSX 10.5, *)
  @NSCopying var fillColor: NSColor
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
struct __bFlags {
  var borderType: NSBorderType
  var titlePosition: NSTitlePosition
  var backgroundTransparent: UInt32
  var orientation: UInt32
  var needsTile: UInt32
  var transparent: UInt32
  var colorAltInterpretation: UInt32
  var boxType: UInt32
  var useSuperAddSubview: UInt32
  var _RESERVED: UInt32
  init()
  init(borderType: NSBorderType, titlePosition: NSTitlePosition, backgroundTransparent: UInt32, orientation: UInt32, needsTile: UInt32, transparent: UInt32, colorAltInterpretation: UInt32, boxType: UInt32, useSuperAddSubview: UInt32, _RESERVED: UInt32)
}
extension NSBox {
}
