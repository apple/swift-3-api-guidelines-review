
enum NSImageAlignment : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case AlignCenter
  case AlignTop
  case AlignTopLeft
  case AlignTopRight
  case AlignLeft
  case AlignBottom
  case AlignBottomLeft
  case AlignBottomRight
  case AlignRight
}
enum NSImageFrameStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case Photo
  case GrayBezel
  case Groove
  case Button
}
class NSImageCell : NSCell, Copying, Coding {
  var imageAlignment: NSImageAlignment
  var imageScaling: NSImageScaling
  var imageFrameStyle: NSImageFrameStyle
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: Coder)
}
struct __ICFlags {
  var _unused: UInt32
  var _animates: UInt32
  var _align: UInt32
  var _scale: UInt32
  var _style: UInt32
  init()
  init(_unused: UInt32, _animates: UInt32, _align: UInt32, _scale: UInt32, _style: UInt32)
}
