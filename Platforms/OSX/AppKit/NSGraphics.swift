
enum NSCompositingOperation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case compositeClear
  case compositeCopy
  case compositeSourceOver
  case compositeSourceIn
  case compositeSourceOut
  case compositeSourceAtop
  case compositeDestinationOver
  case compositeDestinationIn
  case compositeDestinationOut
  case compositeDestinationAtop
  case compositeXOR
  case compositePlusDarker
  case compositePlusLighter
  @available(OSX 10.10, *)
  case compositeMultiply
  @available(OSX 10.10, *)
  case compositeScreen
  @available(OSX 10.10, *)
  case compositeOverlay
  @available(OSX 10.10, *)
  case compositeDarken
  @available(OSX 10.10, *)
  case compositeLighten
  @available(OSX 10.10, *)
  case compositeColorDodge
  @available(OSX 10.10, *)
  case compositeColorBurn
  @available(OSX 10.10, *)
  case compositeSoftLight
  @available(OSX 10.10, *)
  case compositeHardLight
  @available(OSX 10.10, *)
  case compositeDifference
  @available(OSX 10.10, *)
  case compositeExclusion
  @available(OSX 10.10, *)
  case compositeHue
  @available(OSX 10.10, *)
  case compositeSaturation
  @available(OSX 10.10, *)
  case compositeColor
  @available(OSX 10.10, *)
  case compositeLuminosity
}
enum NSBackingStoreType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case retained
  case nonretained
  case buffered
}
enum NSWindowOrderingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case above
  case below
  case out
}
enum NSFocusRingPlacement : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case only
  case below
  case above
}
enum NSFocusRingType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case `default`
  case none
  case exterior
}
@available(OSX 10.5, *)
enum NSColorRenderingIntent : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case absoluteColorimetric
  case relativeColorimetric
  case perceptual
  case saturation
}
let NSCalibratedWhiteColorSpace: String
let NSCalibratedRGBColorSpace: String
let NSDeviceWhiteColorSpace: String
let NSDeviceRGBColorSpace: String
let NSDeviceCMYKColorSpace: String
let NSNamedColorSpace: String
let NSPatternColorSpace: String
let NSCustomColorSpace: String
var NSWindowDepthTwentyfourBitRGB: Int { get }
var NSWindowDepthSixtyfourBitRGB: Int { get }
var NSWindowDepthOnehundredtwentyeightBitRGB: Int { get }
typealias NSWindowDepth = Int32
func NSBestDepth(colorSpace: String, _ bps: Int, _ bpp: Int, _ planar: Bool, _ exactMatch: UnsafeMutablePointer<ObjCBool>) -> NSWindowDepth
func NSPlanarFromDepth(depth: NSWindowDepth) -> Bool
func NSColorSpaceFromDepth(depth: NSWindowDepth) -> String?
func NSBitsPerSampleFromDepth(depth: NSWindowDepth) -> Int
func NSBitsPerPixelFromDepth(depth: NSWindowDepth) -> Int
func NSNumberOfColorComponents(colorSpaceName: String) -> Int
func NSAvailableWindowDepths() -> UnsafePointer<NSWindowDepth>
let NSWhite: CGFloat
let NSLightGray: CGFloat
let NSDarkGray: CGFloat
let NSBlack: CGFloat
let NSDeviceResolution: String
let NSDeviceColorSpaceName: String
let NSDeviceBitsPerSample: String
let NSDeviceIsScreen: String
let NSDeviceIsPrinter: String
let NSDeviceSize: String
func NSRectFill(aRect: Rect)
func NSRectFillList(rects: UnsafePointer<Rect>, _ count: Int)
func NSRectFillListWithGrays(rects: UnsafePointer<Rect>, _ grays: UnsafePointer<CGFloat>, _ num: Int)
func NSRectFillListWithColors(rects: UnsafePointer<Rect>, _ colors: UnsafePointer<NSColor?>, _ num: Int)
func NSRectFillUsingOperation(aRect: Rect, _ op: NSCompositingOperation)
func NSRectFillListUsingOperation(rects: UnsafePointer<Rect>, _ count: Int, _ op: NSCompositingOperation)
func NSRectFillListWithColorsUsingOperation(rects: UnsafePointer<Rect>, _ colors: UnsafePointer<NSColor?>, _ num: Int, _ op: NSCompositingOperation)
func NSFrameRect(aRect: Rect)
func NSFrameRectWithWidth(aRect: Rect, _ frameWidth: CGFloat)
func NSFrameRectWithWidthUsingOperation(aRect: Rect, _ frameWidth: CGFloat, _ op: NSCompositingOperation)
func NSRectClip(aRect: Rect)
func NSRectClipList(rects: UnsafePointer<Rect>, _ count: Int)
func NSDrawTiledRects(boundsRect: Rect, _ clipRect: Rect, _ sides: UnsafePointer<RectEdge>, _ grays: UnsafePointer<CGFloat>, _ count: Int) -> Rect
func NSDrawGrayBezel(aRect: Rect, _ clipRect: Rect)
func NSDrawGroove(aRect: Rect, _ clipRect: Rect)
func NSDrawWhiteBezel(aRect: Rect, _ clipRect: Rect)
func NSDrawButton(aRect: Rect, _ clipRect: Rect)
func NSEraseRect(aRect: Rect)
func NSReadPixel(passedPoint: Point) -> NSColor?
func NSDrawBitmap(rect: Rect, _ width: Int, _ height: Int, _ bps: Int, _ spp: Int, _ bpp: Int, _ bpr: Int, _ isPlanar: Bool, _ hasAlpha: Bool, _ colorSpaceName: String, _ data: UnsafePointer<UnsafePointer<UInt8>>)
func NSBeep()
func NSGetWindowServerMemory(context: Int, _ virtualMemory: UnsafeMutablePointer<Int>, _ windowBackingMemory: UnsafeMutablePointer<Int>, _ windowDumpString: AutoreleasingUnsafeMutablePointer<NSString?>) -> Int
func NSDrawColorTiledRects(boundsRect: Rect, _ clipRect: Rect, _ sides: UnsafePointer<RectEdge>, _ colors: AutoreleasingUnsafeMutablePointer<NSColor?>, _ count: Int) -> Rect
func NSDrawDarkBezel(aRect: Rect, _ clipRect: Rect)
func NSDrawLightBezel(aRect: Rect, _ clipRect: Rect)
func NSDottedFrameRect(aRect: Rect)
func NSDrawWindowBackground(aRect: Rect)
func NSSetFocusRingStyle(placement: NSFocusRingPlacement)
func NSDisableScreenUpdates()
func NSEnableScreenUpdates()
enum NSAnimationEffect : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case disappearingItemDefault
  case poof
}
func NSShowAnimationEffect(animationEffect: NSAnimationEffect, _ centerLocation: Point, _ size: Size, _ animationDelegate: AnyObject?, _ didEndSelector: Selector, _ contextInfo: UnsafeMutablePointer<Void>)
@available(OSX, introduced=10.0, deprecated=10.10)
func NSCopyBits(srcGState: Int, _ srcRect: Rect, _ destPoint: Point)
