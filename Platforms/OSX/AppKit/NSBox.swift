
enum NSTitlePosition : UInt {
  init?(rawValue rawValue: UInt)
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
  init?(rawValue rawValue: UInt)
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
  var borderRect: NSRect { get }
  var titleRect: NSRect { get }
  var titleCell: AnyObject { get }
  func sizeToFit()
  var contentViewMargins: NSSize
  func setFrameFromContentFrame(_ contentFrame: NSRect)
  unowned(unsafe) var contentView: @sil_unmanaged NSView?
  @available(OSX 10.5, *)
  var transparent: Bool
  @available(OSX 10.5, *)
  var borderWidth: CGFloat
  @available(OSX 10.5, *)
  var cornerRadius: CGFloat
  @available(OSX 10.5, *)
  @NSCopying var borderColor: NSColor
  @available(OSX 10.5, *)
  @NSCopying var fillColor: NSColor
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
  init(borderType borderType: NSBorderType, titlePosition titlePosition: NSTitlePosition, backgroundTransparent backgroundTransparent: UInt32, orientation orientation: UInt32, needsTile needsTile: UInt32, transparent transparent: UInt32, colorAltInterpretation colorAltInterpretation: UInt32, boxType boxType: UInt32, useSuperAddSubview useSuperAddSubview: UInt32, _RESERVED _RESERVED: UInt32)
}
extension NSBox {
}
