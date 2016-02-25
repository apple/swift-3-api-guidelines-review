
enum NSImageAlignment : UInt {
  init?(rawValue rawValue: UInt)
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
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case Photo
  case GrayBezel
  case Groove
  case Button
}
class NSImageCell : NSCell, NSCopying, NSCoding {
  var imageAlignment: NSImageAlignment
  var imageScaling: NSImageScaling
  var imageFrameStyle: NSImageFrameStyle
}
struct __ICFlags {
  var _unused: UInt32
  var _animates: UInt32
  var _align: UInt32
  var _scale: UInt32
  var _style: UInt32
  init()
  init(_unused _unused: UInt32, _animates _animates: UInt32, _align _align: UInt32, _scale _scale: UInt32, _style _style: UInt32)
}
