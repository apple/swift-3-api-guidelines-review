
enum NSCompositingOperation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case CompositeClear
  case CompositeCopy
  case CompositeSourceOver
  case CompositeSourceIn
  case CompositeSourceOut
  case CompositeSourceAtop
  case CompositeDestinationOver
  case CompositeDestinationIn
  case CompositeDestinationOut
  case CompositeDestinationAtop
  case CompositeXOR
  case CompositePlusDarker
  case CompositePlusLighter
  @available(OSX 10.10, *)
  case CompositeMultiply
  @available(OSX 10.10, *)
  case CompositeScreen
  @available(OSX 10.10, *)
  case CompositeOverlay
  @available(OSX 10.10, *)
  case CompositeDarken
  @available(OSX 10.10, *)
  case CompositeLighten
  @available(OSX 10.10, *)
  case CompositeColorDodge
  @available(OSX 10.10, *)
  case CompositeColorBurn
  @available(OSX 10.10, *)
  case CompositeSoftLight
  @available(OSX 10.10, *)
  case CompositeHardLight
  @available(OSX 10.10, *)
  case CompositeDifference
  @available(OSX 10.10, *)
  case CompositeExclusion
  @available(OSX 10.10, *)
  case CompositeHue
  @available(OSX 10.10, *)
  case CompositeSaturation
  @available(OSX 10.10, *)
  case CompositeColor
  @available(OSX 10.10, *)
  case CompositeLuminosity
}
enum NSBackingStoreType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Retained
  case Nonretained
  case Buffered
}
enum NSWindowOrderingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Above
  case Below
  case Out
}
enum NSFocusRingPlacement : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Only
  case Below
  case Above
}
enum NSFocusRingType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case None
  case Exterior
}
@available(OSX 10.5, *)
enum NSColorRenderingIntent : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case AbsoluteColorimetric
  case RelativeColorimetric
  case Perceptual
  case Saturation
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
func NSRectFill(aRect: NSRect)
func NSRectFillList(rects: UnsafePointer<NSRect>, _ count: Int)
func NSRectFillListWithGrays(rects: UnsafePointer<NSRect>, _ grays: UnsafePointer<CGFloat>, _ num: Int)
func NSRectFillListWithColors(rects: UnsafePointer<NSRect>, _ colors: UnsafePointer<NSColor?>, _ num: Int)
func NSRectFillUsingOperation(aRect: NSRect, _ op: NSCompositingOperation)
func NSRectFillListUsingOperation(rects: UnsafePointer<NSRect>, _ count: Int, _ op: NSCompositingOperation)
func NSRectFillListWithColorsUsingOperation(rects: UnsafePointer<NSRect>, _ colors: UnsafePointer<NSColor?>, _ num: Int, _ op: NSCompositingOperation)
func NSFrameRect(aRect: NSRect)
func NSFrameRectWithWidth(aRect: NSRect, _ frameWidth: CGFloat)
func NSFrameRectWithWidthUsingOperation(aRect: NSRect, _ frameWidth: CGFloat, _ op: NSCompositingOperation)
func NSRectClip(aRect: NSRect)
func NSRectClipList(rects: UnsafePointer<NSRect>, _ count: Int)
func NSDrawTiledRects(boundsRect: NSRect, _ clipRect: NSRect, _ sides: UnsafePointer<NSRectEdge>, _ grays: UnsafePointer<CGFloat>, _ count: Int) -> NSRect
func NSDrawGrayBezel(aRect: NSRect, _ clipRect: NSRect)
func NSDrawGroove(aRect: NSRect, _ clipRect: NSRect)
func NSDrawWhiteBezel(aRect: NSRect, _ clipRect: NSRect)
func NSDrawButton(aRect: NSRect, _ clipRect: NSRect)
func NSEraseRect(aRect: NSRect)
func NSReadPixel(passedPoint: NSPoint) -> NSColor?
func NSDrawBitmap(rect: NSRect, _ width: Int, _ height: Int, _ bps: Int, _ spp: Int, _ bpp: Int, _ bpr: Int, _ isPlanar: Bool, _ hasAlpha: Bool, _ colorSpaceName: String, _ data: UnsafePointer<UnsafePointer<UInt8>>)
func NSBeep()
func NSGetWindowServerMemory(context: Int, _ virtualMemory: UnsafeMutablePointer<Int>, _ windowBackingMemory: UnsafeMutablePointer<Int>, _ windowDumpString: AutoreleasingUnsafeMutablePointer<NSString?>) -> Int
func NSDrawColorTiledRects(boundsRect: NSRect, _ clipRect: NSRect, _ sides: UnsafePointer<NSRectEdge>, _ colors: AutoreleasingUnsafeMutablePointer<NSColor?>, _ count: Int) -> NSRect
func NSDrawDarkBezel(aRect: NSRect, _ clipRect: NSRect)
func NSDrawLightBezel(aRect: NSRect, _ clipRect: NSRect)
func NSDottedFrameRect(aRect: NSRect)
func NSDrawWindowBackground(aRect: NSRect)
func NSSetFocusRingStyle(placement: NSFocusRingPlacement)
func NSDisableScreenUpdates()
func NSEnableScreenUpdates()
enum NSAnimationEffect : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DisappearingItemDefault
  case Poof
}
func NSShowAnimationEffect(animationEffect: NSAnimationEffect, _ centerLocation: NSPoint, _ size: NSSize, _ animationDelegate: AnyObject?, _ didEndSelector: Selector, _ contextInfo: UnsafeMutablePointer<Void>)
@available(OSX, introduced=10.0, deprecated=10.10)
func NSCopyBits(srcGState: Int, _ srcRect: NSRect, _ destPoint: NSPoint)
