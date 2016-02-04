
class NSImageView : NSControl, NSAccessibilityImage {
  var image: NSImage?
  var imageAlignment: NSImageAlignment
  var imageScaling: NSImageScaling
  var imageFrameStyle: NSImageFrameStyle
  var editable: Bool
  var animates: Bool
  var allowsCutCopyPaste: Bool
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
  func accessibilityLabel() -> String?
}
struct __IVFlags {
  var _hasImageView: UInt32
  var _unused: UInt32
  var _rejectsMultiFileDrops: UInt32
  var _compatibleScalingAndAlignment: UInt32
  var _reserved: UInt32
  var _overridesDrawing: UInt32
  var _allowsCutCopyPaste: UInt32
  var _editable: UInt32
  init()
  init(_hasImageView: UInt32, _unused: UInt32, _rejectsMultiFileDrops: UInt32, _compatibleScalingAndAlignment: UInt32, _reserved: UInt32, _overridesDrawing: UInt32, _allowsCutCopyPaste: UInt32, _editable: UInt32)
}
