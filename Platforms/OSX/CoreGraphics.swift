
struct CGAffineTransform {
  var a: CGFloat
  var b: CGFloat
  var c: CGFloat
  var d: CGFloat
  var tx: CGFloat
  var ty: CGFloat
  init()
  init(a: CGFloat, b: CGFloat, c: CGFloat, d: CGFloat, tx: CGFloat, ty: CGFloat)
}
@available(OSX 10.0, *)
let CGAffineTransformIdentity: CGAffineTransform
@available(OSX 10.0, *)
func CGAffineTransformMake(a: CGFloat, _ b: CGFloat, _ c: CGFloat, _ d: CGFloat, _ tx: CGFloat, _ ty: CGFloat) -> CGAffineTransform
@available(OSX 10.0, *)
func CGAffineTransformMakeTranslation(tx: CGFloat, _ ty: CGFloat) -> CGAffineTransform
@available(OSX 10.0, *)
func CGAffineTransformMakeScale(sx: CGFloat, _ sy: CGFloat) -> CGAffineTransform
@available(OSX 10.0, *)
func CGAffineTransformMakeRotation(angle: CGFloat) -> CGAffineTransform
@available(OSX 10.4, *)
func CGAffineTransformIsIdentity(t: CGAffineTransform) -> Bool
@available(OSX 10.0, *)
func CGAffineTransformTranslate(t: CGAffineTransform, _ tx: CGFloat, _ ty: CGFloat) -> CGAffineTransform
@available(OSX 10.0, *)
func CGAffineTransformScale(t: CGAffineTransform, _ sx: CGFloat, _ sy: CGFloat) -> CGAffineTransform
@available(OSX 10.0, *)
func CGAffineTransformRotate(t: CGAffineTransform, _ angle: CGFloat) -> CGAffineTransform
@available(OSX 10.0, *)
func CGAffineTransformInvert(t: CGAffineTransform) -> CGAffineTransform
@available(OSX 10.0, *)
func CGAffineTransformConcat(t1: CGAffineTransform, _ t2: CGAffineTransform) -> CGAffineTransform
@available(OSX 10.4, *)
func CGAffineTransformEqualToTransform(t1: CGAffineTransform, _ t2: CGAffineTransform) -> Bool
@available(OSX 10.0, *)
func CGPointApplyAffineTransform(point: CGPoint, _ t: CGAffineTransform) -> CGPoint
@available(OSX 10.0, *)
func CGSizeApplyAffineTransform(size: CGSize, _ t: CGAffineTransform) -> CGSize
@available(OSX 10.4, *)
func CGRectApplyAffineTransform(rect: CGRect, _ t: CGAffineTransform) -> CGRect

/*** Definitions of inline functions. ***/
func __CGAffineTransformMake(a: CGFloat, _ b: CGFloat, _ c: CGFloat, _ d: CGFloat, _ tx: CGFloat, _ ty: CGFloat) -> CGAffineTransform
func __CGPointApplyAffineTransform(point: CGPoint, _ t: CGAffineTransform) -> CGPoint
func __CGSizeApplyAffineTransform(size: CGSize, _ t: CGAffineTransform) -> CGSize
var CGFLOAT_IS_DOUBLE: Int32 { get }
var CGFLOAT_MIN: Double { get }
var CGFLOAT_MAX: Double { get }
var CGFLOAT_DEFINED: Int32 { get }
typealias CGBitmapContextReleaseDataCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> Void
@available(OSX 10.6, *)
func CGBitmapContextCreateWithData(data: UnsafeMutablePointer<Void>, _ width: Int, _ height: Int, _ bitsPerComponent: Int, _ bytesPerRow: Int, _ space: CGColorSpace?, _ bitmapInfo: UInt32, _ releaseCallback: CGBitmapContextReleaseDataCallback?, _ releaseInfo: UnsafeMutablePointer<Void>) -> CGContext?
@available(OSX 10.0, *)
func CGBitmapContextCreate(data: UnsafeMutablePointer<Void>, _ width: Int, _ height: Int, _ bitsPerComponent: Int, _ bytesPerRow: Int, _ space: CGColorSpace?, _ bitmapInfo: UInt32) -> CGContext?
@available(OSX 10.2, *)
func CGBitmapContextGetData(context: CGContext?) -> UnsafeMutablePointer<Void>
@available(OSX 10.2, *)
func CGBitmapContextGetWidth(context: CGContext?) -> Int
@available(OSX 10.2, *)
func CGBitmapContextGetHeight(context: CGContext?) -> Int
@available(OSX 10.2, *)
func CGBitmapContextGetBitsPerComponent(context: CGContext?) -> Int
@available(OSX 10.2, *)
func CGBitmapContextGetBitsPerPixel(context: CGContext?) -> Int
@available(OSX 10.2, *)
func CGBitmapContextGetBytesPerRow(context: CGContext?) -> Int
@available(OSX 10.2, *)
func CGBitmapContextGetColorSpace(context: CGContext?) -> CGColorSpace?
@available(OSX 10.2, *)
func CGBitmapContextGetAlphaInfo(context: CGContext?) -> CGImageAlphaInfo
@available(OSX 10.4, *)
func CGBitmapContextGetBitmapInfo(context: CGContext?) -> CGBitmapInfo
@available(OSX 10.4, *)
func CGBitmapContextCreateImage(context: CGContext?) -> CGImage?
class CGColor {
}
typealias CGColorRef = CGColor
@available(OSX 10.3, *)
func CGColorCreate(space: CGColorSpace?, _ components: UnsafePointer<CGFloat>) -> CGColor?
@available(OSX 10.5, *)
func CGColorCreateGenericGray(gray: CGFloat, _ alpha: CGFloat) -> CGColor
@available(OSX 10.5, *)
func CGColorCreateGenericRGB(red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) -> CGColor
@available(OSX 10.5, *)
func CGColorCreateGenericCMYK(cyan: CGFloat, _ magenta: CGFloat, _ yellow: CGFloat, _ black: CGFloat, _ alpha: CGFloat) -> CGColor
@available(OSX 10.5, *)
func CGColorGetConstantColor(colorName: CFString?) -> CGColor?
@available(OSX 10.3, *)
func CGColorCreateWithPattern(space: CGColorSpace?, _ pattern: CGPattern?, _ components: UnsafePointer<CGFloat>) -> CGColor?
@available(OSX 10.3, *)
func CGColorCreateCopy(color: CGColor?) -> CGColor?
@available(OSX 10.3, *)
func CGColorCreateCopyWithAlpha(color: CGColor?, _ alpha: CGFloat) -> CGColor?
@available(OSX 10.11, *)
func CGColorCreateCopyByMatchingToColorSpace(_: CGColorSpace?, _ intent: CGColorRenderingIntent, _ color: CGColor?, _ options: CFDictionary?) -> CGColor?
@available(OSX 10.3, *)
func CGColorEqualToColor(color1: CGColor?, _ color2: CGColor?) -> Bool
@available(OSX 10.3, *)
func CGColorGetNumberOfComponents(color: CGColor?) -> Int
@available(OSX 10.3, *)
func CGColorGetComponents(color: CGColor?) -> UnsafePointer<CGFloat>
@available(OSX 10.3, *)
func CGColorGetAlpha(color: CGColor?) -> CGFloat
@available(OSX 10.3, *)
func CGColorGetColorSpace(color: CGColor?) -> CGColorSpace?
@available(OSX 10.3, *)
func CGColorGetPattern(color: CGColor?) -> CGPattern?
@available(OSX 10.3, *)
func CGColorGetTypeID() -> CFTypeID

/*** Names of colors for use with `CGColorGetConstantColor'. ***/
@available(OSX 10.5, *)
let kCGColorWhite: CFString
@available(OSX 10.5, *)
let kCGColorBlack: CFString
@available(OSX 10.5, *)
let kCGColorClear: CFString
class CGColorSpace {
}
typealias CGColorSpaceRef = CGColorSpace
enum CGColorRenderingIntent : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case RenderingIntentDefault
  case RenderingIntentAbsoluteColorimetric
  case RenderingIntentRelativeColorimetric
  case RenderingIntentPerceptual
  case RenderingIntentSaturation
}
enum CGColorSpaceModel : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Unknown
  case Monochrome
  case RGB
  case CMYK
  case Lab
  case DeviceN
  case Indexed
  case Pattern
}
@available(OSX 10.4, *)
let kCGColorSpaceGenericGray: CFString
@available(OSX 10.4, *)
let kCGColorSpaceGenericRGB: CFString
@available(OSX 10.4, *)
let kCGColorSpaceGenericCMYK: CFString
@available(OSX 10.10, *)
let kCGColorSpaceDisplayP3: CFString
@available(OSX 10.5, *)
let kCGColorSpaceGenericRGBLinear: CFString
@available(OSX 10.5, *)
let kCGColorSpaceAdobeRGB1998: CFString
@available(OSX 10.5, *)
let kCGColorSpaceSRGB: CFString
@available(OSX 10.6, *)
let kCGColorSpaceGenericGrayGamma2_2: CFString
@available(OSX 10.11, *)
let kCGColorSpaceGenericXYZ: CFString
@available(OSX 10.11, *)
let kCGColorSpaceACESCGLinear: CFString
@available(OSX 10.11, *)
let kCGColorSpaceITUR_709: CFString
@available(OSX 10.11, *)
let kCGColorSpaceITUR_2020: CFString
@available(OSX 10.11, *)
let kCGColorSpaceROMMRGB: CFString
@available(OSX 10.11, *)
let kCGColorSpaceDCIP3: CFString
@available(OSX 10.0, *)
func CGColorSpaceCreateDeviceGray() -> CGColorSpace?
@available(OSX 10.0, *)
func CGColorSpaceCreateDeviceRGB() -> CGColorSpace?
@available(OSX 10.0, *)
func CGColorSpaceCreateDeviceCMYK() -> CGColorSpace?
@available(OSX 10.0, *)
func CGColorSpaceCreateCalibratedGray(whitePoint: UnsafePointer<CGFloat>, _ blackPoint: UnsafePointer<CGFloat>, _ gamma: CGFloat) -> CGColorSpace?
@available(OSX 10.0, *)
func CGColorSpaceCreateCalibratedRGB(whitePoint: UnsafePointer<CGFloat>, _ blackPoint: UnsafePointer<CGFloat>, _ gamma: UnsafePointer<CGFloat>, _ matrix: UnsafePointer<CGFloat>) -> CGColorSpace?
@available(OSX 10.0, *)
func CGColorSpaceCreateLab(whitePoint: UnsafePointer<CGFloat>, _ blackPoint: UnsafePointer<CGFloat>, _ range: UnsafePointer<CGFloat>) -> CGColorSpace?
@available(OSX 10.5, *)
func CGColorSpaceCreateWithICCProfile(data: CFData?) -> CGColorSpace?
@available(OSX 10.0, *)
func CGColorSpaceCreateICCBased(nComponents: Int, _ range: UnsafePointer<CGFloat>, _ profile: CGDataProvider?, _ alternate: CGColorSpace?) -> CGColorSpace?
@available(OSX 10.0, *)
func CGColorSpaceCreateIndexed(baseSpace: CGColorSpace?, _ lastIndex: Int, _ colorTable: UnsafePointer<UInt8>) -> CGColorSpace?
@available(OSX 10.0, *)
func CGColorSpaceCreatePattern(baseSpace: CGColorSpace?) -> CGColorSpace?
@available(OSX 10.0, *)
func CGColorSpaceCreateWithPlatformColorSpace(ref: UnsafePointer<Void>) -> CGColorSpace?
@available(OSX 10.2, *)
func CGColorSpaceCreateWithName(name: CFString?) -> CGColorSpace?
@available(OSX 10.6, *)
func CGColorSpaceCopyName(space: CGColorSpace?) -> CFString?
@available(OSX 10.2, *)
func CGColorSpaceGetTypeID() -> CFTypeID
@available(OSX 10.0, *)
func CGColorSpaceGetNumberOfComponents(space: CGColorSpace?) -> Int
@available(OSX 10.5, *)
func CGColorSpaceGetModel(space: CGColorSpace?) -> CGColorSpaceModel
@available(OSX 10.5, *)
func CGColorSpaceGetBaseColorSpace(space: CGColorSpace?) -> CGColorSpace?
@available(OSX 10.5, *)
func CGColorSpaceGetColorTableCount(space: CGColorSpace?) -> Int
@available(OSX 10.5, *)
func CGColorSpaceGetColorTable(space: CGColorSpace?, _ table: UnsafeMutablePointer<UInt8>)
@available(OSX 10.5, *)
func CGColorSpaceCopyICCProfile(space: CGColorSpace?) -> CFData?
class CGContext {
}
typealias CGContextRef = CGContext
enum CGPathDrawingMode : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Fill
  case EOFill
  case Stroke
  case FillStroke
  case EOFillStroke
}
enum CGTextDrawingMode : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Fill
  case Stroke
  case FillStroke
  case Invisible
  case FillClip
  case StrokeClip
  case FillStrokeClip
  case Clip
}
enum CGInterpolationQuality : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Default
  case None
  case Low
  case Medium
  case High
}
enum CGBlendMode : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Normal
  case Multiply
  case Screen
  case Overlay
  case Darken
  case Lighten
  case ColorDodge
  case ColorBurn
  case SoftLight
  case HardLight
  case Difference
  case Exclusion
  case Hue
  case Saturation
  case Color
  case Luminosity
  case Clear
  case Copy
  case SourceIn
  case SourceOut
  case SourceAtop
  case DestinationOver
  case DestinationIn
  case DestinationOut
  case DestinationAtop
  case XOR
  case PlusDarker
  case PlusLighter
}
@available(OSX 10.2, *)
func CGContextGetTypeID() -> CFTypeID

/** Graphics state functions. **/
@available(OSX 10.0, *)
func CGContextSaveGState(c: CGContext?)
@available(OSX 10.0, *)
func CGContextRestoreGState(c: CGContext?)

/** Coordinate space transformations. **/
@available(OSX 10.0, *)
func CGContextScaleCTM(c: CGContext?, _ sx: CGFloat, _ sy: CGFloat)
@available(OSX 10.0, *)
func CGContextTranslateCTM(c: CGContext?, _ tx: CGFloat, _ ty: CGFloat)
@available(OSX 10.0, *)
func CGContextRotateCTM(c: CGContext?, _ angle: CGFloat)
@available(OSX 10.0, *)
func CGContextConcatCTM(c: CGContext?, _ transform: CGAffineTransform)
@available(OSX 10.0, *)
func CGContextGetCTM(c: CGContext?) -> CGAffineTransform

/** Drawing attribute functions. **/
@available(OSX 10.0, *)
func CGContextSetLineWidth(c: CGContext?, _ width: CGFloat)
@available(OSX 10.0, *)
func CGContextSetLineCap(c: CGContext?, _ cap: CGLineCap)
@available(OSX 10.0, *)
func CGContextSetLineJoin(c: CGContext?, _ join: CGLineJoin)
@available(OSX 10.0, *)
func CGContextSetMiterLimit(c: CGContext?, _ limit: CGFloat)
@available(OSX 10.0, *)
func CGContextSetLineDash(c: CGContext?, _ phase: CGFloat, _ lengths: UnsafePointer<CGFloat>, _ count: Int)
@available(OSX 10.0, *)
func CGContextSetFlatness(c: CGContext?, _ flatness: CGFloat)
@available(OSX 10.0, *)
func CGContextSetAlpha(c: CGContext?, _ alpha: CGFloat)
@available(OSX 10.4, *)
func CGContextSetBlendMode(c: CGContext?, _ mode: CGBlendMode)

/** Path construction functions. **/
@available(OSX 10.0, *)
func CGContextBeginPath(c: CGContext?)
@available(OSX 10.0, *)
func CGContextMoveToPoint(c: CGContext?, _ x: CGFloat, _ y: CGFloat)
@available(OSX 10.0, *)
func CGContextAddLineToPoint(c: CGContext?, _ x: CGFloat, _ y: CGFloat)
@available(OSX 10.0, *)
func CGContextAddCurveToPoint(c: CGContext?, _ cp1x: CGFloat, _ cp1y: CGFloat, _ cp2x: CGFloat, _ cp2y: CGFloat, _ x: CGFloat, _ y: CGFloat)
@available(OSX 10.0, *)
func CGContextAddQuadCurveToPoint(c: CGContext?, _ cpx: CGFloat, _ cpy: CGFloat, _ x: CGFloat, _ y: CGFloat)
@available(OSX 10.0, *)
func CGContextClosePath(c: CGContext?)

/** Path construction convenience functions. **/
@available(OSX 10.0, *)
func CGContextAddRect(c: CGContext?, _ rect: CGRect)
@available(OSX 10.0, *)
func CGContextAddRects(c: CGContext?, _ rects: UnsafePointer<CGRect>, _ count: Int)
@available(OSX 10.0, *)
func CGContextAddLines(c: CGContext?, _ points: UnsafePointer<CGPoint>, _ count: Int)
@available(OSX 10.4, *)
func CGContextAddEllipseInRect(c: CGContext?, _ rect: CGRect)
@available(OSX 10.0, *)
func CGContextAddArc(c: CGContext?, _ x: CGFloat, _ y: CGFloat, _ radius: CGFloat, _ startAngle: CGFloat, _ endAngle: CGFloat, _ clockwise: Int32)
@available(OSX 10.0, *)
func CGContextAddArcToPoint(c: CGContext?, _ x1: CGFloat, _ y1: CGFloat, _ x2: CGFloat, _ y2: CGFloat, _ radius: CGFloat)
@available(OSX 10.2, *)
func CGContextAddPath(c: CGContext?, _ path: CGPath?)
@available(OSX 10.4, *)
func CGContextReplacePathWithStrokedPath(c: CGContext?)

/** Path information functions. **/
@available(OSX 10.0, *)
func CGContextIsPathEmpty(c: CGContext?) -> Bool
@available(OSX 10.0, *)
func CGContextGetPathCurrentPoint(c: CGContext?) -> CGPoint
@available(OSX 10.0, *)
func CGContextGetPathBoundingBox(c: CGContext?) -> CGRect
@available(OSX 10.2, *)
func CGContextCopyPath(c: CGContext?) -> CGPath?
@available(OSX 10.4, *)
func CGContextPathContainsPoint(c: CGContext?, _ point: CGPoint, _ mode: CGPathDrawingMode) -> Bool

/** Path drawing functions. **/
@available(OSX 10.0, *)
func CGContextDrawPath(c: CGContext?, _ mode: CGPathDrawingMode)

/** Path drawing convenience functions. **/
@available(OSX 10.0, *)
func CGContextFillPath(c: CGContext?)
@available(OSX 10.0, *)
func CGContextEOFillPath(c: CGContext?)
@available(OSX 10.0, *)
func CGContextStrokePath(c: CGContext?)
@available(OSX 10.0, *)
func CGContextFillRect(c: CGContext?, _ rect: CGRect)
@available(OSX 10.0, *)
func CGContextFillRects(c: CGContext?, _ rects: UnsafePointer<CGRect>, _ count: Int)
@available(OSX 10.0, *)
func CGContextStrokeRect(c: CGContext?, _ rect: CGRect)
@available(OSX 10.0, *)
func CGContextStrokeRectWithWidth(c: CGContext?, _ rect: CGRect, _ width: CGFloat)
@available(OSX 10.0, *)
func CGContextClearRect(c: CGContext?, _ rect: CGRect)
@available(OSX 10.4, *)
func CGContextFillEllipseInRect(c: CGContext?, _ rect: CGRect)
@available(OSX 10.4, *)
func CGContextStrokeEllipseInRect(c: CGContext?, _ rect: CGRect)
@available(OSX 10.4, *)
func CGContextStrokeLineSegments(c: CGContext?, _ points: UnsafePointer<CGPoint>, _ count: Int)

/** Clipping functions. **/
@available(OSX 10.0, *)
func CGContextClip(c: CGContext?)
@available(OSX 10.0, *)
func CGContextEOClip(c: CGContext?)
@available(OSX 10.4, *)
func CGContextClipToMask(c: CGContext?, _ rect: CGRect, _ mask: CGImage?)
@available(OSX 10.3, *)
func CGContextGetClipBoundingBox(c: CGContext?) -> CGRect

/** Clipping convenience functions. **/
@available(OSX 10.0, *)
func CGContextClipToRect(c: CGContext?, _ rect: CGRect)
@available(OSX 10.0, *)
func CGContextClipToRects(c: CGContext?, _ rects: UnsafePointer<CGRect>, _ count: Int)

/** Primitive color functions. **/
@available(OSX 10.3, *)
func CGContextSetFillColorWithColor(c: CGContext?, _ color: CGColor?)
@available(OSX 10.3, *)
func CGContextSetStrokeColorWithColor(c: CGContext?, _ color: CGColor?)

/** Color space functions. **/
@available(OSX 10.0, *)
func CGContextSetFillColorSpace(c: CGContext?, _ space: CGColorSpace?)
@available(OSX 10.0, *)
func CGContextSetStrokeColorSpace(c: CGContext?, _ space: CGColorSpace?)

/** Color functions. **/
@available(OSX 10.0, *)
func CGContextSetFillColor(c: CGContext?, _ components: UnsafePointer<CGFloat>)
@available(OSX 10.0, *)
func CGContextSetStrokeColor(c: CGContext?, _ components: UnsafePointer<CGFloat>)

/** Pattern functions. **/
@available(OSX 10.0, *)
func CGContextSetFillPattern(c: CGContext?, _ pattern: CGPattern?, _ components: UnsafePointer<CGFloat>)
@available(OSX 10.0, *)
func CGContextSetStrokePattern(c: CGContext?, _ pattern: CGPattern?, _ components: UnsafePointer<CGFloat>)
@available(OSX 10.0, *)
func CGContextSetPatternPhase(c: CGContext?, _ phase: CGSize)

/** Color convenience functions. **/
@available(OSX 10.0, *)
func CGContextSetGrayFillColor(c: CGContext?, _ gray: CGFloat, _ alpha: CGFloat)
@available(OSX 10.0, *)
func CGContextSetGrayStrokeColor(c: CGContext?, _ gray: CGFloat, _ alpha: CGFloat)
@available(OSX 10.0, *)
func CGContextSetRGBFillColor(c: CGContext?, _ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat)
@available(OSX 10.0, *)
func CGContextSetRGBStrokeColor(c: CGContext?, _ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat)
@available(OSX 10.0, *)
func CGContextSetCMYKFillColor(c: CGContext?, _ cyan: CGFloat, _ magenta: CGFloat, _ yellow: CGFloat, _ black: CGFloat, _ alpha: CGFloat)
@available(OSX 10.0, *)
func CGContextSetCMYKStrokeColor(c: CGContext?, _ cyan: CGFloat, _ magenta: CGFloat, _ yellow: CGFloat, _ black: CGFloat, _ alpha: CGFloat)

/** Rendering intent. **/
@available(OSX 10.0, *)
func CGContextSetRenderingIntent(c: CGContext?, _ intent: CGColorRenderingIntent)

/** Image functions. **/
@available(OSX 10.0, *)
func CGContextDrawImage(c: CGContext?, _ rect: CGRect, _ image: CGImage?)
@available(OSX 10.5, *)
func CGContextDrawTiledImage(c: CGContext?, _ rect: CGRect, _ image: CGImage?)
@available(OSX 10.0, *)
func CGContextGetInterpolationQuality(c: CGContext?) -> CGInterpolationQuality
@available(OSX 10.0, *)
func CGContextSetInterpolationQuality(c: CGContext?, _ quality: CGInterpolationQuality)
@available(OSX 10.3, *)
func CGContextSetShadowWithColor(c: CGContext?, _ offset: CGSize, _ blur: CGFloat, _ color: CGColor?)
@available(OSX 10.3, *)
func CGContextSetShadow(c: CGContext?, _ offset: CGSize, _ blur: CGFloat)
@available(OSX 10.5, *)
func CGContextDrawLinearGradient(c: CGContext?, _ gradient: CGGradient?, _ startPoint: CGPoint, _ endPoint: CGPoint, _ options: CGGradientDrawingOptions)
@available(OSX 10.5, *)
func CGContextDrawRadialGradient(c: CGContext?, _ gradient: CGGradient?, _ startCenter: CGPoint, _ startRadius: CGFloat, _ endCenter: CGPoint, _ endRadius: CGFloat, _ options: CGGradientDrawingOptions)
@available(OSX 10.2, *)
func CGContextDrawShading(c: CGContext?, _ shading: CGShading?)

/** Text functions. **/
@available(OSX 10.0, *)
func CGContextSetCharacterSpacing(c: CGContext?, _ spacing: CGFloat)
@available(OSX 10.0, *)
func CGContextSetTextPosition(c: CGContext?, _ x: CGFloat, _ y: CGFloat)
@available(OSX 10.0, *)
func CGContextGetTextPosition(c: CGContext?) -> CGPoint
@available(OSX 10.0, *)
func CGContextSetTextMatrix(c: CGContext?, _ t: CGAffineTransform)
@available(OSX 10.0, *)
func CGContextGetTextMatrix(c: CGContext?) -> CGAffineTransform
@available(OSX 10.0, *)
func CGContextSetTextDrawingMode(c: CGContext?, _ mode: CGTextDrawingMode)
@available(OSX 10.0, *)
func CGContextSetFont(c: CGContext?, _ font: CGFont?)
@available(OSX 10.0, *)
func CGContextSetFontSize(c: CGContext?, _ size: CGFloat)
@available(OSX 10.5, *)
func CGContextShowGlyphsAtPositions(c: CGContext?, _ glyphs: UnsafePointer<CGGlyph>, _ Lpositions: UnsafePointer<CGPoint>, _ count: Int)

/** PDF functions. **/
@available(OSX 10.3, *)
func CGContextDrawPDFPage(c: CGContext?, _ page: CGPDFPage?)

/** Output page functions. **/
@available(OSX 10.0, *)
func CGContextBeginPage(c: CGContext?, _ mediaBox: UnsafePointer<CGRect>)
@available(OSX 10.0, *)
func CGContextEndPage(c: CGContext?)
@available(OSX 10.0, *)
func CGContextFlush(c: CGContext?)
@available(OSX 10.0, *)
func CGContextSynchronize(c: CGContext?)
@available(OSX 10.0, *)
func CGContextSetShouldAntialias(c: CGContext?, _ shouldAntialias: Bool)
@available(OSX 10.4, *)
func CGContextSetAllowsAntialiasing(c: CGContext?, _ allowsAntialiasing: Bool)
@available(OSX 10.2, *)
func CGContextSetShouldSmoothFonts(c: CGContext?, _ shouldSmoothFonts: Bool)
@available(OSX 10.2, *)
func CGContextSetAllowsFontSmoothing(c: CGContext?, _ allowsFontSmoothing: Bool)
@available(OSX 10.5, *)
func CGContextSetShouldSubpixelPositionFonts(c: CGContext?, _ shouldSubpixelPositionFonts: Bool)
@available(OSX 10.5, *)
func CGContextSetAllowsFontSubpixelPositioning(c: CGContext?, _ allowsFontSubpixelPositioning: Bool)
@available(OSX 10.5, *)
func CGContextSetShouldSubpixelQuantizeFonts(c: CGContext?, _ shouldSubpixelQuantizeFonts: Bool)
@available(OSX 10.5, *)
func CGContextSetAllowsFontSubpixelQuantization(c: CGContext?, _ allowsFontSubpixelQuantization: Bool)

/** Transparency layer support. **/
@available(OSX 10.3, *)
func CGContextBeginTransparencyLayer(c: CGContext?, _ auxiliaryInfo: CFDictionary?)
@available(OSX 10.5, *)
func CGContextBeginTransparencyLayerWithRect(c: CGContext?, _ rect: CGRect, _ auxInfo: CFDictionary?)
@available(OSX 10.3, *)
func CGContextEndTransparencyLayer(c: CGContext?)

/** User space to device space tranformations. **/
@available(OSX 10.4, *)
func CGContextGetUserSpaceToDeviceSpaceTransform(c: CGContext?) -> CGAffineTransform
@available(OSX 10.4, *)
func CGContextConvertPointToDeviceSpace(c: CGContext?, _ point: CGPoint) -> CGPoint
@available(OSX 10.4, *)
func CGContextConvertPointToUserSpace(c: CGContext?, _ point: CGPoint) -> CGPoint
@available(OSX 10.4, *)
func CGContextConvertSizeToDeviceSpace(c: CGContext?, _ size: CGSize) -> CGSize
@available(OSX 10.4, *)
func CGContextConvertSizeToUserSpace(c: CGContext?, _ size: CGSize) -> CGSize
@available(OSX 10.4, *)
func CGContextConvertRectToDeviceSpace(c: CGContext?, _ rect: CGRect) -> CGRect
@available(OSX 10.4, *)
func CGContextConvertRectToUserSpace(c: CGContext?, _ rect: CGRect) -> CGRect
class CGDataConsumer {
}
typealias CGDataConsumerRef = CGDataConsumer
typealias CGDataConsumerPutBytesCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<Void>, Int) -> Int
typealias CGDataConsumerReleaseInfoCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
struct CGDataConsumerCallbacks {
  var putBytes: CGDataConsumerPutBytesCallback?
  var releaseConsumer: CGDataConsumerReleaseInfoCallback?
  init()
  init(putBytes: CGDataConsumerPutBytesCallback?, releaseConsumer: CGDataConsumerReleaseInfoCallback?)
}
@available(OSX 10.2, *)
func CGDataConsumerGetTypeID() -> CFTypeID
@available(OSX 10.0, *)
func CGDataConsumerCreate(info: UnsafeMutablePointer<Void>, _ cbks: UnsafePointer<CGDataConsumerCallbacks>) -> CGDataConsumer?
@available(OSX 10.0, *)
func CGDataConsumerCreateWithURL(url: CFURL?) -> CGDataConsumer?
@available(OSX 10.4, *)
func CGDataConsumerCreateWithCFData(data: CFMutableData?) -> CGDataConsumer?
class CGDataProvider {
}
typealias CGDataProviderRef = CGDataProvider
typealias CGDataProviderGetBytesCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, Int) -> Int
typealias CGDataProviderSkipForwardCallback = @convention(c) (UnsafeMutablePointer<Void>, off_t) -> off_t
typealias CGDataProviderRewindCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
typealias CGDataProviderReleaseInfoCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
struct CGDataProviderSequentialCallbacks {
  var version: UInt32
  var getBytes: CGDataProviderGetBytesCallback?
  var skipForward: CGDataProviderSkipForwardCallback?
  var rewind: CGDataProviderRewindCallback?
  var releaseInfo: CGDataProviderReleaseInfoCallback?
  init()
  init(version: UInt32, getBytes: CGDataProviderGetBytesCallback?, skipForward: CGDataProviderSkipForwardCallback?, rewind: CGDataProviderRewindCallback?, releaseInfo: CGDataProviderReleaseInfoCallback?)
}
typealias CGDataProviderGetBytePointerCallback = @convention(c) (UnsafeMutablePointer<Void>) -> UnsafePointer<Void>
typealias CGDataProviderReleaseBytePointerCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<Void>) -> Void
typealias CGDataProviderGetBytesAtPositionCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, off_t, Int) -> Int
struct CGDataProviderDirectCallbacks {
  var version: UInt32
  var getBytePointer: CGDataProviderGetBytePointerCallback?
  var releaseBytePointer: CGDataProviderReleaseBytePointerCallback?
  var getBytesAtPosition: CGDataProviderGetBytesAtPositionCallback?
  var releaseInfo: CGDataProviderReleaseInfoCallback?
  init()
  init(version: UInt32, getBytePointer: CGDataProviderGetBytePointerCallback?, releaseBytePointer: CGDataProviderReleaseBytePointerCallback?, getBytesAtPosition: CGDataProviderGetBytesAtPositionCallback?, releaseInfo: CGDataProviderReleaseInfoCallback?)
}
@available(OSX 10.2, *)
func CGDataProviderGetTypeID() -> CFTypeID
@available(OSX 10.5, *)
func CGDataProviderCreateSequential(info: UnsafeMutablePointer<Void>, _ callbacks: UnsafePointer<CGDataProviderSequentialCallbacks>) -> CGDataProvider?
@available(OSX 10.5, *)
func CGDataProviderCreateDirect(info: UnsafeMutablePointer<Void>, _ size: off_t, _ callbacks: UnsafePointer<CGDataProviderDirectCallbacks>) -> CGDataProvider?
typealias CGDataProviderReleaseDataCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<Void>, Int) -> Void
@available(OSX 10.0, *)
func CGDataProviderCreateWithData(info: UnsafeMutablePointer<Void>, _ data: UnsafePointer<Void>, _ size: Int, _ releaseData: CGDataProviderReleaseDataCallback?) -> CGDataProvider?
@available(OSX 10.4, *)
func CGDataProviderCreateWithCFData(data: CFData?) -> CGDataProvider?
@available(OSX 10.0, *)
func CGDataProviderCreateWithURL(url: CFURL?) -> CGDataProvider?
@available(OSX 10.0, *)
func CGDataProviderCreateWithFilename(filename: UnsafePointer<Int8>) -> CGDataProvider?
@available(OSX 10.3, *)
func CGDataProviderCopyData(provider: CGDataProvider?) -> CFData?
typealias CGDirectDisplayID = UInt32
typealias CGOpenGLDisplayMask = UInt32
typealias CGRefreshRate = Double
class CGDisplayMode {
}
typealias CGDisplayModeRef = CGDisplayMode
@available(OSX 10.2, *)
func CGMainDisplayID() -> CGDirectDisplayID
@available(OSX 10.0, *)
func CGGetDisplaysWithPoint(point: CGPoint, _ maxDisplays: UInt32, _ displays: UnsafeMutablePointer<CGDirectDisplayID>, _ matchingDisplayCount: UnsafeMutablePointer<UInt32>) -> CGError
@available(OSX 10.0, *)
func CGGetDisplaysWithRect(rect: CGRect, _ maxDisplays: UInt32, _ displays: UnsafeMutablePointer<CGDirectDisplayID>, _ matchingDisplayCount: UnsafeMutablePointer<UInt32>) -> CGError
@available(OSX 10.0, *)
func CGGetDisplaysWithOpenGLDisplayMask(mask: CGOpenGLDisplayMask, _ maxDisplays: UInt32, _ displays: UnsafeMutablePointer<CGDirectDisplayID>, _ matchingDisplayCount: UnsafeMutablePointer<UInt32>) -> CGError
@available(OSX 10.0, *)
func CGGetActiveDisplayList(maxDisplays: UInt32, _ activeDisplays: UnsafeMutablePointer<CGDirectDisplayID>, _ displayCount: UnsafeMutablePointer<UInt32>) -> CGError
@available(OSX 10.2, *)
func CGGetOnlineDisplayList(maxDisplays: UInt32, _ onlineDisplays: UnsafeMutablePointer<CGDirectDisplayID>, _ displayCount: UnsafeMutablePointer<UInt32>) -> CGError
@available(OSX 10.0, *)
func CGDisplayIDToOpenGLDisplayMask(display: CGDirectDisplayID) -> CGOpenGLDisplayMask
@available(OSX 10.2, *)
func CGOpenGLDisplayMaskToDisplayID(mask: CGOpenGLDisplayMask) -> CGDirectDisplayID
@available(OSX 10.0, *)
func CGDisplayBounds(display: CGDirectDisplayID) -> CGRect
@available(OSX 10.0, *)
func CGDisplayPixelsWide(display: CGDirectDisplayID) -> Int
@available(OSX 10.0, *)
func CGDisplayPixelsHigh(display: CGDirectDisplayID) -> Int
@available(OSX 10.6, *)
func CGDisplayCopyAllDisplayModes(display: CGDirectDisplayID, _ options: CFDictionary?) -> CFArray?
@available(OSX 10.8, *)
let kCGDisplayShowDuplicateLowResolutionModes: CFString
@available(OSX 10.6, *)
func CGDisplayCopyDisplayMode(display: CGDirectDisplayID) -> CGDisplayMode?
@available(OSX 10.6, *)
func CGDisplaySetDisplayMode(display: CGDirectDisplayID, _ mode: CGDisplayMode?, _ options: CFDictionary?) -> CGError
@available(OSX 10.6, *)
func CGDisplayModeGetWidth(mode: CGDisplayMode?) -> Int
@available(OSX 10.6, *)
func CGDisplayModeGetHeight(mode: CGDisplayMode?) -> Int
@available(OSX, introduced=10.6, deprecated=10.11)
func CGDisplayModeCopyPixelEncoding(mode: CGDisplayMode?) -> CFString?
@available(OSX 10.6, *)
func CGDisplayModeGetRefreshRate(mode: CGDisplayMode?) -> Double
@available(OSX 10.6, *)
func CGDisplayModeGetIOFlags(mode: CGDisplayMode?) -> UInt32
@available(OSX 10.6, *)
func CGDisplayModeGetIODisplayModeID(mode: CGDisplayMode?) -> Int32
@available(OSX 10.6, *)
func CGDisplayModeIsUsableForDesktopGUI(mode: CGDisplayMode?) -> Bool
@available(OSX 10.6, *)
func CGDisplayModeGetTypeID() -> CFTypeID
@available(OSX 10.8, *)
func CGDisplayModeGetPixelWidth(mode: CGDisplayMode?) -> Int
@available(OSX 10.8, *)
func CGDisplayModeGetPixelHeight(mode: CGDisplayMode?) -> Int
typealias CGGammaValue = Float
@available(OSX 10.0, *)
func CGSetDisplayTransferByFormula(display: CGDirectDisplayID, _ redMin: CGGammaValue, _ redMax: CGGammaValue, _ redGamma: CGGammaValue, _ greenMin: CGGammaValue, _ greenMax: CGGammaValue, _ greenGamma: CGGammaValue, _ blueMin: CGGammaValue, _ blueMax: CGGammaValue, _ blueGamma: CGGammaValue) -> CGError
@available(OSX 10.0, *)
func CGGetDisplayTransferByFormula(display: CGDirectDisplayID, _ redMin: UnsafeMutablePointer<CGGammaValue>, _ redMax: UnsafeMutablePointer<CGGammaValue>, _ redGamma: UnsafeMutablePointer<CGGammaValue>, _ greenMin: UnsafeMutablePointer<CGGammaValue>, _ greenMax: UnsafeMutablePointer<CGGammaValue>, _ greenGamma: UnsafeMutablePointer<CGGammaValue>, _ blueMin: UnsafeMutablePointer<CGGammaValue>, _ blueMax: UnsafeMutablePointer<CGGammaValue>, _ blueGamma: UnsafeMutablePointer<CGGammaValue>) -> CGError
@available(OSX 10.3, *)
func CGDisplayGammaTableCapacity(display: CGDirectDisplayID) -> UInt32
@available(OSX 10.0, *)
func CGSetDisplayTransferByTable(display: CGDirectDisplayID, _ tableSize: UInt32, _ redTable: UnsafePointer<CGGammaValue>, _ greenTable: UnsafePointer<CGGammaValue>, _ blueTable: UnsafePointer<CGGammaValue>) -> CGError
@available(OSX 10.0, *)
func CGGetDisplayTransferByTable(display: CGDirectDisplayID, _ capacity: UInt32, _ redTable: UnsafeMutablePointer<CGGammaValue>, _ greenTable: UnsafeMutablePointer<CGGammaValue>, _ blueTable: UnsafeMutablePointer<CGGammaValue>, _ sampleCount: UnsafeMutablePointer<UInt32>) -> CGError
@available(OSX 10.0, *)
func CGSetDisplayTransferByByteTable(display: CGDirectDisplayID, _ tableSize: UInt32, _ redTable: UnsafePointer<UInt8>, _ greenTable: UnsafePointer<UInt8>, _ blueTable: UnsafePointer<UInt8>) -> CGError
@available(OSX 10.0, *)
func CGDisplayRestoreColorSyncSettings()
struct CGCaptureOptions : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var NoOptions: CGCaptureOptions { get }
  @available(*, deprecated)
  static var NoFill: CGCaptureOptions { get }
}
@available(OSX 10.0, *)
func CGDisplayCapture(display: CGDirectDisplayID) -> CGError
@available(OSX 10.3, *)
func CGDisplayCaptureWithOptions(display: CGDirectDisplayID, _ options: CGCaptureOptions) -> CGError
@available(OSX 10.0, *)
func CGDisplayRelease(display: CGDirectDisplayID) -> CGError
@available(OSX 10.0, *)
func CGCaptureAllDisplays() -> CGError
@available(OSX 10.3, *)
func CGCaptureAllDisplaysWithOptions(options: CGCaptureOptions) -> CGError
@available(OSX 10.0, *)
func CGReleaseAllDisplays() -> CGError
@available(OSX 10.0, *)
func CGShieldingWindowID(display: CGDirectDisplayID) -> UInt32
@available(OSX 10.0, *)
func CGShieldingWindowLevel() -> Int32
@available(OSX 10.6, *)
func CGDisplayCreateImage(displayID: CGDirectDisplayID) -> CGImage?
@available(OSX 10.6, *)
func CGDisplayCreateImageForRect(display: CGDirectDisplayID, _ rect: CGRect) -> CGImage?
@available(OSX 10.0, *)
func CGDisplayHideCursor(display: CGDirectDisplayID) -> CGError
@available(OSX 10.0, *)
func CGDisplayShowCursor(display: CGDirectDisplayID) -> CGError
@available(OSX 10.0, *)
func CGDisplayMoveCursorToPoint(display: CGDirectDisplayID, _ point: CGPoint) -> CGError
@available(OSX 10.0, *)
func CGGetLastMouseDelta(deltaX: UnsafeMutablePointer<Int32>, _ deltaY: UnsafeMutablePointer<Int32>)
@available(OSX 10.3, *)
func CGDisplayGetDrawingContext(display: CGDirectDisplayID) -> CGContext?
var kCGDisplayWidth: String { get }
var kCGDisplayHeight: String { get }
var kCGDisplayMode: String { get }
var kCGDisplayBitsPerPixel: String { get }
var kCGDisplayBitsPerSample: String { get }
var kCGDisplaySamplesPerPixel: String { get }
var kCGDisplayRefreshRate: String { get }
var kCGDisplayModeUsableForDesktopGUI: String { get }
var kCGDisplayIOFlags: String { get }
var kCGDisplayBytesPerRow: String { get }
var kCGIODisplayModeID: String { get }
var kCGDisplayModeIsSafeForHardware: String { get }
var kCGDisplayModeIsInterlaced: String { get }
var kCGDisplayModeIsStretched: String { get }
var kCGDisplayModeIsTelevisionOutput: String { get }
typealias CGDisplayCount = UInt32
typealias CGDisplayErr = CGError
struct CGDeviceColor {
  var red: Float
  var green: Float
  var blue: Float
  init()
  init(red: Float, green: Float, blue: Float)
}
typealias CGDisplayConfigRef = COpaquePointer
@available(OSX 10.0, *)
func CGBeginDisplayConfiguration(config: UnsafeMutablePointer<CGDisplayConfigRef>) -> CGError
@available(OSX 10.0, *)
func CGConfigureDisplayOrigin(config: CGDisplayConfigRef, _ display: CGDirectDisplayID, _ x: Int32, _ y: Int32) -> CGError
@available(OSX 10.6, *)
func CGConfigureDisplayWithDisplayMode(config: CGDisplayConfigRef, _ display: CGDirectDisplayID, _ mode: CGDisplayMode?, _ options: CFDictionary?) -> CGError
@available(OSX 10.4, *)
func CGConfigureDisplayStereoOperation(config: CGDisplayConfigRef, _ display: CGDirectDisplayID, _ stereo: boolean_t, _ forceBlueLine: boolean_t) -> CGError
@available(OSX 10.2, *)
func CGConfigureDisplayMirrorOfDisplay(config: CGDisplayConfigRef, _ display: CGDirectDisplayID, _ master: CGDirectDisplayID) -> CGError
@available(OSX 10.0, *)
func CGCancelDisplayConfiguration(config: CGDisplayConfigRef) -> CGError
struct CGConfigureOption : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var ForAppOnly: CGConfigureOption { get }
  static var ForSession: CGConfigureOption { get }
  static var Permanently: CGConfigureOption { get }
}
@available(OSX 10.0, *)
func CGCompleteDisplayConfiguration(config: CGDisplayConfigRef, _ option: CGConfigureOption) -> CGError
@available(OSX 10.2, *)
func CGRestorePermanentDisplayConfiguration()
struct CGDisplayChangeSummaryFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var BeginConfigurationFlag: CGDisplayChangeSummaryFlags { get }
  static var MovedFlag: CGDisplayChangeSummaryFlags { get }
  static var SetMainFlag: CGDisplayChangeSummaryFlags { get }
  static var SetModeFlag: CGDisplayChangeSummaryFlags { get }
  static var AddFlag: CGDisplayChangeSummaryFlags { get }
  static var RemoveFlag: CGDisplayChangeSummaryFlags { get }
  static var EnabledFlag: CGDisplayChangeSummaryFlags { get }
  static var DisabledFlag: CGDisplayChangeSummaryFlags { get }
  static var MirrorFlag: CGDisplayChangeSummaryFlags { get }
  static var UnMirrorFlag: CGDisplayChangeSummaryFlags { get }
  static var DesktopShapeChangedFlag: CGDisplayChangeSummaryFlags { get }
}
typealias CGDisplayReconfigurationCallBack = @convention(c) (CGDirectDisplayID, CGDisplayChangeSummaryFlags, UnsafeMutablePointer<Void>) -> Void
@available(OSX 10.3, *)
func CGDisplayRegisterReconfigurationCallback(callback: CGDisplayReconfigurationCallBack?, _ userInfo: UnsafeMutablePointer<Void>) -> CGError
@available(OSX 10.3, *)
func CGDisplayRemoveReconfigurationCallback(callback: CGDisplayReconfigurationCallBack?, _ userInfo: UnsafeMutablePointer<Void>) -> CGError
@available(OSX 10.4, *)
func CGDisplaySetStereoOperation(display: CGDirectDisplayID, _ stereo: boolean_t, _ forceBlueLine: boolean_t, _ option: CGConfigureOption) -> CGError
@available(OSX 10.2, *)
func CGDisplayIsActive(display: CGDirectDisplayID) -> boolean_t
@available(OSX 10.2, *)
func CGDisplayIsAsleep(display: CGDirectDisplayID) -> boolean_t
@available(OSX 10.2, *)
func CGDisplayIsOnline(display: CGDirectDisplayID) -> boolean_t
@available(OSX 10.2, *)
func CGDisplayIsMain(display: CGDirectDisplayID) -> boolean_t
@available(OSX 10.2, *)
func CGDisplayIsBuiltin(display: CGDirectDisplayID) -> boolean_t
@available(OSX 10.2, *)
func CGDisplayIsInMirrorSet(display: CGDirectDisplayID) -> boolean_t
@available(OSX 10.2, *)
func CGDisplayIsAlwaysInMirrorSet(display: CGDirectDisplayID) -> boolean_t
@available(OSX 10.2, *)
func CGDisplayIsInHWMirrorSet(display: CGDirectDisplayID) -> boolean_t
@available(OSX 10.2, *)
func CGDisplayMirrorsDisplay(display: CGDirectDisplayID) -> CGDirectDisplayID
@available(OSX 10.2, *)
func CGDisplayUsesOpenGLAcceleration(display: CGDirectDisplayID) -> boolean_t
@available(OSX 10.4, *)
func CGDisplayIsStereo(display: CGDirectDisplayID) -> boolean_t
@available(OSX 10.2, *)
func CGDisplayPrimaryDisplay(display: CGDirectDisplayID) -> CGDirectDisplayID
@available(OSX 10.2, *)
func CGDisplayUnitNumber(display: CGDirectDisplayID) -> UInt32
@available(OSX 10.2, *)
func CGDisplayVendorNumber(display: CGDirectDisplayID) -> UInt32
@available(OSX 10.2, *)
func CGDisplayModelNumber(display: CGDirectDisplayID) -> UInt32
@available(OSX 10.2, *)
func CGDisplaySerialNumber(display: CGDirectDisplayID) -> UInt32
@available(OSX 10.3, *)
func CGDisplayScreenSize(display: CGDirectDisplayID) -> CGSize
@available(OSX 10.5, *)
func CGDisplayRotation(display: CGDirectDisplayID) -> Double
@available(OSX 10.5, *)
func CGDisplayCopyColorSpace(display: CGDirectDisplayID) -> CGColorSpace
typealias CGDisplayFadeReservationToken = UInt32
var kCGDisplayFadeReservationInvalidToken: Int32 { get }
typealias CGDisplayBlendFraction = Float
var kCGDisplayBlendNormal: Double { get }
var kCGDisplayBlendSolidColor: Double { get }
typealias CGDisplayFadeInterval = Float
@available(OSX 10.2, *)
func CGConfigureDisplayFadeEffect(config: CGDisplayConfigRef, _ fadeOutSeconds: CGDisplayFadeInterval, _ fadeInSeconds: CGDisplayFadeInterval, _ fadeRed: Float, _ fadeGreen: Float, _ fadeBlue: Float) -> CGError
typealias CGDisplayReservationInterval = Float
@available(OSX 10.2, *)
func CGAcquireDisplayFadeReservation(seconds: CGDisplayReservationInterval, _ token: UnsafeMutablePointer<CGDisplayFadeReservationToken>) -> CGError
@available(OSX 10.2, *)
func CGReleaseDisplayFadeReservation(token: CGDisplayFadeReservationToken) -> CGError
@available(OSX 10.2, *)
func CGDisplayFade(token: CGDisplayFadeReservationToken, _ duration: CGDisplayFadeInterval, _ startBlend: CGDisplayBlendFraction, _ endBlend: CGDisplayBlendFraction, _ redBlend: Float, _ greenBlend: Float, _ blueBlend: Float, _ synchronous: boolean_t) -> CGError

/*!
 @typedef CGDisplayStreamRef
 @abstract An opaque reference to a CGDisplayStream object
 @discussion A CGDisplayStream provides a streaming API for capturing display updates in a realtime manner.  It can also provide
 scaling and color space conversion services, as well as allow capturing sub regions of the display.   Callbacks can be targetted
 at either a traditional CFRunLoop, or at a dispatch queue.
*/
class CGDisplayStream {
}

/*!
 @typedef CGDisplayStreamRef
 @abstract An opaque reference to a CGDisplayStream object
 @discussion A CGDisplayStream provides a streaming API for capturing display updates in a realtime manner.  It can also provide
 scaling and color space conversion services, as well as allow capturing sub regions of the display.   Callbacks can be targetted
 at either a traditional CFRunLoop, or at a dispatch queue.
*/
typealias CGDisplayStreamRef = CGDisplayStream

/*!
 @typedef CGDisplayStreamUpdateRef
 @abstract An opaque reference to a single frame's extra metadata that describes useful frame delta information
 @discussion A CGDisplayStreamUpdate encapsulates information about what portions of a frame have changed relative to
 a previously delivered frame.   This includes regions that were changed in any way, which ones were actually redrawn, and which
 regions were merely copied from one place to another.   A routine is provided to merge two update refs together in cases
 where apps need to coalesce the values because they decided to skip processing for one or more frames.
*/
typealias CGDisplayStreamUpdateRef = CGDisplayStreamUpdate

/*!
 @typedef CGDisplayStreamUpdateRef
 @abstract An opaque reference to a single frame's extra metadata that describes useful frame delta information
 @discussion A CGDisplayStreamUpdate encapsulates information about what portions of a frame have changed relative to
 a previously delivered frame.   This includes regions that were changed in any way, which ones were actually redrawn, and which
 regions were merely copied from one place to another.   A routine is provided to merge two update refs together in cases
 where apps need to coalesce the values because they decided to skip processing for one or more frames.
*/
class CGDisplayStreamUpdate {
}

/*!
 @enum CGDisplayStreamUpdateRectType
 @abstract Used to select which array of rectangles to be returned by CGDisplayUpdateGetRects
 @const kCGDisplayStreamUpdateRefreshedRects The rectangles that were refreshed on the display, not counting moved rectangles
 @const kCGDisplayStreamUpdateMovedRects The rectangles that were simply moved from one part of the display to another
 @const kCGDisplayStreamUpdateDirtyRects The union of both refreshed and moved rects
 @const kCGDisplayStreamUpdateReducedDirtyRects A possibly simplified (but overstated) array of dirty rectangles
*/
enum CGDisplayStreamUpdateRectType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case RefreshedRects
  case MovedRects
  case DirtyRects
  case ReducedDirtyRects
}

/*!
 @enum CGDisplayStreamFrameStatus
 @abstract Provides information about incoming frame updates
 @const kCGDisplayStreamFrameStatusFrameComplete A new frame has been generated by the Window Server for a particular display at time displayTime
 @const kCGDisplayStreamFrameStatusFrameIdle The Window Server did not generate a new frame for displayTime
 @const kCGDisplayStreamFrameStatusFrameBlank As of displayTime, the display is has gone blank
 @const kCGDisplayStreamFrameStatusStopped The display stream has stopped and no more calls will be made to the handler until the stream is started.
*/
enum CGDisplayStreamFrameStatus : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case FrameComplete
  case FrameIdle
  case FrameBlank
  case Stopped
}

/*!
 @callback CGDisplayStreamFrameAvailableHandler
 @abstract The block prototype used for new frame delivery by CGDisplayStream objects
 @discussion For each frame that is generated by the WindowServer for a particular display, the user provided block is invoked and provides the user with an IOSurfaceRef
 that contains the pixel data for the new frame, as well as a CGDisplayStreamUpdateRef that contains all of the metadata associated with that IOSurface.
 @param frameSurface The IOSurfaceRef for the current frame.  May be NULL in some cases.   If you intend to hold on to the IOSurface beyond the lifetime of
 the handler call, you must CFRetain() the IOSurface until you are done with it *and* you must call IOSurfaceIncrementUseCount() to let the CGDisplayStream know
 that the frame is not ready for re-use.  Once you are finished using the IOSurfaceRef you must then call IOSurfaceDecrementUseCount().  If you are maintaing
 any kind of external cache of information about the IOSurface (such as a GL texture object), you must keep a CFRetain() on the IOSurface to prevent it from going
 away until you remove it from your cache.   You can not depend on the set of IOSurfaces being used by the display stream as being static, so you should implement
 some kind of age-out behavior for your cache for IOSurfaces that have not been re-used in a while.
 @param displayTime The mach_absolute_time() of when the corresponding frame was to be displayed by the WindowServer
 @param updateRef The CGDisplayStreamUpdateRef for the current frame.   Note: If you want to keep the CGDisplayStreamUpdateRef around beyond the lifetime
 of the handler, you must CFRetain() it, as it will be CFRelease()'d by the CGDisplayStream after the handler returns.   The updateRef will be NULL in cases
 when status is not kCGDisplayStreamFrameStatusFrameComplete.
 */
typealias CGDisplayStreamFrameAvailableHandler = (CGDisplayStreamFrameStatus, UInt64, IOSurface?, CGDisplayStreamUpdate?) -> Void

/*!
 @function CGDisplayStreamUpdateGetTypeID
 @abstract Returns the CF "class" ID for CGDisplayStreamUpdate
 @result The CFTypeID of the CGDisplayStreamUpdate class.
*/
@available(OSX 10.8, *)
func CGDisplayStreamUpdateGetTypeID() -> CFTypeID

/*!
 @function CGDisplayStreamUpdateGetRects
 @abstract Returns a pointer to an array of CGRect structs that describe what parts of the frame have changed relative
 to the previously delivered frame.   This rectangle list encapsulates both the update rectangles and movement rectangles.
 @param updateRef The CGDisplayStreamUpdateRef
 @param count A pointer to where the count of the number of rectangles in the array is to be returned. Must not be NULL.
 @result A pointer to the array of CGRectangles.  This array should not be freed by the caller.
*/
@available(OSX 10.8, *)
func CGDisplayStreamUpdateGetRects(updateRef: CGDisplayStreamUpdate?, _ rectType: CGDisplayStreamUpdateRectType, _ rectCount: UnsafeMutablePointer<Int>) -> UnsafePointer<CGRect>

/*!
 @function CGDisplayStreamUpdateCreateMerged
 @abstract Merge two CGDisplayUpdateRefs into a new one.
 @discussion In cases where the client wishes to drop certain frame updates, this function may be used to merge two
 CGDisplayUpdateRefs together.  The core bit of functionailty here is generating a new set of refresh/move/dirty
 rectangle arrays that properly represent the union of the deltas between the two frames.  Note that the ordering of
 the two refs is important.
  
 @param firstUpdate The first update (in a temporal sense)
 @param secondUpdate The second update (in a temporal sense)
 @result The new CGDisplayStreamUpdateRef 
*/
@available(OSX 10.8, *)
func CGDisplayStreamUpdateCreateMergedUpdate(firstUpdate: CGDisplayStreamUpdate?, _ secondUpdate: CGDisplayStreamUpdate?) -> CGDisplayStreamUpdate?

/*!
 @function CGDisplayStreamUpdateGetMovedRectsDelta
 @abstract Return the movement dx and dy values for a single update
 @param updateRef The CGDisplayStreamUpdateRef
 @param dx A pointer to a CGFloat to store the x component of the movement delta
 @param dy A pointer to a CGFloat to store the y component of the movement delta
 @discussion The delta values describe the offset from the moved rectangles back to the source location.
*/
@available(OSX 10.8, *)
func CGDisplayStreamUpdateGetMovedRectsDelta(updateRef: CGDisplayStreamUpdate?, _ dx: UnsafeMutablePointer<CGFloat>, _ dy: UnsafeMutablePointer<CGFloat>)

/*!
 @function CGDisplayStreamGetDropCount
 @abstract Return how many frames (if any) have been dropped since the last call to the handler.
 @param updateRef The CGDisplayStreamUpdateRef
 @result The number of dropped frames
 @discussion This call is primarily useful for performance measurement to determine if the client is keeping up with
 all WindowServer updates.
*/
@available(OSX 10.8, *)
func CGDisplayStreamUpdateGetDropCount(updateRef: CGDisplayStreamUpdate?) -> Int

/*!
 @const kCGDisplayStreamSourceRect
 @discussion This may be used to request a subregion of the display to be provided as the source of the display stream.  Use
 CGRectCreateDictionaryRepresentation to convert from a CGRect to the value used here.   Note: The coordinate system for the
 source rectangle is specified in display logical coordinates and not in pixels, in order to match the normal convention on
 HiDPI displays.
*/
@available(OSX 10.8, *)
let kCGDisplayStreamSourceRect: CFString

/*!
 @const kCGDisplayStreamDestinationRect
 @discussion This may be used to request where within the destination buffer the display updates should be placed. Use
 CGRectCreateDictionaryRepresentation to convert from a CGRect to the value used here.   Note: The coordinate system for
 the destination rectangle is always specified in output pixels to match the fact that the output buffer size is also
 specified in terms of pixels.
 */
@available(OSX 10.8, *)
let kCGDisplayStreamDestinationRect: CFString

/*!
 @const kCGDisplayStreamPreserveAspectRatio
 @discussion Enable/disable the work the Window Server will do to preserve the display aspect ratio.  By default the Window Server will
 assume that it should preserve the original aspect ratio of the source display rect.  If the aspect ratio of the source display and
 the display stream destination rect are not the same, black borders will be inserted at the top/bottom or right/left sides of the destination
 in order to preserve the source aspect ratio.
 */
@available(OSX 10.8, *)
let kCGDisplayStreamPreserveAspectRatio: CFString

/*!
 @const kCGDisplayStreamColorSpace
 @discussion Set the desired CGColorSpace of the output frames.  By default the color space will be that of the display.
*/
@available(OSX 10.8, *)
let kCGDisplayStreamColorSpace: CFString

/*!
 @const kCGDisplayStreamMinimumFrameTime
 @discussion Request that the delta between frame updates be at least as much specified by this value.
*/
@available(OSX 10.8, *)
let kCGDisplayStreamMinimumFrameTime: CFString

/*!
 @const kCGDisplayStreamShowCursor
 @discussion Controls whether the cursor is embedded within the provided buffers or not.
*/
@available(OSX 10.8, *)
let kCGDisplayStreamShowCursor: CFString

/*!
 @const kCGDisplayStreamQueueDepth
 @discussion Controls how many frames deep the frame queue will be.  Defaults to N.
 */
@available(OSX 10.8, *)
let kCGDisplayStreamQueueDepth: CFString

/*!
 @const kCGDisplayStreamYCbCrMatrix
 @discussion When outputting frames in 420v or 420f format, this key may be used to control which YCbCr matrix is used
 The value should be one of the three kCGDisplayStreamYCbCrMatrix values specified below.
*/
@available(OSX 10.8, *)
let kCGDisplayStreamYCbCrMatrix: CFString
@available(OSX 10.8, *)
let kCGDisplayStreamYCbCrMatrix_ITU_R_709_2: CFString
@available(OSX 10.8, *)
let kCGDisplayStreamYCbCrMatrix_ITU_R_601_4: CFString
@available(OSX 10.8, *)
let kCGDisplayStreamYCbCrMatrix_SMPTE_240M_1995: CFString

/*!
 @function CGDisplayStreamGetTypeID
 @abstract Returns the CF "class" ID for CGDisplayStream
 @result The CFTypeID of the CGDisplayStream class.
*/
@available(OSX 10.8, *)
func CGDisplayStreamGetTypeID() -> CFTypeID

/*!
 @function CGDisplayStreamCreate
 @abstract Creates a new CGDisplayStream intended to be used with a CFRunLoop
 @discussion This function creates a new CGDisplayStream that is to be used to get a stream of frame updates
 from a particular display.
 @param display The CGDirectDisplayID to use as the source for generated frames
 @param outputWidth The output width (in pixels, not points) of the frames to be generated.  Must not be zero.
 @param outputWidth The output height (in pixels, not points) of the frames to be generated.  Must not be zero.
 @param pixelFormat The desired CoreVideo/CoreMedia-style pixel format of the output IOSurfaces.  The currently
 supported values are:
 
 'BGRA' Packed Little Endian ARGB8888
 'l10r' Packed Little Endian ARGB2101010
 '420v' 2-plane "video" range YCbCr 4:2:0
 '420f' 2-plane "full" range YCbCr 4:2:0
 
 @param properties Any optional properties of the CGDisplayStream
 @param handler A block that will be called for frame deliver.
 @result The new CGDisplayStream object. 
*/
@available(OSX 10.8, *)
func CGDisplayStreamCreate(display: CGDirectDisplayID, _ outputWidth: Int, _ outputHeight: Int, _ pixelFormat: Int32, _ properties: CFDictionary?, _ handler: CGDisplayStreamFrameAvailableHandler?) -> CGDisplayStream?

/*!
 @function CGDisplayStreamCreateWithDispatchQueue
 @abstract Creates a new CGDisplayStream intended to be serviced by a block handler
 @discussion This function creates a new CGDisplayStream that is to be used to get a stream of frame updates
 from a particular display.
 @param display The CGDirectDisplayID to use as the source for generated frames
 @param outputWidth The output width (in pixels, not points) of the frames to be generated.  Must not be zero.
 @param outputWidth The output height (in pixels, not points) of the frames to be generated.  Must not be zero.
 @param pixelFormat The desired CoreVideo/CoreMedia-style pixel format of the output IOSurfaces
 @param properties Any optional properties of the CGDisplayStream
 @param queue The dispatch_queue_t that will be used to invoke the callback handler.
 @param handler A block that will be called for frame deliver.
 @result The new CGDisplayStream object.
*/
@available(OSX 10.8, *)
func CGDisplayStreamCreateWithDispatchQueue(display: CGDirectDisplayID, _ outputWidth: Int, _ outputHeight: Int, _ pixelFormat: Int32, _ properties: CFDictionary?, _ queue: dispatch_queue_t, _ handler: CGDisplayStreamFrameAvailableHandler?) -> CGDisplayStream?

/*!
 @function CGDisplayStreamStart
 @abstract Begin delivering frame updates to the handler block.
 @param The CGDisplayStream to be started
 @result kCGErrorSuccess If the display stream was started, otherwise an error.
*/
@available(OSX 10.8, *)
func CGDisplayStreamStart(displayStream: CGDisplayStream?) -> CGError

/*!
 @function CGDisplayStreamStop
 @abstract End delivery of frame updates to the handler block.
 @param The CGDisplayStream to be stopped
 @result kCGErrorSuccess If the display stream was stopped, otherwise an error.
 @discussion After this call returns, the CGDisplayStream callback function will eventually be called with a
 status of kCGDisplayStreamFrameStatusStopped.  After that point it is safe to release the CGDisplayStream.
 It is safe to call this function from within the handler block, but the previous caveat still applies.
*/
@available(OSX 10.8, *)
func CGDisplayStreamStop(displayStream: CGDisplayStream?) -> CGError

/*!
 @function CGDisplayStreamGetRunLoopSource
 @abstract Return the singleton CFRunLoopSourceRef for a CGDisplayStream.
 @param displayStream The CGDisplayStream object
 @result The CFRunLoopSource for this displayStream.  Note: This function will return NULL if the
 display stream was created via  CGDisplayStreamCreateWithDispatchQueue().
*/
@available(OSX 10.8, *)
func CGDisplayStreamGetRunLoopSource(displayStream: CGDisplayStream?) -> CFRunLoopSource?
enum CGError : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Success
  case Failure
  case IllegalArgument
  case InvalidConnection
  case InvalidContext
  case CannotComplete
  case NotImplemented
  case RangeCheck
  case TypeCheck
  case InvalidOperation
  case NoneAvailable
}
@available(OSX 10.4, *)
func CGEventGetTypeID() -> CFTypeID
@available(OSX 10.4, *)
func CGEventCreate(source: CGEventSource?) -> CGEvent?
@available(OSX 10.4, *)
func CGEventCreateData(allocator: CFAllocator?, _ event: CGEvent?) -> CFData?
@available(OSX 10.4, *)
func CGEventCreateFromData(allocator: CFAllocator?, _ data: CFData?) -> CGEvent?
@available(OSX 10.4, *)
func CGEventCreateMouseEvent(source: CGEventSource?, _ mouseType: CGEventType, _ mouseCursorPosition: CGPoint, _ mouseButton: CGMouseButton) -> CGEvent?
@available(OSX 10.4, *)
func CGEventCreateKeyboardEvent(source: CGEventSource?, _ virtualKey: CGKeyCode, _ keyDown: Bool) -> CGEvent?
@available(OSX 10.4, *)
func CGEventCreateCopy(event: CGEvent?) -> CGEvent?
@available(OSX 10.4, *)
func CGEventCreateSourceFromEvent(event: CGEvent?) -> CGEventSource?
@available(OSX 10.4, *)
func CGEventSetSource(event: CGEvent?, _ source: CGEventSource?)
@available(OSX 10.4, *)
func CGEventGetType(event: CGEvent?) -> CGEventType
@available(OSX 10.4, *)
func CGEventSetType(event: CGEvent?, _ type: CGEventType)
@available(OSX 10.4, *)
func CGEventGetTimestamp(event: CGEvent?) -> CGEventTimestamp
@available(OSX 10.4, *)
func CGEventSetTimestamp(event: CGEvent?, _ timestamp: CGEventTimestamp)
@available(OSX 10.4, *)
func CGEventGetLocation(event: CGEvent?) -> CGPoint
@available(OSX 10.5, *)
func CGEventGetUnflippedLocation(event: CGEvent?) -> CGPoint
@available(OSX 10.4, *)
func CGEventSetLocation(event: CGEvent?, _ location: CGPoint)
@available(OSX 10.4, *)
func CGEventGetFlags(event: CGEvent?) -> CGEventFlags
@available(OSX 10.4, *)
func CGEventSetFlags(event: CGEvent?, _ flags: CGEventFlags)
@available(OSX 10.4, *)
func CGEventKeyboardGetUnicodeString(event: CGEvent?, _ maxStringLength: Int, _ actualStringLength: UnsafeMutablePointer<Int>, _ unicodeString: UnsafeMutablePointer<UniChar>)
@available(OSX 10.4, *)
func CGEventKeyboardSetUnicodeString(event: CGEvent?, _ stringLength: Int, _ unicodeString: UnsafePointer<UniChar>)
@available(OSX 10.4, *)
func CGEventGetIntegerValueField(event: CGEvent?, _ field: CGEventField) -> Int64
@available(OSX 10.4, *)
func CGEventSetIntegerValueField(event: CGEvent?, _ field: CGEventField, _ value: Int64)
@available(OSX 10.4, *)
func CGEventGetDoubleValueField(event: CGEvent?, _ field: CGEventField) -> Double
@available(OSX 10.4, *)
func CGEventSetDoubleValueField(event: CGEvent?, _ field: CGEventField, _ value: Double)
@available(OSX 10.4, *)
func CGEventTapCreate(tap: CGEventTapLocation, _ place: CGEventTapPlacement, _ options: CGEventTapOptions, _ eventsOfInterest: CGEventMask, _ callback: CGEventTapCallBack?, _ userInfo: UnsafeMutablePointer<Void>) -> CFMachPort?
@available(OSX 10.4, *)
func CGEventTapCreateForPSN(processSerialNumber: UnsafeMutablePointer<Void>, _ place: CGEventTapPlacement, _ options: CGEventTapOptions, _ eventsOfInterest: CGEventMask, _ callback: CGEventTapCallBack?, _ userInfo: UnsafeMutablePointer<Void>) -> CFMachPort?
@available(OSX 10.4, *)
func CGEventTapCreateForPid(pid: pid_t, _ place: CGEventTapPlacement, _ options: CGEventTapOptions, _ eventsOfInterest: CGEventMask, _ callback: CGEventTapCallBack, _ userInfo: UnsafeMutablePointer<Void>) -> CFMachPort?
@available(OSX 10.4, *)
func CGEventTapEnable(tap: CFMachPort, _ enable: Bool)
@available(OSX 10.4, *)
func CGEventTapIsEnabled(tap: CFMachPort) -> Bool
@available(OSX 10.4, *)
func CGEventTapPostEvent(proxy: CGEventTapProxy, _ event: CGEvent?)
@available(OSX 10.4, *)
func CGEventPost(tap: CGEventTapLocation, _ event: CGEvent?)
@available(OSX 10.4, *)
func CGEventPostToPSN(processSerialNumber: UnsafeMutablePointer<Void>, _ event: CGEvent?)
@available(OSX 10.11, *)
func CGEventPostToPid(pid: pid_t, _ event: CGEvent?)
@available(OSX 10.4, *)
func CGGetEventTapList(maxNumberOfTaps: UInt32, _ tapList: UnsafeMutablePointer<CGEventTapInformation>, _ eventTapCount: UnsafeMutablePointer<UInt32>) -> CGError
@available(OSX 10.4, *)
func CGEventSourceGetTypeID() -> CFTypeID
@available(OSX 10.4, *)
func CGEventSourceCreate(stateID: CGEventSourceStateID) -> CGEventSource?
@available(OSX 10.4, *)
func CGEventSourceGetKeyboardType(source: CGEventSource?) -> CGEventSourceKeyboardType
@available(OSX 10.4, *)
func CGEventSourceSetKeyboardType(source: CGEventSource?, _ keyboardType: CGEventSourceKeyboardType)
@available(OSX 10.5, *)
func CGEventSourceGetPixelsPerLine(source: CGEventSource?) -> Double
@available(OSX 10.5, *)
func CGEventSourceSetPixelsPerLine(source: CGEventSource?, _ pixelsPerLine: Double)
@available(OSX 10.4, *)
func CGEventSourceGetSourceStateID(source: CGEventSource?) -> CGEventSourceStateID
@available(OSX 10.4, *)
func CGEventSourceButtonState(stateID: CGEventSourceStateID, _ button: CGMouseButton) -> Bool
@available(OSX 10.4, *)
func CGEventSourceKeyState(stateID: CGEventSourceStateID, _ key: CGKeyCode) -> Bool
@available(OSX 10.4, *)
func CGEventSourceFlagsState(stateID: CGEventSourceStateID) -> CGEventFlags
@available(OSX 10.4, *)
func CGEventSourceSecondsSinceLastEventType(stateID: CGEventSourceStateID, _ eventType: CGEventType) -> CFTimeInterval
@available(OSX 10.4, *)
func CGEventSourceCounterForEventType(stateID: CGEventSourceStateID, _ eventType: CGEventType) -> UInt32
@available(OSX 10.4, *)
func CGEventSourceSetUserData(source: CGEventSource?, _ userData: Int64)
@available(OSX 10.4, *)
func CGEventSourceGetUserData(source: CGEventSource?) -> Int64
@available(OSX 10.4, *)
func CGEventSourceSetLocalEventsFilterDuringSuppressionState(source: CGEventSource?, _ filter: CGEventFilterMask, _ state: CGEventSuppressionState)
@available(OSX 10.4, *)
func CGEventSourceGetLocalEventsFilterDuringSuppressionState(source: CGEventSource?, _ state: CGEventSuppressionState) -> CGEventFilterMask
@available(OSX 10.4, *)
func CGEventSourceSetLocalEventsSuppressionInterval(source: CGEventSource?, _ seconds: CFTimeInterval)
@available(OSX 10.4, *)
func CGEventSourceGetLocalEventsSuppressionInterval(source: CGEventSource?) -> CFTimeInterval
class CGEvent {
}
typealias CGEventRef = CGEvent
enum CGMouseButton : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Left
  case Right
  case Center
}
enum CGScrollEventUnit : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Pixel
  case Line
}
enum CGMomentumScrollPhase : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case None
  case Begin
  case Continue
  case End
}
enum CGScrollPhase : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Began
  case Changed
  case Ended
  case Cancelled
  case MayBegin
}
enum CGGesturePhase : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case None
  case Began
  case Changed
  case Ended
  case Cancelled
  case MayBegin
}
enum CGEventFlags : UInt64 {
  init?(rawValue: UInt64)
  var rawValue: UInt64 { get }
  case MaskAlphaShift
  case MaskShift
  case MaskControl
  case MaskAlternate
  case MaskCommand
  case MaskHelp
  case MaskSecondaryFn
  case MaskNumericPad
  case MaskNonCoalesced
}
enum CGEventType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Null
  case LeftMouseDown
  case LeftMouseUp
  case RightMouseDown
  case RightMouseUp
  case MouseMoved
  case LeftMouseDragged
  case RightMouseDragged
  case KeyDown
  case KeyUp
  case FlagsChanged
  case ScrollWheel
  case TabletPointer
  case TabletProximity
  case OtherMouseDown
  case OtherMouseUp
  case OtherMouseDragged
  case TapDisabledByTimeout
  case TapDisabledByUserInput
}
typealias CGEventTimestamp = UInt64
enum CGEventField : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case MouseEventNumber
  case MouseEventClickState
  case MouseEventPressure
  case MouseEventButtonNumber
  case MouseEventDeltaX
  case MouseEventDeltaY
  case MouseEventInstantMouser
  case MouseEventSubtype
  case KeyboardEventAutorepeat
  case KeyboardEventKeycode
  case KeyboardEventKeyboardType
  case ScrollWheelEventDeltaAxis1
  case ScrollWheelEventDeltaAxis2
  case ScrollWheelEventDeltaAxis3
  case ScrollWheelEventFixedPtDeltaAxis1
  case ScrollWheelEventFixedPtDeltaAxis2
  case ScrollWheelEventFixedPtDeltaAxis3
  case ScrollWheelEventPointDeltaAxis1
  case ScrollWheelEventPointDeltaAxis2
  case ScrollWheelEventPointDeltaAxis3
  case ScrollWheelEventScrollPhase
  case ScrollWheelEventScrollCount
  case ScrollWheelEventMomentumPhase
  case ScrollWheelEventInstantMouser
  case TabletEventPointX
  case TabletEventPointY
  case TabletEventPointZ
  case TabletEventPointButtons
  case TabletEventPointPressure
  case TabletEventTiltX
  case TabletEventTiltY
  case TabletEventRotation
  case TabletEventTangentialPressure
  case TabletEventDeviceID
  case TabletEventVendor1
  case TabletEventVendor2
  case TabletEventVendor3
  case TabletProximityEventVendorID
  case TabletProximityEventTabletID
  case TabletProximityEventPointerID
  case TabletProximityEventDeviceID
  case TabletProximityEventSystemTabletID
  case TabletProximityEventVendorPointerType
  case TabletProximityEventVendorPointerSerialNumber
  case TabletProximityEventVendorUniqueID
  case TabletProximityEventCapabilityMask
  case TabletProximityEventPointerType
  case TabletProximityEventEnterProximity
  case EventTargetProcessSerialNumber
  case EventTargetUnixProcessID
  case EventSourceUnixProcessID
  case EventSourceUserData
  case EventSourceUserID
  case EventSourceGroupID
  case EventSourceStateID
  case ScrollWheelEventIsContinuous
  case MouseEventWindowUnderMousePointer
  case MouseEventWindowUnderMousePointerThatCanHandleThisEvent
}
enum CGEventMouseSubtype : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Default
  case TabletPoint
  case TabletProximity
}
enum CGEventTapLocation : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case CGHIDEventTap
  case CGSessionEventTap
  case CGAnnotatedSessionEventTap
}
enum CGEventTapPlacement : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case HeadInsertEventTap
  case TailAppendEventTap
}
enum CGEventTapOptions : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Default
  case ListenOnly
}
typealias CGEventMask = UInt64
typealias CGEventTapProxy = COpaquePointer
typealias CGEventTapCallBack = @convention(c) (CGEventTapProxy, CGEventType, CGEvent, UnsafeMutablePointer<Void>) -> Unmanaged<CGEvent>?
var kCGNotifyEventTapAdded: String { get }
var kCGNotifyEventTapRemoved: String { get }
struct __CGEventTapInformation {
  var eventTapID: UInt32
  var tapPoint: CGEventTapLocation
  var options: CGEventTapOptions
  var eventsOfInterest: CGEventMask
  var tappingProcess: pid_t
  var processBeingTapped: pid_t
  var enabled: Bool
  var minUsecLatency: Float
  var avgUsecLatency: Float
  var maxUsecLatency: Float
  init()
  init(eventTapID: UInt32, tapPoint: CGEventTapLocation, options: CGEventTapOptions, eventsOfInterest: CGEventMask, tappingProcess: pid_t, processBeingTapped: pid_t, enabled: Bool, minUsecLatency: Float, avgUsecLatency: Float, maxUsecLatency: Float)
}
typealias CGEventTapInformation = __CGEventTapInformation
typealias CGEventSourceRef = CGEventSource
class CGEventSource {
}
enum CGEventSourceStateID : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Private
  case CombinedSessionState
  case HIDSystemState
}
typealias CGEventSourceKeyboardType = UInt32
class CGFont {
}
typealias CGFontRef = CGFont
typealias CGFontIndex = UInt16
typealias CGGlyph = CGFontIndex
enum CGFontPostScriptFormat : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Type1
  case Type3
  case Type42
}
let kCGFontIndexMax: CGFontIndex
let kCGFontIndexInvalid: CGFontIndex
let kCGGlyphMax: CGFontIndex
@available(OSX 10.2, *)
func CGFontGetTypeID() -> CFTypeID
@available(OSX 10.5, *)
func CGFontCreateWithDataProvider(provider: CGDataProvider?) -> CGFont?
@available(OSX 10.5, *)
func CGFontCreateWithFontName(name: CFString?) -> CGFont?
@available(OSX 10.4, *)
func CGFontCreateCopyWithVariations(font: CGFont?, _ variations: CFDictionary?) -> CGFont?
@available(OSX 10.0, *)
func CGFontGetNumberOfGlyphs(font: CGFont?) -> Int
@available(OSX 10.0, *)
func CGFontGetUnitsPerEm(font: CGFont?) -> Int32
@available(OSX 10.4, *)
func CGFontCopyPostScriptName(font: CGFont?) -> CFString?
@available(OSX 10.5, *)
func CGFontCopyFullName(font: CGFont?) -> CFString?
@available(OSX 10.5, *)
func CGFontGetAscent(font: CGFont?) -> Int32
@available(OSX 10.5, *)
func CGFontGetDescent(font: CGFont?) -> Int32
@available(OSX 10.5, *)
func CGFontGetLeading(font: CGFont?) -> Int32
@available(OSX 10.5, *)
func CGFontGetCapHeight(font: CGFont?) -> Int32
@available(OSX 10.5, *)
func CGFontGetXHeight(font: CGFont?) -> Int32
@available(OSX 10.5, *)
func CGFontGetFontBBox(font: CGFont?) -> CGRect
@available(OSX 10.5, *)
func CGFontGetItalicAngle(font: CGFont?) -> CGFloat
@available(OSX 10.5, *)
func CGFontGetStemV(font: CGFont?) -> CGFloat
@available(OSX 10.4, *)
func CGFontCopyVariationAxes(font: CGFont?) -> CFArray?
@available(OSX 10.4, *)
func CGFontCopyVariations(font: CGFont?) -> CFDictionary?
@available(OSX 10.0, *)
func CGFontGetGlyphAdvances(font: CGFont?, _ glyphs: UnsafePointer<CGGlyph>, _ count: Int, _ advances: UnsafeMutablePointer<Int32>) -> Bool
@available(OSX 10.5, *)
func CGFontGetGlyphBBoxes(font: CGFont?, _ glyphs: UnsafePointer<CGGlyph>, _ count: Int, _ bboxes: UnsafeMutablePointer<CGRect>) -> Bool
@available(OSX 10.5, *)
func CGFontGetGlyphWithGlyphName(font: CGFont?, _ name: CFString?) -> CGGlyph
@available(OSX 10.5, *)
func CGFontCopyGlyphNameForGlyph(font: CGFont?, _ glyph: CGGlyph) -> CFString?
@available(OSX 10.4, *)
func CGFontCanCreatePostScriptSubset(font: CGFont?, _ format: CGFontPostScriptFormat) -> Bool
@available(OSX 10.4, *)
func CGFontCreatePostScriptSubset(font: CGFont?, _ subsetName: CFString?, _ format: CGFontPostScriptFormat, _ glyphs: UnsafePointer<CGGlyph>, _ count: Int, _ encoding: UnsafePointer<CGGlyph>) -> CFData?
@available(OSX 10.4, *)
func CGFontCreatePostScriptEncoding(font: CGFont?, _ encoding: UnsafePointer<CGGlyph>) -> CFData?
@available(OSX 10.5, *)
func CGFontCopyTableTags(font: CGFont?) -> CFArray?
@available(OSX 10.5, *)
func CGFontCopyTableForTag(font: CGFont?, _ tag: UInt32) -> CFData?

/*** Keys for the font variation axis dictionary. ***/
@available(OSX 10.4, *)
let kCGFontVariationAxisName: CFString
@available(OSX 10.4, *)
let kCGFontVariationAxisMinValue: CFString
@available(OSX 10.4, *)
let kCGFontVariationAxisMaxValue: CFString
@available(OSX 10.4, *)
let kCGFontVariationAxisDefaultValue: CFString
enum CGGlypDeprecatedEnum : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  @available(*, deprecated)
  case GlyphMin
  @available(*, deprecated)
  case GlyphMax
}
class CGFunction {
}
typealias CGFunctionRef = CGFunction
typealias CGFunctionEvaluateCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<CGFloat>, UnsafeMutablePointer<CGFloat>) -> Void
typealias CGFunctionReleaseInfoCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
struct CGFunctionCallbacks {
  var version: UInt32
  var evaluate: CGFunctionEvaluateCallback?
  var releaseInfo: CGFunctionReleaseInfoCallback?
  init()
  init(version: UInt32, evaluate: CGFunctionEvaluateCallback?, releaseInfo: CGFunctionReleaseInfoCallback?)
}
@available(OSX 10.2, *)
func CGFunctionGetTypeID() -> CFTypeID
@available(OSX 10.2, *)
func CGFunctionCreate(info: UnsafeMutablePointer<Void>, _ domainDimension: Int, _ domain: UnsafePointer<CGFloat>, _ rangeDimension: Int, _ range: UnsafePointer<CGFloat>, _ callbacks: UnsafePointer<CGFunctionCallbacks>) -> CGFunction?
struct CGPoint {
  var x: CGFloat
  var y: CGFloat
  init()
  init(x: CGFloat, y: CGFloat)
}

extension CGPoint {
  static var zero: CGPoint { get }
  @_transparent init(x: Int, y: Int)
  @_transparent init(x: Double, y: Double)
}

extension CGPoint : Equatable {
}

extension CGPoint : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
struct CGSize {
  var width: CGFloat
  var height: CGFloat
  init()
  init(width: CGFloat, height: CGFloat)
}

extension CGSize {
  static var zero: CGSize { get }
  @_transparent init(width: Int, height: Int)
  @_transparent init(width: Double, height: Double)
}

extension CGSize : Equatable {
}

extension CGSize : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
struct CGVector {
  var dx: CGFloat
  var dy: CGFloat
  init()
  init(dx: CGFloat, dy: CGFloat)
}

extension CGVector {
  static var zero: CGVector { get }
  @_transparent init(dx: Int, dy: Int)
  @_transparent init(dx: Double, dy: Double)
}

extension CGVector : Equatable {
}
struct CGRect {
  var origin: CGPoint
  var size: CGSize
  init()
  init(origin: CGPoint, size: CGSize)
}

extension CGRect {
  static var zero: CGRect { get }
  static var null: CGRect { get }
  static var infinite: CGRect { get }
  @_transparent init(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat)
  @_transparent init(x: Double, y: Double, width: Double, height: Double)
  @_transparent init(x: Int, y: Int, width: Int, height: Int)
  var width: CGFloat { get }
  var height: CGFloat { get }
  var minX: CGFloat { get }
  var midX: CGFloat { get }
  var maxX: CGFloat { get }
  var minY: CGFloat { get }
  var midY: CGFloat { get }
  var maxY: CGFloat { get }
  var isNull: Bool { get }
  var isEmpty: Bool { get }
  var isInfinite: Bool { get }
  var standardized: CGRect { get }
  var integral: CGRect { get }
  @_transparent mutating func standardizeInPlace()
  @_transparent mutating func makeIntegralInPlace()
  @warn_unused_result(mutable_variant="insetInPlace")
  @_transparent func insetBy(dx dx: CGFloat, dy: CGFloat) -> CGRect
  @_transparent mutating func insetInPlace(dx dx: CGFloat, dy: CGFloat)
  @warn_unused_result(mutable_variant="offsetInPlace")
  @_transparent func offsetBy(dx dx: CGFloat, dy: CGFloat) -> CGRect
  @_transparent mutating func offsetInPlace(dx dx: CGFloat, dy: CGFloat)
  @warn_unused_result(mutable_variant="unionInPlace")
  @_transparent func union(rect: CGRect) -> CGRect
  @_transparent mutating func unionInPlace(rect: CGRect)
  @warn_unused_result(mutable_variant="intersectInPlace")
  @_transparent func intersect(rect: CGRect) -> CGRect
  @_transparent mutating func intersectInPlace(rect: CGRect)
  @warn_unused_result
  @_transparent func divide(atDistance: CGFloat, fromEdge: CGRectEdge) -> (slice: CGRect, remainder: CGRect)
  @warn_unused_result
  @_transparent func contains(rect: CGRect) -> Bool
  @warn_unused_result
  @_transparent func contains(point: CGPoint) -> Bool
  @warn_unused_result
  @_transparent func intersects(rect: CGRect) -> Bool
}

extension CGRect : Equatable {
}

extension CGRect : _Reflectable {
  /// Returns a mirror that reflects `self`.
  func _getMirror() -> _MirrorType
}
enum CGRectEdge : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case MinXEdge
  case MinYEdge
  case MaxXEdge
  case MaxYEdge
}
@available(OSX 10.0, *)
let CGPointZero: CGPoint
@available(OSX 10.0, *)
let CGSizeZero: CGSize
@available(OSX 10.0, *)
let CGRectZero: CGRect
@available(OSX 10.0, *)
let CGRectNull: CGRect
@available(OSX 10.4, *)
let CGRectInfinite: CGRect
@available(OSX 10.0, *)
func CGRectGetMinX(rect: CGRect) -> CGFloat
@available(OSX 10.0, *)
func CGRectGetMidX(rect: CGRect) -> CGFloat
@available(OSX 10.0, *)
func CGRectGetMaxX(rect: CGRect) -> CGFloat
@available(OSX 10.0, *)
func CGRectGetMinY(rect: CGRect) -> CGFloat
@available(OSX 10.0, *)
func CGRectGetMidY(rect: CGRect) -> CGFloat
@available(OSX 10.0, *)
func CGRectGetMaxY(rect: CGRect) -> CGFloat
@available(OSX 10.0, *)
func CGRectGetWidth(rect: CGRect) -> CGFloat
@available(OSX 10.0, *)
func CGRectGetHeight(rect: CGRect) -> CGFloat
@available(OSX 10.0, *)
func CGPointEqualToPoint(point1: CGPoint, _ point2: CGPoint) -> Bool
@available(OSX 10.0, *)
func CGSizeEqualToSize(size1: CGSize, _ size2: CGSize) -> Bool
@available(OSX 10.0, *)
func CGRectEqualToRect(rect1: CGRect, _ rect2: CGRect) -> Bool
@available(OSX 10.0, *)
func CGRectStandardize(rect: CGRect) -> CGRect
@available(OSX 10.0, *)
func CGRectIsEmpty(rect: CGRect) -> Bool
@available(OSX 10.0, *)
func CGRectIsNull(rect: CGRect) -> Bool
@available(OSX 10.4, *)
func CGRectIsInfinite(rect: CGRect) -> Bool
@available(OSX 10.0, *)
func CGRectInset(rect: CGRect, _ dx: CGFloat, _ dy: CGFloat) -> CGRect
@available(OSX 10.0, *)
func CGRectIntegral(rect: CGRect) -> CGRect
@available(OSX 10.0, *)
func CGRectUnion(r1: CGRect, _ r2: CGRect) -> CGRect
@available(OSX 10.0, *)
func CGRectIntersection(r1: CGRect, _ r2: CGRect) -> CGRect
@available(OSX 10.0, *)
func CGRectOffset(rect: CGRect, _ dx: CGFloat, _ dy: CGFloat) -> CGRect
@available(OSX 10.0, *)
func CGRectDivide(rect: CGRect, _ slice: UnsafeMutablePointer<CGRect>, _ remainder: UnsafeMutablePointer<CGRect>, _ amount: CGFloat, _ edge: CGRectEdge)
@available(OSX 10.0, *)
func CGRectContainsPoint(rect: CGRect, _ point: CGPoint) -> Bool
@available(OSX 10.0, *)
func CGRectContainsRect(rect1: CGRect, _ rect2: CGRect) -> Bool
@available(OSX 10.0, *)
func CGRectIntersectsRect(rect1: CGRect, _ rect2: CGRect) -> Bool

/*** Persistent representations. ***/
@available(OSX 10.5, *)
func CGPointCreateDictionaryRepresentation(point: CGPoint) -> CFDictionary
@available(OSX 10.5, *)
func CGPointMakeWithDictionaryRepresentation(dict: CFDictionary?, _ point: UnsafeMutablePointer<CGPoint>) -> Bool
@available(OSX 10.5, *)
func CGSizeCreateDictionaryRepresentation(size: CGSize) -> CFDictionary
@available(OSX 10.5, *)
func CGSizeMakeWithDictionaryRepresentation(dict: CFDictionary?, _ size: UnsafeMutablePointer<CGSize>) -> Bool
@available(OSX 10.5, *)
func CGRectCreateDictionaryRepresentation(_: CGRect) -> CFDictionary
@available(OSX 10.5, *)
func CGRectMakeWithDictionaryRepresentation(dict: CFDictionary?, _ rect: UnsafeMutablePointer<CGRect>) -> Bool

/*** Definitions of inline functions. ***/
func CGPointMake(x: CGFloat, _ y: CGFloat) -> CGPoint
func CGSizeMake(width: CGFloat, _ height: CGFloat) -> CGSize
func CGVectorMake(dx: CGFloat, _ dy: CGFloat) -> CGVector
func CGRectMake(x: CGFloat, _ y: CGFloat, _ width: CGFloat, _ height: CGFloat) -> CGRect
func __CGPointEqualToPoint(point1: CGPoint, _ point2: CGPoint) -> Bool
func __CGSizeEqualToSize(size1: CGSize, _ size2: CGSize) -> Bool
class CGGradient {
}
typealias CGGradientRef = CGGradient
struct CGGradientDrawingOptions : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var DrawsBeforeStartLocation: CGGradientDrawingOptions { get }
  static var DrawsAfterEndLocation: CGGradientDrawingOptions { get }
}
@available(OSX 10.5, *)
func CGGradientGetTypeID() -> CFTypeID
@available(OSX 10.5, *)
func CGGradientCreateWithColorComponents(space: CGColorSpace?, _ components: UnsafePointer<CGFloat>, _ locations: UnsafePointer<CGFloat>, _ count: Int) -> CGGradient?
@available(OSX 10.5, *)
func CGGradientCreateWithColors(space: CGColorSpace?, _ colors: CFArray?, _ locations: UnsafePointer<CGFloat>) -> CGGradient?
class CGImage {
}
typealias CGImageRef = CGImage
enum CGImageAlphaInfo : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case None
  case PremultipliedLast
  case PremultipliedFirst
  case Last
  case First
  case NoneSkipLast
  case NoneSkipFirst
  case Only
}
@available(OSX 10.4, *)
struct CGBitmapInfo : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var AlphaInfoMask: CGBitmapInfo { get }
  static var FloatComponents: CGBitmapInfo { get }
  static var ByteOrderMask: CGBitmapInfo { get }
  static var ByteOrderDefault: CGBitmapInfo { get }
  static var ByteOrder16Little: CGBitmapInfo { get }
  static var ByteOrder32Little: CGBitmapInfo { get }
  static var ByteOrder16Big: CGBitmapInfo { get }
  static var ByteOrder32Big: CGBitmapInfo { get }
}
@available(OSX 10.2, *)
func CGImageGetTypeID() -> CFTypeID
@available(OSX 10.0, *)
func CGImageCreate(width: Int, _ height: Int, _ bitsPerComponent: Int, _ bitsPerPixel: Int, _ bytesPerRow: Int, _ space: CGColorSpace?, _ bitmapInfo: CGBitmapInfo, _ provider: CGDataProvider?, _ decode: UnsafePointer<CGFloat>, _ shouldInterpolate: Bool, _ intent: CGColorRenderingIntent) -> CGImage?
@available(OSX 10.0, *)
func CGImageMaskCreate(width: Int, _ height: Int, _ bitsPerComponent: Int, _ bitsPerPixel: Int, _ bytesPerRow: Int, _ provider: CGDataProvider?, _ decode: UnsafePointer<CGFloat>, _ shouldInterpolate: Bool) -> CGImage?
@available(OSX 10.4, *)
func CGImageCreateCopy(image: CGImage?) -> CGImage?
@available(OSX 10.1, *)
func CGImageCreateWithJPEGDataProvider(source: CGDataProvider?, _ decode: UnsafePointer<CGFloat>, _ shouldInterpolate: Bool, _ intent: CGColorRenderingIntent) -> CGImage?
@available(OSX 10.2, *)
func CGImageCreateWithPNGDataProvider(source: CGDataProvider?, _ decode: UnsafePointer<CGFloat>, _ shouldInterpolate: Bool, _ intent: CGColorRenderingIntent) -> CGImage?
@available(OSX 10.4, *)
func CGImageCreateWithImageInRect(image: CGImage?, _ rect: CGRect) -> CGImage?
@available(OSX 10.4, *)
func CGImageCreateWithMask(image: CGImage?, _ mask: CGImage?) -> CGImage?
@available(OSX 10.4, *)
func CGImageCreateWithMaskingColors(image: CGImage?, _ components: UnsafePointer<CGFloat>) -> CGImage?
@available(OSX 10.3, *)
func CGImageCreateCopyWithColorSpace(image: CGImage?, _ space: CGColorSpace?) -> CGImage?
@available(OSX 10.0, *)
func CGImageIsMask(image: CGImage?) -> Bool
@available(OSX 10.0, *)
func CGImageGetWidth(image: CGImage?) -> Int
@available(OSX 10.0, *)
func CGImageGetHeight(image: CGImage?) -> Int
@available(OSX 10.0, *)
func CGImageGetBitsPerComponent(image: CGImage?) -> Int
@available(OSX 10.0, *)
func CGImageGetBitsPerPixel(image: CGImage?) -> Int
@available(OSX 10.0, *)
func CGImageGetBytesPerRow(image: CGImage?) -> Int
@available(OSX 10.0, *)
func CGImageGetColorSpace(image: CGImage?) -> CGColorSpace?
@available(OSX 10.0, *)
func CGImageGetAlphaInfo(image: CGImage?) -> CGImageAlphaInfo
@available(OSX 10.0, *)
func CGImageGetDataProvider(image: CGImage?) -> CGDataProvider?
@available(OSX 10.0, *)
func CGImageGetDecode(image: CGImage?) -> UnsafePointer<CGFloat>
@available(OSX 10.0, *)
func CGImageGetShouldInterpolate(image: CGImage?) -> Bool
@available(OSX 10.0, *)
func CGImageGetRenderingIntent(image: CGImage?) -> CGColorRenderingIntent
@available(OSX 10.4, *)
func CGImageGetBitmapInfo(image: CGImage?) -> CGBitmapInfo
@available(OSX 10.11, *)
func CGImageGetUTType(image: CGImage?) -> CFString?
class CGLayer {
}
typealias CGLayerRef = CGLayer
@available(OSX 10.4, *)
func CGLayerCreateWithContext(context: CGContext?, _ size: CGSize, _ auxiliaryInfo: CFDictionary?) -> CGLayer?
@available(OSX 10.4, *)
func CGLayerGetSize(layer: CGLayer?) -> CGSize
@available(OSX 10.4, *)
func CGLayerGetContext(layer: CGLayer?) -> CGContext?
@available(OSX 10.4, *)
func CGContextDrawLayerInRect(context: CGContext?, _ rect: CGRect, _ layer: CGLayer?)
@available(OSX 10.4, *)
func CGContextDrawLayerAtPoint(context: CGContext?, _ point: CGPoint, _ layer: CGLayer?)
@available(OSX 10.4, *)
func CGLayerGetTypeID() -> CFTypeID
typealias CGPDFArrayRef = COpaquePointer
@available(OSX 10.3, *)
func CGPDFArrayGetCount(array: CGPDFArrayRef) -> Int
@available(OSX 10.3, *)
func CGPDFArrayGetObject(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFObjectRef>) -> Bool
@available(OSX 10.3, *)
func CGPDFArrayGetNull(array: CGPDFArrayRef, _ index: Int) -> Bool
@available(OSX 10.3, *)
func CGPDFArrayGetBoolean(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFBoolean>) -> Bool
@available(OSX 10.3, *)
func CGPDFArrayGetInteger(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFInteger>) -> Bool
@available(OSX 10.3, *)
func CGPDFArrayGetNumber(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFReal>) -> Bool
@available(OSX 10.3, *)
func CGPDFArrayGetName(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<UnsafePointer<Int8>>) -> Bool
@available(OSX 10.3, *)
func CGPDFArrayGetString(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFStringRef>) -> Bool
@available(OSX 10.3, *)
func CGPDFArrayGetArray(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFArrayRef>) -> Bool
@available(OSX 10.3, *)
func CGPDFArrayGetDictionary(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFDictionaryRef>) -> Bool
@available(OSX 10.3, *)
func CGPDFArrayGetStream(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFStreamRef>) -> Bool
typealias CGPDFContentStreamRef = COpaquePointer
@available(OSX 10.4, *)
func CGPDFContentStreamCreateWithPage(page: CGPDFPage!) -> CGPDFContentStreamRef
@available(OSX 10.4, *)
func CGPDFContentStreamCreateWithStream(stream: CGPDFStreamRef, _ streamResources: CGPDFDictionaryRef, _ parent: CGPDFContentStreamRef) -> CGPDFContentStreamRef
@available(OSX 10.4, *)
func CGPDFContentStreamRetain(cs: CGPDFContentStreamRef) -> CGPDFContentStreamRef
@available(OSX 10.4, *)
func CGPDFContentStreamRelease(cs: CGPDFContentStreamRef)
@available(OSX 10.4, *)
func CGPDFContentStreamGetStreams(cs: CGPDFContentStreamRef) -> CFArray!
@available(OSX 10.4, *)
func CGPDFContentStreamGetResource(cs: CGPDFContentStreamRef, _ category: UnsafePointer<Int8>, _ name: UnsafePointer<Int8>) -> CGPDFObjectRef
@available(OSX 10.0, *)
func CGPDFContextCreate(consumer: CGDataConsumer?, _ mediaBox: UnsafePointer<CGRect>, _ auxiliaryInfo: CFDictionary?) -> CGContext?
@available(OSX 10.0, *)
func CGPDFContextCreateWithURL(url: CFURL?, _ mediaBox: UnsafePointer<CGRect>, _ auxiliaryInfo: CFDictionary?) -> CGContext?
@available(OSX 10.5, *)
func CGPDFContextClose(context: CGContext?)
@available(OSX 10.4, *)
func CGPDFContextBeginPage(context: CGContext?, _ pageInfo: CFDictionary?)
@available(OSX 10.4, *)
func CGPDFContextEndPage(context: CGContext?)
@available(OSX 10.7, *)
func CGPDFContextAddDocumentMetadata(context: CGContext?, _ metadata: CFData?)
@available(OSX 10.4, *)
func CGPDFContextSetURLForRect(context: CGContext?, _ url: CFURL, _ rect: CGRect)
@available(OSX 10.4, *)
func CGPDFContextAddDestinationAtPoint(context: CGContext?, _ name: CFString, _ point: CGPoint)
@available(OSX 10.4, *)
func CGPDFContextSetDestinationForRect(context: CGContext?, _ name: CFString, _ rect: CGRect)
@available(OSX 10.4, *)
let kCGPDFContextMediaBox: CFString
@available(OSX 10.4, *)
let kCGPDFContextCropBox: CFString
@available(OSX 10.4, *)
let kCGPDFContextBleedBox: CFString
@available(OSX 10.4, *)
let kCGPDFContextTrimBox: CFString
@available(OSX 10.4, *)
let kCGPDFContextArtBox: CFString
@available(OSX 10.4, *)
let kCGPDFContextTitle: CFString
@available(OSX 10.4, *)
let kCGPDFContextAuthor: CFString
@available(OSX 10.5, *)
let kCGPDFContextSubject: CFString
@available(OSX 10.5, *)
let kCGPDFContextKeywords: CFString
@available(OSX 10.4, *)
let kCGPDFContextCreator: CFString
@available(OSX 10.4, *)
let kCGPDFContextOwnerPassword: CFString
@available(OSX 10.4, *)
let kCGPDFContextUserPassword: CFString
@available(OSX 10.5, *)
let kCGPDFContextEncryptionKeyLength: CFString
@available(OSX 10.4, *)
let kCGPDFContextAllowsPrinting: CFString
@available(OSX 10.4, *)
let kCGPDFContextAllowsCopying: CFString
@available(OSX 10.4, *)
let kCGPDFContextOutputIntent: CFString
@available(OSX 10.4, *)
let kCGPDFXOutputIntentSubtype: CFString
@available(OSX 10.4, *)
let kCGPDFXOutputConditionIdentifier: CFString
@available(OSX 10.4, *)
let kCGPDFXOutputCondition: CFString
@available(OSX 10.4, *)
let kCGPDFXRegistryName: CFString
@available(OSX 10.4, *)
let kCGPDFXInfo: CFString
@available(OSX 10.4, *)
let kCGPDFXDestinationOutputProfile: CFString
@available(OSX 10.4, *)
let kCGPDFContextOutputIntents: CFString
typealias CGPDFDictionaryRef = COpaquePointer
@available(OSX 10.3, *)
func CGPDFDictionaryGetCount(dict: CGPDFDictionaryRef) -> Int
@available(OSX 10.3, *)
func CGPDFDictionaryGetObject(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFObjectRef>) -> Bool
@available(OSX 10.3, *)
func CGPDFDictionaryGetBoolean(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFBoolean>) -> Bool
@available(OSX 10.3, *)
func CGPDFDictionaryGetInteger(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFInteger>) -> Bool
@available(OSX 10.3, *)
func CGPDFDictionaryGetNumber(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFReal>) -> Bool
@available(OSX 10.3, *)
func CGPDFDictionaryGetName(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<UnsafePointer<Int8>>) -> Bool
@available(OSX 10.3, *)
func CGPDFDictionaryGetString(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFStringRef>) -> Bool
@available(OSX 10.3, *)
func CGPDFDictionaryGetArray(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFArrayRef>) -> Bool
@available(OSX 10.3, *)
func CGPDFDictionaryGetDictionary(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFDictionaryRef>) -> Bool
@available(OSX 10.3, *)
func CGPDFDictionaryGetStream(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFStreamRef>) -> Bool
typealias CGPDFDictionaryApplierFunction = @convention(c) (UnsafePointer<Int8>, CGPDFObjectRef, UnsafeMutablePointer<Void>) -> Void
@available(OSX 10.3, *)
func CGPDFDictionaryApplyFunction(dict: CGPDFDictionaryRef, _ function: CGPDFDictionaryApplierFunction?, _ info: UnsafeMutablePointer<Void>)
class CGPDFDocument {
}
typealias CGPDFDocumentRef = CGPDFDocument
@available(OSX 10.0, *)
func CGPDFDocumentCreateWithProvider(provider: CGDataProvider?) -> CGPDFDocument?
@available(OSX 10.0, *)
func CGPDFDocumentCreateWithURL(url: CFURL?) -> CGPDFDocument?
@available(OSX 10.3, *)
func CGPDFDocumentGetVersion(document: CGPDFDocument?, _ majorVersion: UnsafeMutablePointer<Int32>, _ minorVersion: UnsafeMutablePointer<Int32>)
@available(OSX 10.2, *)
func CGPDFDocumentIsEncrypted(document: CGPDFDocument?) -> Bool
@available(OSX 10.2, *)
func CGPDFDocumentUnlockWithPassword(document: CGPDFDocument?, _ password: UnsafePointer<Int8>) -> Bool
@available(OSX 10.2, *)
func CGPDFDocumentIsUnlocked(document: CGPDFDocument?) -> Bool
@available(OSX 10.2, *)
func CGPDFDocumentAllowsPrinting(document: CGPDFDocument?) -> Bool
@available(OSX 10.2, *)
func CGPDFDocumentAllowsCopying(document: CGPDFDocument?) -> Bool
@available(OSX 10.0, *)
func CGPDFDocumentGetNumberOfPages(document: CGPDFDocument?) -> Int
@available(OSX 10.3, *)
func CGPDFDocumentGetPage(document: CGPDFDocument?, _ pageNumber: Int) -> CGPDFPage?
@available(OSX 10.3, *)
func CGPDFDocumentGetCatalog(document: CGPDFDocument?) -> CGPDFDictionaryRef
@available(OSX 10.4, *)
func CGPDFDocumentGetInfo(document: CGPDFDocument?) -> CGPDFDictionaryRef
@available(OSX 10.4, *)
func CGPDFDocumentGetID(document: CGPDFDocument?) -> CGPDFArrayRef
@available(OSX 10.2, *)
func CGPDFDocumentGetTypeID() -> CFTypeID
typealias CGPDFBoolean = UInt8
typealias CGPDFInteger = Int
typealias CGPDFReal = CGFloat
typealias CGPDFObjectRef = COpaquePointer
enum CGPDFObjectType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Null
  case Boolean
  case Integer
  case Real
  case Name
  case String
  case Array
  case Dictionary
  case Stream
}
@available(OSX 10.3, *)
func CGPDFObjectGetType(object: CGPDFObjectRef) -> CGPDFObjectType
@available(OSX 10.3, *)
func CGPDFObjectGetValue(object: CGPDFObjectRef, _ type: CGPDFObjectType, _ value: UnsafeMutablePointer<Void>) -> Bool
typealias CGPDFOperatorTableRef = COpaquePointer
typealias CGPDFOperatorCallback = @convention(c) (CGPDFScannerRef, UnsafeMutablePointer<Void>) -> Void
@available(OSX 10.4, *)
func CGPDFOperatorTableCreate() -> CGPDFOperatorTableRef
@available(OSX 10.4, *)
func CGPDFOperatorTableRetain(table: CGPDFOperatorTableRef) -> CGPDFOperatorTableRef
@available(OSX 10.4, *)
func CGPDFOperatorTableRelease(table: CGPDFOperatorTableRef)
@available(OSX 10.4, *)
func CGPDFOperatorTableSetCallback(table: CGPDFOperatorTableRef, _ name: UnsafePointer<Int8>, _ callback: CGPDFOperatorCallback?)
class CGPDFPage {
}
typealias CGPDFPageRef = CGPDFPage
enum CGPDFBox : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case MediaBox
  case CropBox
  case BleedBox
  case TrimBox
  case ArtBox
}
@available(OSX 10.3, *)
func CGPDFPageGetDocument(page: CGPDFPage?) -> CGPDFDocument?
@available(OSX 10.3, *)
func CGPDFPageGetPageNumber(page: CGPDFPage?) -> Int
@available(OSX 10.3, *)
func CGPDFPageGetBoxRect(page: CGPDFPage?, _ box: CGPDFBox) -> CGRect
@available(OSX 10.3, *)
func CGPDFPageGetRotationAngle(page: CGPDFPage?) -> Int32
@available(OSX 10.3, *)
func CGPDFPageGetDrawingTransform(page: CGPDFPage?, _ box: CGPDFBox, _ rect: CGRect, _ rotate: Int32, _ preserveAspectRatio: Bool) -> CGAffineTransform
@available(OSX 10.3, *)
func CGPDFPageGetDictionary(page: CGPDFPage?) -> CGPDFDictionaryRef
@available(OSX 10.3, *)
func CGPDFPageGetTypeID() -> CFTypeID
typealias CGPDFScannerRef = COpaquePointer
@available(OSX 10.4, *)
func CGPDFScannerCreate(cs: CGPDFContentStreamRef, _ table: CGPDFOperatorTableRef, _ info: UnsafeMutablePointer<Void>) -> CGPDFScannerRef
@available(OSX 10.4, *)
func CGPDFScannerRetain(scanner: CGPDFScannerRef) -> CGPDFScannerRef
@available(OSX 10.4, *)
func CGPDFScannerRelease(scanner: CGPDFScannerRef)
@available(OSX 10.4, *)
func CGPDFScannerScan(scanner: CGPDFScannerRef) -> Bool
@available(OSX 10.4, *)
func CGPDFScannerGetContentStream(scanner: CGPDFScannerRef) -> CGPDFContentStreamRef
@available(OSX 10.4, *)
func CGPDFScannerPopObject(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFObjectRef>) -> Bool
@available(OSX 10.4, *)
func CGPDFScannerPopBoolean(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFBoolean>) -> Bool
@available(OSX 10.4, *)
func CGPDFScannerPopInteger(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFInteger>) -> Bool
@available(OSX 10.4, *)
func CGPDFScannerPopNumber(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFReal>) -> Bool
@available(OSX 10.4, *)
func CGPDFScannerPopName(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<UnsafePointer<Int8>>) -> Bool
@available(OSX 10.4, *)
func CGPDFScannerPopString(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFStringRef>) -> Bool
@available(OSX 10.4, *)
func CGPDFScannerPopArray(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFArrayRef>) -> Bool
@available(OSX 10.4, *)
func CGPDFScannerPopDictionary(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFDictionaryRef>) -> Bool
@available(OSX 10.4, *)
func CGPDFScannerPopStream(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFStreamRef>) -> Bool
typealias CGPDFStreamRef = COpaquePointer
enum CGPDFDataFormat : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Raw
  case JPEGEncoded
  case JPEG2000
}
@available(OSX 10.3, *)
func CGPDFStreamGetDictionary(stream: CGPDFStreamRef) -> CGPDFDictionaryRef
@available(OSX 10.3, *)
func CGPDFStreamCopyData(stream: CGPDFStreamRef, _ format: UnsafeMutablePointer<CGPDFDataFormat>) -> CFData?
typealias CGPDFStringRef = COpaquePointer
@available(OSX 10.3, *)
func CGPDFStringGetLength(string: CGPDFStringRef) -> Int
@available(OSX 10.3, *)
func CGPDFStringGetBytePtr(string: CGPDFStringRef) -> UnsafePointer<UInt8>
@available(OSX 10.3, *)
func CGPDFStringCopyTextString(string: CGPDFStringRef) -> CFString?
@available(OSX 10.4, *)
func CGPDFStringCopyDate(string: CGPDFStringRef) -> CFDate?
class CGPSConverter {
}
typealias CGPSConverterRef = CGPSConverter
typealias CGPSConverterBeginDocumentCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
typealias CGPSConverterEndDocumentCallback = @convention(c) (UnsafeMutablePointer<Void>, Bool) -> Void
typealias CGPSConverterBeginPageCallback = @convention(c) (UnsafeMutablePointer<Void>, Int, CFDictionary) -> Void
typealias CGPSConverterEndPageCallback = @convention(c) (UnsafeMutablePointer<Void>, Int, CFDictionary) -> Void
typealias CGPSConverterProgressCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
typealias CGPSConverterMessageCallback = @convention(c) (UnsafeMutablePointer<Void>, CFString) -> Void
typealias CGPSConverterReleaseInfoCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
struct CGPSConverterCallbacks {
  var version: UInt32
  var beginDocument: CGPSConverterBeginDocumentCallback?
  var endDocument: CGPSConverterEndDocumentCallback?
  var beginPage: CGPSConverterBeginPageCallback?
  var endPage: CGPSConverterEndPageCallback?
  var noteProgress: CGPSConverterProgressCallback?
  var noteMessage: CGPSConverterMessageCallback?
  var releaseInfo: CGPSConverterReleaseInfoCallback?
  init()
  init(version: UInt32, beginDocument: CGPSConverterBeginDocumentCallback?, endDocument: CGPSConverterEndDocumentCallback?, beginPage: CGPSConverterBeginPageCallback?, endPage: CGPSConverterEndPageCallback?, noteProgress: CGPSConverterProgressCallback?, noteMessage: CGPSConverterMessageCallback?, releaseInfo: CGPSConverterReleaseInfoCallback?)
}
@available(OSX 10.3, *)
func CGPSConverterCreate(info: UnsafeMutablePointer<Void>, _ callbacks: UnsafePointer<CGPSConverterCallbacks>, _ options: CFDictionary?) -> CGPSConverter?
@available(OSX 10.3, *)
func CGPSConverterConvert(converter: CGPSConverter, _ provider: CGDataProvider, _ consumer: CGDataConsumer, _ options: CFDictionary?) -> Bool
@available(OSX 10.3, *)
func CGPSConverterAbort(converter: CGPSConverter) -> Bool
@available(OSX 10.3, *)
func CGPSConverterIsConverting(converter: CGPSConverter) -> Bool
@available(OSX 10.3, *)
func CGPSConverterGetTypeID() -> CFTypeID
class CGMutablePath {
}
typealias CGMutablePathRef = CGMutablePath
class CGPath {
}
typealias CGPathRef = CGPath
enum CGLineJoin : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Miter
  case Round
  case Bevel
}
enum CGLineCap : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Butt
  case Round
  case Square
}
@available(OSX 10.2, *)
func CGPathGetTypeID() -> CFTypeID
@available(OSX 10.2, *)
func CGPathCreateMutable() -> CGMutablePath
@available(OSX 10.2, *)
func CGPathCreateCopy(path: CGPath?) -> CGPath?
@available(OSX 10.7, *)
func CGPathCreateCopyByTransformingPath(path: CGPath?, _ transform: UnsafePointer<CGAffineTransform>) -> CGPath?
@available(OSX 10.2, *)
func CGPathCreateMutableCopy(path: CGPath?) -> CGMutablePath?
@available(OSX 10.7, *)
func CGPathCreateMutableCopyByTransformingPath(path: CGPath?, _ transform: UnsafePointer<CGAffineTransform>) -> CGMutablePath?
@available(OSX 10.5, *)
func CGPathCreateWithRect(rect: CGRect, _ transform: UnsafePointer<CGAffineTransform>) -> CGPath
@available(OSX 10.7, *)
func CGPathCreateWithEllipseInRect(rect: CGRect, _ transform: UnsafePointer<CGAffineTransform>) -> CGPath
@available(OSX 10.9, *)
func CGPathCreateWithRoundedRect(rect: CGRect, _ cornerWidth: CGFloat, _ cornerHeight: CGFloat, _ transform: UnsafePointer<CGAffineTransform>) -> CGPath
@available(OSX 10.9, *)
func CGPathAddRoundedRect(path: CGMutablePath?, _ transform: UnsafePointer<CGAffineTransform>, _ rect: CGRect, _ cornerWidth: CGFloat, _ cornerHeight: CGFloat)
@available(OSX 10.7, *)
func CGPathCreateCopyByDashingPath(path: CGPath?, _ transform: UnsafePointer<CGAffineTransform>, _ phase: CGFloat, _ lengths: UnsafePointer<CGFloat>, _ count: Int) -> CGPath?
@available(OSX 10.7, *)
func CGPathCreateCopyByStrokingPath(path: CGPath?, _ transform: UnsafePointer<CGAffineTransform>, _ lineWidth: CGFloat, _ lineCap: CGLineCap, _ lineJoin: CGLineJoin, _ miterLimit: CGFloat) -> CGPath?
@available(OSX 10.2, *)
func CGPathEqualToPath(path1: CGPath?, _ path2: CGPath?) -> Bool

/*** Path construction functions. ***/
@available(OSX 10.2, *)
func CGPathMoveToPoint(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ x: CGFloat, _ y: CGFloat)
@available(OSX 10.2, *)
func CGPathAddLineToPoint(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ x: CGFloat, _ y: CGFloat)
@available(OSX 10.2, *)
func CGPathAddQuadCurveToPoint(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ cpx: CGFloat, _ cpy: CGFloat, _ x: CGFloat, _ y: CGFloat)
@available(OSX 10.2, *)
func CGPathAddCurveToPoint(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ cp1x: CGFloat, _ cp1y: CGFloat, _ cp2x: CGFloat, _ cp2y: CGFloat, _ x: CGFloat, _ y: CGFloat)
@available(OSX 10.2, *)
func CGPathCloseSubpath(path: CGMutablePath?)

/*** Path construction convenience functions. ***/
@available(OSX 10.2, *)
func CGPathAddRect(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ rect: CGRect)
@available(OSX 10.2, *)
func CGPathAddRects(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ rects: UnsafePointer<CGRect>, _ count: Int)
@available(OSX 10.2, *)
func CGPathAddLines(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ points: UnsafePointer<CGPoint>, _ count: Int)
@available(OSX 10.4, *)
func CGPathAddEllipseInRect(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ rect: CGRect)
@available(OSX 10.7, *)
func CGPathAddRelativeArc(path: CGMutablePath?, _ matrix: UnsafePointer<CGAffineTransform>, _ x: CGFloat, _ y: CGFloat, _ radius: CGFloat, _ startAngle: CGFloat, _ delta: CGFloat)
@available(OSX 10.2, *)
func CGPathAddArc(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ x: CGFloat, _ y: CGFloat, _ radius: CGFloat, _ startAngle: CGFloat, _ endAngle: CGFloat, _ clockwise: Bool)
@available(OSX 10.2, *)
func CGPathAddArcToPoint(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ x1: CGFloat, _ y1: CGFloat, _ x2: CGFloat, _ y2: CGFloat, _ radius: CGFloat)
@available(OSX 10.2, *)
func CGPathAddPath(path1: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ path2: CGPath?)

/*** Path information functions. ***/
@available(OSX 10.2, *)
func CGPathIsEmpty(path: CGPath?) -> Bool
@available(OSX 10.2, *)
func CGPathIsRect(path: CGPath?, _ rect: UnsafeMutablePointer<CGRect>) -> Bool
@available(OSX 10.2, *)
func CGPathGetCurrentPoint(path: CGPath?) -> CGPoint
@available(OSX 10.2, *)
func CGPathGetBoundingBox(path: CGPath?) -> CGRect
@available(OSX 10.6, *)
func CGPathGetPathBoundingBox(path: CGPath?) -> CGRect
@available(OSX 10.4, *)
func CGPathContainsPoint(path: CGPath?, _ m: UnsafePointer<CGAffineTransform>, _ point: CGPoint, _ eoFill: Bool) -> Bool
enum CGPathElementType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case MoveToPoint
  case AddLineToPoint
  case AddQuadCurveToPoint
  case AddCurveToPoint
  case CloseSubpath
}
struct CGPathElement {
  var type: CGPathElementType
  var points: UnsafeMutablePointer<CGPoint>
}
typealias CGPathApplierFunction = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<CGPathElement>) -> Void
@available(OSX 10.2, *)
func CGPathApply(path: CGPath?, _ info: UnsafeMutablePointer<Void>, _ function: CGPathApplierFunction?)
class CGPattern {
}
typealias CGPatternRef = CGPattern
enum CGPatternTiling : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case NoDistortion
  case ConstantSpacingMinimalDistortion
  case ConstantSpacing
}
typealias CGPatternDrawPatternCallback = @convention(c) (UnsafeMutablePointer<Void>, CGContext?) -> Void
typealias CGPatternReleaseInfoCallback = @convention(c) (UnsafeMutablePointer<Void>) -> Void
struct CGPatternCallbacks {
  var version: UInt32
  var drawPattern: CGPatternDrawPatternCallback?
  var releaseInfo: CGPatternReleaseInfoCallback?
  init()
  init(version: UInt32, drawPattern: CGPatternDrawPatternCallback?, releaseInfo: CGPatternReleaseInfoCallback?)
}
@available(OSX 10.2, *)
func CGPatternGetTypeID() -> CFTypeID
@available(OSX 10.0, *)
func CGPatternCreate(info: UnsafeMutablePointer<Void>, _ bounds: CGRect, _ matrix: CGAffineTransform, _ xStep: CGFloat, _ yStep: CGFloat, _ tiling: CGPatternTiling, _ isColored: Bool, _ callbacks: UnsafePointer<CGPatternCallbacks>) -> CGPattern?
typealias CGEventErr = CGError
typealias CGButtonCount = UInt32
typealias CGWheelCount = UInt32
typealias CGCharCode = UInt16
typealias CGKeyCode = UInt16
typealias CGScreenRefreshCallback = @convention(c) (UInt32, UnsafePointer<CGRect>, UnsafeMutablePointer<Void>) -> Void
struct CGScreenUpdateOperation : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Refresh: CGScreenUpdateOperation { get }
  static var Move: CGScreenUpdateOperation { get }
  static var ReducedDirtyRectangleCount: CGScreenUpdateOperation { get }
}
struct CGScreenUpdateMoveDelta {
  var dX: Int32
  var dY: Int32
  init()
  init(dX: Int32, dY: Int32)
}
typealias CGScreenUpdateMoveCallback = @convention(c) (CGScreenUpdateMoveDelta, Int, UnsafePointer<CGRect>, UnsafeMutablePointer<Void>) -> Void
@available(OSX 10.0, *)
func CGWarpMouseCursorPosition(newCursorPosition: CGPoint) -> CGError
var kCGMouseDownEventMaskingDeadSwitchTimeout: Double { get }
@available(OSX 10.0, *)
func CGAssociateMouseAndMouseCursorPosition(connected: boolean_t) -> CGError
@available(OSX 10.8, *)
func CGWindowServerCreateServerPort() -> CFMachPort?
struct CGEventFilterMask : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var PermitLocalMouseEvents: CGEventFilterMask { get }
  static var PermitLocalKeyboardEvents: CGEventFilterMask { get }
  static var PermitSystemDefinedEvents: CGEventFilterMask { get }
}
enum CGEventSuppressionState : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case EventSuppressionStateSuppressionInterval
  case EventSuppressionStateRemoteMouseDrag
  case NumberOfEventSuppressionStates
}
typealias CGRectCount = UInt32
@available(OSX 10.3, *)
func CGSessionCopyCurrentDictionary() -> CFDictionary?
var kCGSessionUserIDKey: String { get }
var kCGSessionUserNameKey: String { get }
var kCGSessionConsoleSetKey: String { get }
var kCGSessionOnConsoleKey: String { get }
var kCGSessionLoginDoneKey: String { get }
var kCGNotifyGUIConsoleSessionChanged: String { get }
var kCGNotifyGUISessionUserChanged: String { get }
class CGShading {
}
typealias CGShadingRef = CGShading
@available(OSX 10.2, *)
func CGShadingGetTypeID() -> CFTypeID
@available(OSX 10.2, *)
func CGShadingCreateAxial(space: CGColorSpace?, _ start: CGPoint, _ end: CGPoint, _ function: CGFunction?, _ extendStart: Bool, _ extendEnd: Bool) -> CGShading?
@available(OSX 10.2, *)
func CGShadingCreateRadial(space: CGColorSpace?, _ start: CGPoint, _ startRadius: CGFloat, _ end: CGPoint, _ endRadius: CGFloat, _ function: CGFunction?, _ extendStart: Bool, _ extendEnd: Bool) -> CGShading?
typealias CGWindowID = UInt32
enum CGWindowSharingType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case None
  case ReadOnly
  case ReadWrite
}
enum CGWindowBackingType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case BackingStoreRetained
  case BackingStoreNonretained
  case BackingStoreBuffered
}
@available(OSX 10.5, *)
let kCGWindowNumber: CFString
@available(OSX 10.5, *)
let kCGWindowStoreType: CFString
@available(OSX 10.5, *)
let kCGWindowLayer: CFString
@available(OSX 10.5, *)
let kCGWindowBounds: CFString
@available(OSX 10.5, *)
let kCGWindowSharingState: CFString
@available(OSX 10.5, *)
let kCGWindowAlpha: CFString
@available(OSX 10.5, *)
let kCGWindowOwnerPID: CFString
@available(OSX 10.5, *)
let kCGWindowMemoryUsage: CFString
@available(OSX 10.5, *)
let kCGWindowOwnerName: CFString
@available(OSX 10.5, *)
let kCGWindowName: CFString
@available(OSX 10.5, *)
let kCGWindowIsOnscreen: CFString
@available(OSX 10.5, *)
let kCGWindowBackingLocationVideoMemory: CFString
struct CGWindowListOption : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var OptionAll: CGWindowListOption { get }
  static var OptionOnScreenOnly: CGWindowListOption { get }
  static var OptionOnScreenAboveWindow: CGWindowListOption { get }
  static var OptionOnScreenBelowWindow: CGWindowListOption { get }
  static var OptionIncludingWindow: CGWindowListOption { get }
  static var ExcludeDesktopElements: CGWindowListOption { get }
}
@available(OSX 10.5, *)
func CGWindowListCopyWindowInfo(option: CGWindowListOption, _ relativeToWindow: CGWindowID) -> CFArray?
@available(OSX 10.5, *)
func CGWindowListCreateDescriptionFromArray(windowArray: CFArray?) -> CFArray?
struct CGWindowImageOption : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Default: CGWindowImageOption { get }
  static var BoundsIgnoreFraming: CGWindowImageOption { get }
  static var ShouldBeOpaque: CGWindowImageOption { get }
  static var OnlyShadows: CGWindowImageOption { get }
  static var BestResolution: CGWindowImageOption { get }
  static var NominalResolution: CGWindowImageOption { get }
}
@available(OSX 10.5, *)
func CGWindowListCreateImage(screenBounds: CGRect, _ listOption: CGWindowListOption, _ windowID: CGWindowID, _ imageOption: CGWindowImageOption) -> CGImage?
@available(OSX 10.5, *)
func CGWindowListCreateImageFromArray(screenBounds: CGRect, _ windowArray: CFArray, _ imageOption: CGWindowImageOption) -> CGImage?
enum CGWindowLevelKey : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case BaseWindowLevelKey
  case MinimumWindowLevelKey
  case DesktopWindowLevelKey
  case BackstopMenuLevelKey
  case NormalWindowLevelKey
  case FloatingWindowLevelKey
  case TornOffMenuWindowLevelKey
  case DockWindowLevelKey
  case MainMenuWindowLevelKey
  case StatusWindowLevelKey
  case ModalPanelWindowLevelKey
  case PopUpMenuWindowLevelKey
  case DraggingWindowLevelKey
  case ScreenSaverWindowLevelKey
  case MaximumWindowLevelKey
  case OverlayWindowLevelKey
  case HelpWindowLevelKey
  case UtilityWindowLevelKey
  case DesktopIconWindowLevelKey
  case CursorWindowLevelKey
  case AssistiveTechHighWindowLevelKey
  case NumberOfWindowLevelKeys
}
typealias CGWindowLevel = Int32
@available(OSX 10.0, *)
func CGWindowLevelForKey(key: CGWindowLevelKey) -> CGWindowLevel
var kCGNumReservedWindowLevels: Int32 { get }
