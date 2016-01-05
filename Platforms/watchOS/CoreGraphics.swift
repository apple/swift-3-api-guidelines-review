
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
@available(watchOS 2.0, *)
let CGAffineTransformIdentity: CGAffineTransform
@available(watchOS 2.0, *)
func CGAffineTransformMake(a: CGFloat, _ b: CGFloat, _ c: CGFloat, _ d: CGFloat, _ tx: CGFloat, _ ty: CGFloat) -> CGAffineTransform
@available(watchOS 2.0, *)
func CGAffineTransformMakeTranslation(tx: CGFloat, _ ty: CGFloat) -> CGAffineTransform
@available(watchOS 2.0, *)
func CGAffineTransformMakeScale(sx: CGFloat, _ sy: CGFloat) -> CGAffineTransform
@available(watchOS 2.0, *)
func CGAffineTransformMakeRotation(angle: CGFloat) -> CGAffineTransform
@available(watchOS 2.0, *)
func CGAffineTransformIsIdentity(t: CGAffineTransform) -> Bool
@available(watchOS 2.0, *)
func CGAffineTransformTranslate(t: CGAffineTransform, _ tx: CGFloat, _ ty: CGFloat) -> CGAffineTransform
@available(watchOS 2.0, *)
func CGAffineTransformScale(t: CGAffineTransform, _ sx: CGFloat, _ sy: CGFloat) -> CGAffineTransform
@available(watchOS 2.0, *)
func CGAffineTransformRotate(t: CGAffineTransform, _ angle: CGFloat) -> CGAffineTransform
@available(watchOS 2.0, *)
func CGAffineTransformInvert(t: CGAffineTransform) -> CGAffineTransform
@available(watchOS 2.0, *)
func CGAffineTransformConcat(t1: CGAffineTransform, _ t2: CGAffineTransform) -> CGAffineTransform
@available(watchOS 2.0, *)
func CGAffineTransformEqualToTransform(t1: CGAffineTransform, _ t2: CGAffineTransform) -> Bool
@available(watchOS 2.0, *)
func CGPointApplyAffineTransform(point: CGPoint, _ t: CGAffineTransform) -> CGPoint
@available(watchOS 2.0, *)
func CGSizeApplyAffineTransform(size: CGSize, _ t: CGAffineTransform) -> CGSize
@available(watchOS 2.0, *)
func CGRectApplyAffineTransform(rect: CGRect, _ t: CGAffineTransform) -> CGRect

/*** Definitions of inline functions. ***/
func __CGAffineTransformMake(a: CGFloat, _ b: CGFloat, _ c: CGFloat, _ d: CGFloat, _ tx: CGFloat, _ ty: CGFloat) -> CGAffineTransform
func __CGPointApplyAffineTransform(point: CGPoint, _ t: CGAffineTransform) -> CGPoint
func __CGSizeApplyAffineTransform(size: CGSize, _ t: CGAffineTransform) -> CGSize
var CGFLOAT_IS_DOUBLE: Int32 { get }
var CGFLOAT_MIN: Float { get }
var CGFLOAT_MAX: Float { get }
var CGFLOAT_DEFINED: Int32 { get }
typealias CGBitmapContextReleaseDataCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> Void
@available(watchOS 2.0, *)
func CGBitmapContextCreateWithData(data: UnsafeMutablePointer<Void>, _ width: Int, _ height: Int, _ bitsPerComponent: Int, _ bytesPerRow: Int, _ space: CGColorSpace?, _ bitmapInfo: UInt32, _ releaseCallback: CGBitmapContextReleaseDataCallback?, _ releaseInfo: UnsafeMutablePointer<Void>) -> CGContext?
@available(watchOS 2.0, *)
func CGBitmapContextCreate(data: UnsafeMutablePointer<Void>, _ width: Int, _ height: Int, _ bitsPerComponent: Int, _ bytesPerRow: Int, _ space: CGColorSpace?, _ bitmapInfo: UInt32) -> CGContext?
@available(watchOS 2.0, *)
func CGBitmapContextGetData(context: CGContext?) -> UnsafeMutablePointer<Void>
@available(watchOS 2.0, *)
func CGBitmapContextGetWidth(context: CGContext?) -> Int
@available(watchOS 2.0, *)
func CGBitmapContextGetHeight(context: CGContext?) -> Int
@available(watchOS 2.0, *)
func CGBitmapContextGetBitsPerComponent(context: CGContext?) -> Int
@available(watchOS 2.0, *)
func CGBitmapContextGetBitsPerPixel(context: CGContext?) -> Int
@available(watchOS 2.0, *)
func CGBitmapContextGetBytesPerRow(context: CGContext?) -> Int
@available(watchOS 2.0, *)
func CGBitmapContextGetColorSpace(context: CGContext?) -> CGColorSpace?
@available(watchOS 2.0, *)
func CGBitmapContextGetAlphaInfo(context: CGContext?) -> CGImageAlphaInfo
@available(watchOS 2.0, *)
func CGBitmapContextGetBitmapInfo(context: CGContext?) -> CGBitmapInfo
@available(watchOS 2.0, *)
func CGBitmapContextCreateImage(context: CGContext?) -> CGImage?
class CGColor {
}
typealias CGColorRef = CGColor
@available(watchOS 2.0, *)
func CGColorCreate(space: CGColorSpace?, _ components: UnsafePointer<CGFloat>) -> CGColor?
@available(watchOS 2.0, *)
func CGColorCreateWithPattern(space: CGColorSpace?, _ pattern: CGPattern?, _ components: UnsafePointer<CGFloat>) -> CGColor?
@available(watchOS 2.0, *)
func CGColorCreateCopy(color: CGColor?) -> CGColor?
@available(watchOS 2.0, *)
func CGColorCreateCopyWithAlpha(color: CGColor?, _ alpha: CGFloat) -> CGColor?
@available(watchOS 2.0, *)
func CGColorCreateCopyByMatchingToColorSpace(_: CGColorSpace?, _ intent: CGColorRenderingIntent, _ color: CGColor?, _ options: CFDictionary?) -> CGColor?
@available(watchOS 2.0, *)
func CGColorEqualToColor(color1: CGColor?, _ color2: CGColor?) -> Bool
@available(watchOS 2.0, *)
func CGColorGetNumberOfComponents(color: CGColor?) -> Int
@available(watchOS 2.0, *)
func CGColorGetComponents(color: CGColor?) -> UnsafePointer<CGFloat>
@available(watchOS 2.0, *)
func CGColorGetAlpha(color: CGColor?) -> CGFloat
@available(watchOS 2.0, *)
func CGColorGetColorSpace(color: CGColor?) -> CGColorSpace?
@available(watchOS 2.0, *)
func CGColorGetPattern(color: CGColor?) -> CGPattern?
@available(watchOS 2.0, *)
func CGColorGetTypeID() -> CFTypeID
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
@available(watchOS 2.0, *)
let kCGColorSpaceGenericGray: CFString
@available(watchOS 2.0, *)
let kCGColorSpaceGenericRGB: CFString
@available(watchOS 2.0, *)
let kCGColorSpaceGenericCMYK: CFString
@available(watchOS 2.0, *)
let kCGColorSpaceGenericRGBLinear: CFString
@available(watchOS 2.0, *)
let kCGColorSpaceAdobeRGB1998: CFString
@available(watchOS 2.0, *)
let kCGColorSpaceSRGB: CFString
@available(watchOS 2.0, *)
let kCGColorSpaceGenericGrayGamma2_2: CFString
@available(watchOS 2.0, *)
let kCGColorSpaceGenericXYZ: CFString
@available(watchOS 2.0, *)
let kCGColorSpaceACESCGLinear: CFString
@available(watchOS 2.0, *)
let kCGColorSpaceITUR_709: CFString
@available(watchOS 2.0, *)
let kCGColorSpaceITUR_2020: CFString
@available(watchOS 2.0, *)
let kCGColorSpaceROMMRGB: CFString
@available(watchOS 2.0, *)
func CGColorSpaceCreateDeviceGray() -> CGColorSpace?
@available(watchOS 2.0, *)
func CGColorSpaceCreateDeviceRGB() -> CGColorSpace?
@available(watchOS 2.0, *)
func CGColorSpaceCreateDeviceCMYK() -> CGColorSpace?
@available(watchOS 2.0, *)
func CGColorSpaceCreateCalibratedGray(whitePoint: UnsafePointer<CGFloat>, _ blackPoint: UnsafePointer<CGFloat>, _ gamma: CGFloat) -> CGColorSpace?
@available(watchOS 2.0, *)
func CGColorSpaceCreateCalibratedRGB(whitePoint: UnsafePointer<CGFloat>, _ blackPoint: UnsafePointer<CGFloat>, _ gamma: UnsafePointer<CGFloat>, _ matrix: UnsafePointer<CGFloat>) -> CGColorSpace?
@available(watchOS 2.0, *)
func CGColorSpaceCreateLab(whitePoint: UnsafePointer<CGFloat>, _ blackPoint: UnsafePointer<CGFloat>, _ range: UnsafePointer<CGFloat>) -> CGColorSpace?
@available(watchOS 2.0, *)
func CGColorSpaceCreateWithICCProfile(data: CFData?) -> CGColorSpace?
@available(watchOS 2.0, *)
func CGColorSpaceCreateICCBased(nComponents: Int, _ range: UnsafePointer<CGFloat>, _ profile: CGDataProvider?, _ alternate: CGColorSpace?) -> CGColorSpace?
@available(watchOS 2.0, *)
func CGColorSpaceCreateIndexed(baseSpace: CGColorSpace?, _ lastIndex: Int, _ colorTable: UnsafePointer<UInt8>) -> CGColorSpace?
@available(watchOS 2.0, *)
func CGColorSpaceCreatePattern(baseSpace: CGColorSpace?) -> CGColorSpace?
@available(watchOS 2.0, *)
func CGColorSpaceCreateWithPlatformColorSpace(ref: UnsafePointer<Void>) -> CGColorSpace?
@available(watchOS 2.0, *)
func CGColorSpaceCreateWithName(name: CFString?) -> CGColorSpace?
@available(watchOS 2.0, *)
func CGColorSpaceGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
func CGColorSpaceGetNumberOfComponents(space: CGColorSpace?) -> Int
@available(watchOS 2.0, *)
func CGColorSpaceGetModel(space: CGColorSpace?) -> CGColorSpaceModel
@available(watchOS 2.0, *)
func CGColorSpaceGetBaseColorSpace(space: CGColorSpace?) -> CGColorSpace?
@available(watchOS 2.0, *)
func CGColorSpaceGetColorTableCount(space: CGColorSpace?) -> Int
@available(watchOS 2.0, *)
func CGColorSpaceGetColorTable(space: CGColorSpace?, _ table: UnsafeMutablePointer<UInt8>)
@available(watchOS 2.0, *)
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
@available(watchOS, introduced=2.0, deprecated=2.0)
enum CGTextEncoding : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case EncodingFontSpecific
  case EncodingMacRoman
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
@available(watchOS 2.0, *)
func CGContextGetTypeID() -> CFTypeID

/** Graphics state functions. **/
@available(watchOS 2.0, *)
func CGContextSaveGState(c: CGContext?)
@available(watchOS 2.0, *)
func CGContextRestoreGState(c: CGContext?)

/** Coordinate space transformations. **/
@available(watchOS 2.0, *)
func CGContextScaleCTM(c: CGContext?, _ sx: CGFloat, _ sy: CGFloat)
@available(watchOS 2.0, *)
func CGContextTranslateCTM(c: CGContext?, _ tx: CGFloat, _ ty: CGFloat)
@available(watchOS 2.0, *)
func CGContextRotateCTM(c: CGContext?, _ angle: CGFloat)
@available(watchOS 2.0, *)
func CGContextConcatCTM(c: CGContext?, _ transform: CGAffineTransform)
@available(watchOS 2.0, *)
func CGContextGetCTM(c: CGContext?) -> CGAffineTransform

/** Drawing attribute functions. **/
@available(watchOS 2.0, *)
func CGContextSetLineWidth(c: CGContext?, _ width: CGFloat)
@available(watchOS 2.0, *)
func CGContextSetLineCap(c: CGContext?, _ cap: CGLineCap)
@available(watchOS 2.0, *)
func CGContextSetLineJoin(c: CGContext?, _ join: CGLineJoin)
@available(watchOS 2.0, *)
func CGContextSetMiterLimit(c: CGContext?, _ limit: CGFloat)
@available(watchOS 2.0, *)
func CGContextSetLineDash(c: CGContext?, _ phase: CGFloat, _ lengths: UnsafePointer<CGFloat>, _ count: Int)
@available(watchOS 2.0, *)
func CGContextSetFlatness(c: CGContext?, _ flatness: CGFloat)
@available(watchOS 2.0, *)
func CGContextSetAlpha(c: CGContext?, _ alpha: CGFloat)
@available(watchOS 2.0, *)
func CGContextSetBlendMode(c: CGContext?, _ mode: CGBlendMode)

/** Path construction functions. **/
@available(watchOS 2.0, *)
func CGContextBeginPath(c: CGContext?)
@available(watchOS 2.0, *)
func CGContextMoveToPoint(c: CGContext?, _ x: CGFloat, _ y: CGFloat)
@available(watchOS 2.0, *)
func CGContextAddLineToPoint(c: CGContext?, _ x: CGFloat, _ y: CGFloat)
@available(watchOS 2.0, *)
func CGContextAddCurveToPoint(c: CGContext?, _ cp1x: CGFloat, _ cp1y: CGFloat, _ cp2x: CGFloat, _ cp2y: CGFloat, _ x: CGFloat, _ y: CGFloat)
@available(watchOS 2.0, *)
func CGContextAddQuadCurveToPoint(c: CGContext?, _ cpx: CGFloat, _ cpy: CGFloat, _ x: CGFloat, _ y: CGFloat)
@available(watchOS 2.0, *)
func CGContextClosePath(c: CGContext?)

/** Path construction convenience functions. **/
@available(watchOS 2.0, *)
func CGContextAddRect(c: CGContext?, _ rect: CGRect)
@available(watchOS 2.0, *)
func CGContextAddRects(c: CGContext?, _ rects: UnsafePointer<CGRect>, _ count: Int)
@available(watchOS 2.0, *)
func CGContextAddLines(c: CGContext?, _ points: UnsafePointer<CGPoint>, _ count: Int)
@available(watchOS 2.0, *)
func CGContextAddEllipseInRect(c: CGContext?, _ rect: CGRect)
@available(watchOS 2.0, *)
func CGContextAddArc(c: CGContext?, _ x: CGFloat, _ y: CGFloat, _ radius: CGFloat, _ startAngle: CGFloat, _ endAngle: CGFloat, _ clockwise: Int32)
@available(watchOS 2.0, *)
func CGContextAddArcToPoint(c: CGContext?, _ x1: CGFloat, _ y1: CGFloat, _ x2: CGFloat, _ y2: CGFloat, _ radius: CGFloat)
@available(watchOS 2.0, *)
func CGContextAddPath(c: CGContext?, _ path: CGPath?)
@available(watchOS 2.0, *)
func CGContextReplacePathWithStrokedPath(c: CGContext?)

/** Path information functions. **/
@available(watchOS 2.0, *)
func CGContextIsPathEmpty(c: CGContext?) -> Bool
@available(watchOS 2.0, *)
func CGContextGetPathCurrentPoint(c: CGContext?) -> CGPoint
@available(watchOS 2.0, *)
func CGContextGetPathBoundingBox(c: CGContext?) -> CGRect
@available(watchOS 2.0, *)
func CGContextCopyPath(c: CGContext?) -> CGPath?
@available(watchOS 2.0, *)
func CGContextPathContainsPoint(c: CGContext?, _ point: CGPoint, _ mode: CGPathDrawingMode) -> Bool

/** Path drawing functions. **/
@available(watchOS 2.0, *)
func CGContextDrawPath(c: CGContext?, _ mode: CGPathDrawingMode)

/** Path drawing convenience functions. **/
@available(watchOS 2.0, *)
func CGContextFillPath(c: CGContext?)
@available(watchOS 2.0, *)
func CGContextEOFillPath(c: CGContext?)
@available(watchOS 2.0, *)
func CGContextStrokePath(c: CGContext?)
@available(watchOS 2.0, *)
func CGContextFillRect(c: CGContext?, _ rect: CGRect)
@available(watchOS 2.0, *)
func CGContextFillRects(c: CGContext?, _ rects: UnsafePointer<CGRect>, _ count: Int)
@available(watchOS 2.0, *)
func CGContextStrokeRect(c: CGContext?, _ rect: CGRect)
@available(watchOS 2.0, *)
func CGContextStrokeRectWithWidth(c: CGContext?, _ rect: CGRect, _ width: CGFloat)
@available(watchOS 2.0, *)
func CGContextClearRect(c: CGContext?, _ rect: CGRect)
@available(watchOS 2.0, *)
func CGContextFillEllipseInRect(c: CGContext?, _ rect: CGRect)
@available(watchOS 2.0, *)
func CGContextStrokeEllipseInRect(c: CGContext?, _ rect: CGRect)
@available(watchOS 2.0, *)
func CGContextStrokeLineSegments(c: CGContext?, _ points: UnsafePointer<CGPoint>, _ count: Int)

/** Clipping functions. **/
@available(watchOS 2.0, *)
func CGContextClip(c: CGContext?)
@available(watchOS 2.0, *)
func CGContextEOClip(c: CGContext?)
@available(watchOS 2.0, *)
func CGContextClipToMask(c: CGContext?, _ rect: CGRect, _ mask: CGImage?)
@available(watchOS 2.0, *)
func CGContextGetClipBoundingBox(c: CGContext?) -> CGRect

/** Clipping convenience functions. **/
@available(watchOS 2.0, *)
func CGContextClipToRect(c: CGContext?, _ rect: CGRect)
@available(watchOS 2.0, *)
func CGContextClipToRects(c: CGContext?, _ rects: UnsafePointer<CGRect>, _ count: Int)

/** Primitive color functions. **/
@available(watchOS 2.0, *)
func CGContextSetFillColorWithColor(c: CGContext?, _ color: CGColor?)
@available(watchOS 2.0, *)
func CGContextSetStrokeColorWithColor(c: CGContext?, _ color: CGColor?)

/** Color space functions. **/
@available(watchOS 2.0, *)
func CGContextSetFillColorSpace(c: CGContext?, _ space: CGColorSpace?)
@available(watchOS 2.0, *)
func CGContextSetStrokeColorSpace(c: CGContext?, _ space: CGColorSpace?)

/** Color functions. **/
@available(watchOS 2.0, *)
func CGContextSetFillColor(c: CGContext?, _ components: UnsafePointer<CGFloat>)
@available(watchOS 2.0, *)
func CGContextSetStrokeColor(c: CGContext?, _ components: UnsafePointer<CGFloat>)

/** Pattern functions. **/
@available(watchOS 2.0, *)
func CGContextSetFillPattern(c: CGContext?, _ pattern: CGPattern?, _ components: UnsafePointer<CGFloat>)
@available(watchOS 2.0, *)
func CGContextSetStrokePattern(c: CGContext?, _ pattern: CGPattern?, _ components: UnsafePointer<CGFloat>)
@available(watchOS 2.0, *)
func CGContextSetPatternPhase(c: CGContext?, _ phase: CGSize)

/** Color convenience functions. **/
@available(watchOS 2.0, *)
func CGContextSetGrayFillColor(c: CGContext?, _ gray: CGFloat, _ alpha: CGFloat)
@available(watchOS 2.0, *)
func CGContextSetGrayStrokeColor(c: CGContext?, _ gray: CGFloat, _ alpha: CGFloat)
@available(watchOS 2.0, *)
func CGContextSetRGBFillColor(c: CGContext?, _ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat)
@available(watchOS 2.0, *)
func CGContextSetRGBStrokeColor(c: CGContext?, _ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat)
@available(watchOS 2.0, *)
func CGContextSetCMYKFillColor(c: CGContext?, _ cyan: CGFloat, _ magenta: CGFloat, _ yellow: CGFloat, _ black: CGFloat, _ alpha: CGFloat)
@available(watchOS 2.0, *)
func CGContextSetCMYKStrokeColor(c: CGContext?, _ cyan: CGFloat, _ magenta: CGFloat, _ yellow: CGFloat, _ black: CGFloat, _ alpha: CGFloat)

/** Rendering intent. **/
@available(watchOS 2.0, *)
func CGContextSetRenderingIntent(c: CGContext?, _ intent: CGColorRenderingIntent)

/** Image functions. **/
@available(watchOS 2.0, *)
func CGContextDrawImage(c: CGContext?, _ rect: CGRect, _ image: CGImage?)
@available(watchOS 2.0, *)
func CGContextDrawTiledImage(c: CGContext?, _ rect: CGRect, _ image: CGImage?)
@available(watchOS 2.0, *)
func CGContextGetInterpolationQuality(c: CGContext?) -> CGInterpolationQuality
@available(watchOS 2.0, *)
func CGContextSetInterpolationQuality(c: CGContext?, _ quality: CGInterpolationQuality)
@available(watchOS 2.0, *)
func CGContextSetShadowWithColor(c: CGContext?, _ offset: CGSize, _ blur: CGFloat, _ color: CGColor?)
@available(watchOS 2.0, *)
func CGContextSetShadow(c: CGContext?, _ offset: CGSize, _ blur: CGFloat)
@available(watchOS 2.0, *)
func CGContextDrawLinearGradient(c: CGContext?, _ gradient: CGGradient?, _ startPoint: CGPoint, _ endPoint: CGPoint, _ options: CGGradientDrawingOptions)
@available(watchOS 2.0, *)
func CGContextDrawRadialGradient(c: CGContext?, _ gradient: CGGradient?, _ startCenter: CGPoint, _ startRadius: CGFloat, _ endCenter: CGPoint, _ endRadius: CGFloat, _ options: CGGradientDrawingOptions)
@available(watchOS 2.0, *)
func CGContextDrawShading(c: CGContext?, _ shading: CGShading?)

/** Text functions. **/
@available(watchOS 2.0, *)
func CGContextSetCharacterSpacing(c: CGContext?, _ spacing: CGFloat)
@available(watchOS 2.0, *)
func CGContextSetTextPosition(c: CGContext?, _ x: CGFloat, _ y: CGFloat)
@available(watchOS 2.0, *)
func CGContextGetTextPosition(c: CGContext?) -> CGPoint
@available(watchOS 2.0, *)
func CGContextSetTextMatrix(c: CGContext?, _ t: CGAffineTransform)
@available(watchOS 2.0, *)
func CGContextGetTextMatrix(c: CGContext?) -> CGAffineTransform
@available(watchOS 2.0, *)
func CGContextSetTextDrawingMode(c: CGContext?, _ mode: CGTextDrawingMode)
@available(watchOS 2.0, *)
func CGContextSetFont(c: CGContext?, _ font: CGFont?)
@available(watchOS 2.0, *)
func CGContextSetFontSize(c: CGContext?, _ size: CGFloat)
@available(watchOS 2.0, *)
func CGContextShowGlyphsAtPositions(c: CGContext?, _ glyphs: UnsafePointer<CGGlyph>, _ Lpositions: UnsafePointer<CGPoint>, _ count: Int)

/** PDF functions. **/
@available(watchOS 2.0, *)
func CGContextDrawPDFPage(c: CGContext?, _ page: CGPDFPage?)

/** Output page functions. **/
@available(watchOS 2.0, *)
func CGContextBeginPage(c: CGContext?, _ mediaBox: UnsafePointer<CGRect>)
@available(watchOS 2.0, *)
func CGContextEndPage(c: CGContext?)
@available(watchOS 2.0, *)
func CGContextFlush(c: CGContext?)
@available(watchOS 2.0, *)
func CGContextSynchronize(c: CGContext?)
@available(watchOS 2.0, *)
func CGContextSetShouldAntialias(c: CGContext?, _ shouldAntialias: Bool)
@available(watchOS 2.0, *)
func CGContextSetAllowsAntialiasing(c: CGContext?, _ allowsAntialiasing: Bool)
@available(watchOS 2.0, *)
func CGContextSetShouldSmoothFonts(c: CGContext?, _ shouldSmoothFonts: Bool)
@available(watchOS 2.0, *)
func CGContextSetAllowsFontSmoothing(c: CGContext?, _ allowsFontSmoothing: Bool)
@available(watchOS 2.0, *)
func CGContextSetShouldSubpixelPositionFonts(c: CGContext?, _ shouldSubpixelPositionFonts: Bool)
@available(watchOS 2.0, *)
func CGContextSetAllowsFontSubpixelPositioning(c: CGContext?, _ allowsFontSubpixelPositioning: Bool)
@available(watchOS 2.0, *)
func CGContextSetShouldSubpixelQuantizeFonts(c: CGContext?, _ shouldSubpixelQuantizeFonts: Bool)
@available(watchOS 2.0, *)
func CGContextSetAllowsFontSubpixelQuantization(c: CGContext?, _ allowsFontSubpixelQuantization: Bool)

/** Transparency layer support. **/
@available(watchOS 2.0, *)
func CGContextBeginTransparencyLayer(c: CGContext?, _ auxiliaryInfo: CFDictionary?)
@available(watchOS 2.0, *)
func CGContextBeginTransparencyLayerWithRect(c: CGContext?, _ rect: CGRect, _ auxInfo: CFDictionary?)
@available(watchOS 2.0, *)
func CGContextEndTransparencyLayer(c: CGContext?)

/** User space to device space tranformations. **/
@available(watchOS 2.0, *)
func CGContextGetUserSpaceToDeviceSpaceTransform(c: CGContext?) -> CGAffineTransform
@available(watchOS 2.0, *)
func CGContextConvertPointToDeviceSpace(c: CGContext?, _ point: CGPoint) -> CGPoint
@available(watchOS 2.0, *)
func CGContextConvertPointToUserSpace(c: CGContext?, _ point: CGPoint) -> CGPoint
@available(watchOS 2.0, *)
func CGContextConvertSizeToDeviceSpace(c: CGContext?, _ size: CGSize) -> CGSize
@available(watchOS 2.0, *)
func CGContextConvertSizeToUserSpace(c: CGContext?, _ size: CGSize) -> CGSize
@available(watchOS 2.0, *)
func CGContextConvertRectToDeviceSpace(c: CGContext?, _ rect: CGRect) -> CGRect
@available(watchOS 2.0, *)
func CGContextConvertRectToUserSpace(c: CGContext?, _ rect: CGRect) -> CGRect
@available(watchOS, introduced=2.0, deprecated=2.0)
func CGContextSelectFont(c: CGContext?, _ name: UnsafePointer<Int8>, _ size: CGFloat, _ textEncoding: CGTextEncoding)
@available(watchOS, introduced=2.0, deprecated=2.0)
func CGContextShowText(c: CGContext?, _ string: UnsafePointer<Int8>, _ length: Int)
@available(watchOS, introduced=2.0, deprecated=2.0)
func CGContextShowTextAtPoint(c: CGContext?, _ x: CGFloat, _ y: CGFloat, _ string: UnsafePointer<Int8>, _ length: Int)
@available(watchOS, introduced=2.0, deprecated=2.0)
func CGContextShowGlyphs(c: CGContext?, _ g: UnsafePointer<CGGlyph>, _ count: Int)
@available(watchOS, introduced=2.0, deprecated=2.0)
func CGContextShowGlyphsAtPoint(c: CGContext?, _ x: CGFloat, _ y: CGFloat, _ glyphs: UnsafePointer<CGGlyph>, _ count: Int)
@available(watchOS, introduced=2.0, deprecated=2.0)
func CGContextShowGlyphsWithAdvances(c: CGContext?, _ glyphs: UnsafePointer<CGGlyph>, _ advances: UnsafePointer<CGSize>, _ count: Int)
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
@available(watchOS 2.0, *)
func CGDataConsumerGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
func CGDataConsumerCreate(info: UnsafeMutablePointer<Void>, _ cbks: UnsafePointer<CGDataConsumerCallbacks>) -> CGDataConsumer?
@available(watchOS 2.0, *)
func CGDataConsumerCreateWithURL(url: CFURL?) -> CGDataConsumer?
@available(watchOS 2.0, *)
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
@available(watchOS 2.0, *)
func CGDataProviderGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
func CGDataProviderCreateSequential(info: UnsafeMutablePointer<Void>, _ callbacks: UnsafePointer<CGDataProviderSequentialCallbacks>) -> CGDataProvider?
@available(watchOS 2.0, *)
func CGDataProviderCreateDirect(info: UnsafeMutablePointer<Void>, _ size: off_t, _ callbacks: UnsafePointer<CGDataProviderDirectCallbacks>) -> CGDataProvider?
typealias CGDataProviderReleaseDataCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<Void>, Int) -> Void
@available(watchOS 2.0, *)
func CGDataProviderCreateWithData(info: UnsafeMutablePointer<Void>, _ data: UnsafePointer<Void>, _ size: Int, _ releaseData: CGDataProviderReleaseDataCallback?) -> CGDataProvider?
@available(watchOS 2.0, *)
func CGDataProviderCreateWithCFData(data: CFData?) -> CGDataProvider?
@available(watchOS 2.0, *)
func CGDataProviderCreateWithURL(url: CFURL?) -> CGDataProvider?
@available(watchOS 2.0, *)
func CGDataProviderCreateWithFilename(filename: UnsafePointer<Int8>) -> CGDataProvider?
@available(watchOS 2.0, *)
func CGDataProviderCopyData(provider: CGDataProvider?) -> CFData?
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
@available(watchOS 2.0, *)
func CGFontGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
func CGFontCreateWithDataProvider(provider: CGDataProvider?) -> CGFont?
@available(watchOS 2.0, *)
func CGFontCreateWithFontName(name: CFString?) -> CGFont?
@available(watchOS 2.0, *)
func CGFontCreateCopyWithVariations(font: CGFont?, _ variations: CFDictionary?) -> CGFont?
@available(watchOS 2.0, *)
func CGFontGetNumberOfGlyphs(font: CGFont?) -> Int
@available(watchOS 2.0, *)
func CGFontGetUnitsPerEm(font: CGFont?) -> Int32
@available(watchOS 2.0, *)
func CGFontCopyPostScriptName(font: CGFont?) -> CFString?
@available(watchOS 2.0, *)
func CGFontCopyFullName(font: CGFont?) -> CFString?
@available(watchOS 2.0, *)
func CGFontGetAscent(font: CGFont?) -> Int32
@available(watchOS 2.0, *)
func CGFontGetDescent(font: CGFont?) -> Int32
@available(watchOS 2.0, *)
func CGFontGetLeading(font: CGFont?) -> Int32
@available(watchOS 2.0, *)
func CGFontGetCapHeight(font: CGFont?) -> Int32
@available(watchOS 2.0, *)
func CGFontGetXHeight(font: CGFont?) -> Int32
@available(watchOS 2.0, *)
func CGFontGetFontBBox(font: CGFont?) -> CGRect
@available(watchOS 2.0, *)
func CGFontGetItalicAngle(font: CGFont?) -> CGFloat
@available(watchOS 2.0, *)
func CGFontGetStemV(font: CGFont?) -> CGFloat
@available(watchOS 2.0, *)
func CGFontCopyVariationAxes(font: CGFont?) -> CFArray?
@available(watchOS 2.0, *)
func CGFontCopyVariations(font: CGFont?) -> CFDictionary?
@available(watchOS 2.0, *)
func CGFontGetGlyphAdvances(font: CGFont?, _ glyphs: UnsafePointer<CGGlyph>, _ count: Int, _ advances: UnsafeMutablePointer<Int32>) -> Bool
@available(watchOS 2.0, *)
func CGFontGetGlyphBBoxes(font: CGFont?, _ glyphs: UnsafePointer<CGGlyph>, _ count: Int, _ bboxes: UnsafeMutablePointer<CGRect>) -> Bool
@available(watchOS 2.0, *)
func CGFontGetGlyphWithGlyphName(font: CGFont?, _ name: CFString?) -> CGGlyph
@available(watchOS 2.0, *)
func CGFontCopyGlyphNameForGlyph(font: CGFont?, _ glyph: CGGlyph) -> CFString?
@available(watchOS 2.0, *)
func CGFontCanCreatePostScriptSubset(font: CGFont?, _ format: CGFontPostScriptFormat) -> Bool
@available(watchOS 2.0, *)
func CGFontCreatePostScriptSubset(font: CGFont?, _ subsetName: CFString?, _ format: CGFontPostScriptFormat, _ glyphs: UnsafePointer<CGGlyph>, _ count: Int, _ encoding: UnsafePointer<CGGlyph>) -> CFData?
@available(watchOS 2.0, *)
func CGFontCreatePostScriptEncoding(font: CGFont?, _ encoding: UnsafePointer<CGGlyph>) -> CFData?
@available(watchOS 2.0, *)
func CGFontCopyTableTags(font: CGFont?) -> CFArray?
@available(watchOS 2.0, *)
func CGFontCopyTableForTag(font: CGFont?, _ tag: UInt32) -> CFData?

/*** Keys for the font variation axis dictionary. ***/
@available(watchOS 2.0, *)
let kCGFontVariationAxisName: CFString
@available(watchOS 2.0, *)
let kCGFontVariationAxisMinValue: CFString
@available(watchOS 2.0, *)
let kCGFontVariationAxisMaxValue: CFString
@available(watchOS 2.0, *)
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
@available(watchOS 2.0, *)
func CGFunctionGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
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
@available(watchOS 2.0, *)
let CGPointZero: CGPoint
@available(watchOS 2.0, *)
let CGSizeZero: CGSize
@available(watchOS 2.0, *)
let CGRectZero: CGRect
@available(watchOS 2.0, *)
let CGRectNull: CGRect
@available(watchOS 2.0, *)
let CGRectInfinite: CGRect
@available(watchOS 2.0, *)
func CGRectGetMinX(rect: CGRect) -> CGFloat
@available(watchOS 2.0, *)
func CGRectGetMidX(rect: CGRect) -> CGFloat
@available(watchOS 2.0, *)
func CGRectGetMaxX(rect: CGRect) -> CGFloat
@available(watchOS 2.0, *)
func CGRectGetMinY(rect: CGRect) -> CGFloat
@available(watchOS 2.0, *)
func CGRectGetMidY(rect: CGRect) -> CGFloat
@available(watchOS 2.0, *)
func CGRectGetMaxY(rect: CGRect) -> CGFloat
@available(watchOS 2.0, *)
func CGRectGetWidth(rect: CGRect) -> CGFloat
@available(watchOS 2.0, *)
func CGRectGetHeight(rect: CGRect) -> CGFloat
@available(watchOS 2.0, *)
func CGPointEqualToPoint(point1: CGPoint, _ point2: CGPoint) -> Bool
@available(watchOS 2.0, *)
func CGSizeEqualToSize(size1: CGSize, _ size2: CGSize) -> Bool
@available(watchOS 2.0, *)
func CGRectEqualToRect(rect1: CGRect, _ rect2: CGRect) -> Bool
@available(watchOS 2.0, *)
func CGRectStandardize(rect: CGRect) -> CGRect
@available(watchOS 2.0, *)
func CGRectIsEmpty(rect: CGRect) -> Bool
@available(watchOS 2.0, *)
func CGRectIsNull(rect: CGRect) -> Bool
@available(watchOS 2.0, *)
func CGRectIsInfinite(rect: CGRect) -> Bool
@available(watchOS 2.0, *)
func CGRectInset(rect: CGRect, _ dx: CGFloat, _ dy: CGFloat) -> CGRect
@available(watchOS 2.0, *)
func CGRectIntegral(rect: CGRect) -> CGRect
@available(watchOS 2.0, *)
func CGRectUnion(r1: CGRect, _ r2: CGRect) -> CGRect
@available(watchOS 2.0, *)
func CGRectIntersection(r1: CGRect, _ r2: CGRect) -> CGRect
@available(watchOS 2.0, *)
func CGRectOffset(rect: CGRect, _ dx: CGFloat, _ dy: CGFloat) -> CGRect
@available(watchOS 2.0, *)
func CGRectDivide(rect: CGRect, _ slice: UnsafeMutablePointer<CGRect>, _ remainder: UnsafeMutablePointer<CGRect>, _ amount: CGFloat, _ edge: CGRectEdge)
@available(watchOS 2.0, *)
func CGRectContainsPoint(rect: CGRect, _ point: CGPoint) -> Bool
@available(watchOS 2.0, *)
func CGRectContainsRect(rect1: CGRect, _ rect2: CGRect) -> Bool
@available(watchOS 2.0, *)
func CGRectIntersectsRect(rect1: CGRect, _ rect2: CGRect) -> Bool

/*** Persistent representations. ***/
@available(watchOS 2.0, *)
func CGPointCreateDictionaryRepresentation(point: CGPoint) -> CFDictionary
@available(watchOS 2.0, *)
func CGPointMakeWithDictionaryRepresentation(dict: CFDictionary?, _ point: UnsafeMutablePointer<CGPoint>) -> Bool
@available(watchOS 2.0, *)
func CGSizeCreateDictionaryRepresentation(size: CGSize) -> CFDictionary
@available(watchOS 2.0, *)
func CGSizeMakeWithDictionaryRepresentation(dict: CFDictionary?, _ size: UnsafeMutablePointer<CGSize>) -> Bool
@available(watchOS 2.0, *)
func CGRectCreateDictionaryRepresentation(_: CGRect) -> CFDictionary
@available(watchOS 2.0, *)
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
@available(watchOS 2.0, *)
func CGGradientGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
func CGGradientCreateWithColorComponents(space: CGColorSpace?, _ components: UnsafePointer<CGFloat>, _ locations: UnsafePointer<CGFloat>, _ count: Int) -> CGGradient?
@available(watchOS 2.0, *)
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
@available(watchOS 2.0, *)
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
@available(watchOS 2.0, *)
func CGImageGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
func CGImageCreate(width: Int, _ height: Int, _ bitsPerComponent: Int, _ bitsPerPixel: Int, _ bytesPerRow: Int, _ space: CGColorSpace?, _ bitmapInfo: CGBitmapInfo, _ provider: CGDataProvider?, _ decode: UnsafePointer<CGFloat>, _ shouldInterpolate: Bool, _ intent: CGColorRenderingIntent) -> CGImage?
@available(watchOS 2.0, *)
func CGImageMaskCreate(width: Int, _ height: Int, _ bitsPerComponent: Int, _ bitsPerPixel: Int, _ bytesPerRow: Int, _ provider: CGDataProvider?, _ decode: UnsafePointer<CGFloat>, _ shouldInterpolate: Bool) -> CGImage?
@available(watchOS 2.0, *)
func CGImageCreateCopy(image: CGImage?) -> CGImage?
@available(watchOS 2.0, *)
func CGImageCreateWithJPEGDataProvider(source: CGDataProvider?, _ decode: UnsafePointer<CGFloat>, _ shouldInterpolate: Bool, _ intent: CGColorRenderingIntent) -> CGImage?
@available(watchOS 2.0, *)
func CGImageCreateWithPNGDataProvider(source: CGDataProvider?, _ decode: UnsafePointer<CGFloat>, _ shouldInterpolate: Bool, _ intent: CGColorRenderingIntent) -> CGImage?
@available(watchOS 2.0, *)
func CGImageCreateWithImageInRect(image: CGImage?, _ rect: CGRect) -> CGImage?
@available(watchOS 2.0, *)
func CGImageCreateWithMask(image: CGImage?, _ mask: CGImage?) -> CGImage?
@available(watchOS 2.0, *)
func CGImageCreateWithMaskingColors(image: CGImage?, _ components: UnsafePointer<CGFloat>) -> CGImage?
@available(watchOS 2.0, *)
func CGImageCreateCopyWithColorSpace(image: CGImage?, _ space: CGColorSpace?) -> CGImage?
@available(watchOS 2.0, *)
func CGImageIsMask(image: CGImage?) -> Bool
@available(watchOS 2.0, *)
func CGImageGetWidth(image: CGImage?) -> Int
@available(watchOS 2.0, *)
func CGImageGetHeight(image: CGImage?) -> Int
@available(watchOS 2.0, *)
func CGImageGetBitsPerComponent(image: CGImage?) -> Int
@available(watchOS 2.0, *)
func CGImageGetBitsPerPixel(image: CGImage?) -> Int
@available(watchOS 2.0, *)
func CGImageGetBytesPerRow(image: CGImage?) -> Int
@available(watchOS 2.0, *)
func CGImageGetColorSpace(image: CGImage?) -> CGColorSpace?
@available(watchOS 2.0, *)
func CGImageGetAlphaInfo(image: CGImage?) -> CGImageAlphaInfo
@available(watchOS 2.0, *)
func CGImageGetDataProvider(image: CGImage?) -> CGDataProvider?
@available(watchOS 2.0, *)
func CGImageGetDecode(image: CGImage?) -> UnsafePointer<CGFloat>
@available(watchOS 2.0, *)
func CGImageGetShouldInterpolate(image: CGImage?) -> Bool
@available(watchOS 2.0, *)
func CGImageGetRenderingIntent(image: CGImage?) -> CGColorRenderingIntent
@available(watchOS 2.0, *)
func CGImageGetBitmapInfo(image: CGImage?) -> CGBitmapInfo
@available(watchOS 2.0, *)
func CGImageGetUTType(image: CGImage?) -> CFString?
class CGLayer {
}
typealias CGLayerRef = CGLayer
@available(watchOS 2.0, *)
func CGLayerCreateWithContext(context: CGContext?, _ size: CGSize, _ auxiliaryInfo: CFDictionary?) -> CGLayer?
@available(watchOS 2.0, *)
func CGLayerGetSize(layer: CGLayer?) -> CGSize
@available(watchOS 2.0, *)
func CGLayerGetContext(layer: CGLayer?) -> CGContext?
@available(watchOS 2.0, *)
func CGContextDrawLayerInRect(context: CGContext?, _ rect: CGRect, _ layer: CGLayer?)
@available(watchOS 2.0, *)
func CGContextDrawLayerAtPoint(context: CGContext?, _ point: CGPoint, _ layer: CGLayer?)
@available(watchOS 2.0, *)
func CGLayerGetTypeID() -> CFTypeID
typealias CGPDFArrayRef = COpaquePointer
@available(watchOS 2.0, *)
func CGPDFArrayGetCount(array: CGPDFArrayRef) -> Int
@available(watchOS 2.0, *)
func CGPDFArrayGetObject(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFObjectRef>) -> Bool
@available(watchOS 2.0, *)
func CGPDFArrayGetNull(array: CGPDFArrayRef, _ index: Int) -> Bool
@available(watchOS 2.0, *)
func CGPDFArrayGetBoolean(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFBoolean>) -> Bool
@available(watchOS 2.0, *)
func CGPDFArrayGetInteger(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFInteger>) -> Bool
@available(watchOS 2.0, *)
func CGPDFArrayGetNumber(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFReal>) -> Bool
@available(watchOS 2.0, *)
func CGPDFArrayGetName(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<UnsafePointer<Int8>>) -> Bool
@available(watchOS 2.0, *)
func CGPDFArrayGetString(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFStringRef>) -> Bool
@available(watchOS 2.0, *)
func CGPDFArrayGetArray(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFArrayRef>) -> Bool
@available(watchOS 2.0, *)
func CGPDFArrayGetDictionary(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFDictionaryRef>) -> Bool
@available(watchOS 2.0, *)
func CGPDFArrayGetStream(array: CGPDFArrayRef, _ index: Int, _ value: UnsafeMutablePointer<CGPDFStreamRef>) -> Bool
typealias CGPDFContentStreamRef = COpaquePointer
@available(watchOS 2.0, *)
func CGPDFContentStreamCreateWithPage(page: CGPDFPage!) -> CGPDFContentStreamRef
@available(watchOS 2.0, *)
func CGPDFContentStreamCreateWithStream(stream: CGPDFStreamRef, _ streamResources: CGPDFDictionaryRef, _ parent: CGPDFContentStreamRef) -> CGPDFContentStreamRef
@available(watchOS 2.0, *)
func CGPDFContentStreamRetain(cs: CGPDFContentStreamRef) -> CGPDFContentStreamRef
@available(watchOS 2.0, *)
func CGPDFContentStreamRelease(cs: CGPDFContentStreamRef)
@available(watchOS 2.0, *)
func CGPDFContentStreamGetStreams(cs: CGPDFContentStreamRef) -> CFArray!
@available(watchOS 2.0, *)
func CGPDFContentStreamGetResource(cs: CGPDFContentStreamRef, _ category: UnsafePointer<Int8>, _ name: UnsafePointer<Int8>) -> CGPDFObjectRef
@available(watchOS 2.0, *)
func CGPDFContextCreate(consumer: CGDataConsumer?, _ mediaBox: UnsafePointer<CGRect>, _ auxiliaryInfo: CFDictionary?) -> CGContext?
@available(watchOS 2.0, *)
func CGPDFContextCreateWithURL(url: CFURL?, _ mediaBox: UnsafePointer<CGRect>, _ auxiliaryInfo: CFDictionary?) -> CGContext?
@available(watchOS 2.0, *)
func CGPDFContextClose(context: CGContext?)
@available(watchOS 2.0, *)
func CGPDFContextBeginPage(context: CGContext?, _ pageInfo: CFDictionary?)
@available(watchOS 2.0, *)
func CGPDFContextEndPage(context: CGContext?)
@available(watchOS 2.0, *)
func CGPDFContextAddDocumentMetadata(context: CGContext?, _ metadata: CFData?)
@available(watchOS 2.0, *)
func CGPDFContextSetURLForRect(context: CGContext?, _ url: CFURL, _ rect: CGRect)
@available(watchOS 2.0, *)
func CGPDFContextAddDestinationAtPoint(context: CGContext?, _ name: CFString, _ point: CGPoint)
@available(watchOS 2.0, *)
func CGPDFContextSetDestinationForRect(context: CGContext?, _ name: CFString, _ rect: CGRect)
@available(watchOS 2.0, *)
let kCGPDFContextMediaBox: CFString
@available(watchOS 2.0, *)
let kCGPDFContextCropBox: CFString
@available(watchOS 2.0, *)
let kCGPDFContextBleedBox: CFString
@available(watchOS 2.0, *)
let kCGPDFContextTrimBox: CFString
@available(watchOS 2.0, *)
let kCGPDFContextArtBox: CFString
@available(watchOS 2.0, *)
let kCGPDFContextTitle: CFString
@available(watchOS 2.0, *)
let kCGPDFContextAuthor: CFString
@available(watchOS 2.0, *)
let kCGPDFContextSubject: CFString
@available(watchOS 2.0, *)
let kCGPDFContextKeywords: CFString
@available(watchOS 2.0, *)
let kCGPDFContextCreator: CFString
@available(watchOS 2.0, *)
let kCGPDFContextOwnerPassword: CFString
@available(watchOS 2.0, *)
let kCGPDFContextUserPassword: CFString
@available(watchOS 2.0, *)
let kCGPDFContextEncryptionKeyLength: CFString
@available(watchOS 2.0, *)
let kCGPDFContextAllowsPrinting: CFString
@available(watchOS 2.0, *)
let kCGPDFContextAllowsCopying: CFString
typealias CGPDFDictionaryRef = COpaquePointer
@available(watchOS 2.0, *)
func CGPDFDictionaryGetCount(dict: CGPDFDictionaryRef) -> Int
@available(watchOS 2.0, *)
func CGPDFDictionaryGetObject(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFObjectRef>) -> Bool
@available(watchOS 2.0, *)
func CGPDFDictionaryGetBoolean(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFBoolean>) -> Bool
@available(watchOS 2.0, *)
func CGPDFDictionaryGetInteger(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFInteger>) -> Bool
@available(watchOS 2.0, *)
func CGPDFDictionaryGetNumber(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFReal>) -> Bool
@available(watchOS 2.0, *)
func CGPDFDictionaryGetName(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<UnsafePointer<Int8>>) -> Bool
@available(watchOS 2.0, *)
func CGPDFDictionaryGetString(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFStringRef>) -> Bool
@available(watchOS 2.0, *)
func CGPDFDictionaryGetArray(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFArrayRef>) -> Bool
@available(watchOS 2.0, *)
func CGPDFDictionaryGetDictionary(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFDictionaryRef>) -> Bool
@available(watchOS 2.0, *)
func CGPDFDictionaryGetStream(dict: CGPDFDictionaryRef, _ key: UnsafePointer<Int8>, _ value: UnsafeMutablePointer<CGPDFStreamRef>) -> Bool
typealias CGPDFDictionaryApplierFunction = @convention(c) (UnsafePointer<Int8>, CGPDFObjectRef, UnsafeMutablePointer<Void>) -> Void
@available(watchOS 2.0, *)
func CGPDFDictionaryApplyFunction(dict: CGPDFDictionaryRef, _ function: CGPDFDictionaryApplierFunction?, _ info: UnsafeMutablePointer<Void>)
class CGPDFDocument {
}
typealias CGPDFDocumentRef = CGPDFDocument
@available(watchOS 2.0, *)
func CGPDFDocumentCreateWithProvider(provider: CGDataProvider?) -> CGPDFDocument?
@available(watchOS 2.0, *)
func CGPDFDocumentCreateWithURL(url: CFURL?) -> CGPDFDocument?
@available(watchOS 2.0, *)
func CGPDFDocumentGetVersion(document: CGPDFDocument?, _ majorVersion: UnsafeMutablePointer<Int32>, _ minorVersion: UnsafeMutablePointer<Int32>)
@available(watchOS 2.0, *)
func CGPDFDocumentIsEncrypted(document: CGPDFDocument?) -> Bool
@available(watchOS 2.0, *)
func CGPDFDocumentUnlockWithPassword(document: CGPDFDocument?, _ password: UnsafePointer<Int8>) -> Bool
@available(watchOS 2.0, *)
func CGPDFDocumentIsUnlocked(document: CGPDFDocument?) -> Bool
@available(watchOS 2.0, *)
func CGPDFDocumentAllowsPrinting(document: CGPDFDocument?) -> Bool
@available(watchOS 2.0, *)
func CGPDFDocumentAllowsCopying(document: CGPDFDocument?) -> Bool
@available(watchOS 2.0, *)
func CGPDFDocumentGetNumberOfPages(document: CGPDFDocument?) -> Int
@available(watchOS 2.0, *)
func CGPDFDocumentGetPage(document: CGPDFDocument?, _ pageNumber: Int) -> CGPDFPage?
@available(watchOS 2.0, *)
func CGPDFDocumentGetCatalog(document: CGPDFDocument?) -> CGPDFDictionaryRef
@available(watchOS 2.0, *)
func CGPDFDocumentGetInfo(document: CGPDFDocument?) -> CGPDFDictionaryRef
@available(watchOS 2.0, *)
func CGPDFDocumentGetID(document: CGPDFDocument?) -> CGPDFArrayRef
@available(watchOS 2.0, *)
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
@available(watchOS 2.0, *)
func CGPDFObjectGetType(object: CGPDFObjectRef) -> CGPDFObjectType
@available(watchOS 2.0, *)
func CGPDFObjectGetValue(object: CGPDFObjectRef, _ type: CGPDFObjectType, _ value: UnsafeMutablePointer<Void>) -> Bool
typealias CGPDFOperatorTableRef = COpaquePointer
typealias CGPDFOperatorCallback = @convention(c) (CGPDFScannerRef, UnsafeMutablePointer<Void>) -> Void
@available(watchOS 2.0, *)
func CGPDFOperatorTableCreate() -> CGPDFOperatorTableRef
@available(watchOS 2.0, *)
func CGPDFOperatorTableRetain(table: CGPDFOperatorTableRef) -> CGPDFOperatorTableRef
@available(watchOS 2.0, *)
func CGPDFOperatorTableRelease(table: CGPDFOperatorTableRef)
@available(watchOS 2.0, *)
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
@available(watchOS 2.0, *)
func CGPDFPageGetDocument(page: CGPDFPage?) -> CGPDFDocument?
@available(watchOS 2.0, *)
func CGPDFPageGetPageNumber(page: CGPDFPage?) -> Int
@available(watchOS 2.0, *)
func CGPDFPageGetBoxRect(page: CGPDFPage?, _ box: CGPDFBox) -> CGRect
@available(watchOS 2.0, *)
func CGPDFPageGetRotationAngle(page: CGPDFPage?) -> Int32
@available(watchOS 2.0, *)
func CGPDFPageGetDrawingTransform(page: CGPDFPage?, _ box: CGPDFBox, _ rect: CGRect, _ rotate: Int32, _ preserveAspectRatio: Bool) -> CGAffineTransform
@available(watchOS 2.0, *)
func CGPDFPageGetDictionary(page: CGPDFPage?) -> CGPDFDictionaryRef
@available(watchOS 2.0, *)
func CGPDFPageGetTypeID() -> CFTypeID
typealias CGPDFScannerRef = COpaquePointer
@available(watchOS 2.0, *)
func CGPDFScannerCreate(cs: CGPDFContentStreamRef, _ table: CGPDFOperatorTableRef, _ info: UnsafeMutablePointer<Void>) -> CGPDFScannerRef
@available(watchOS 2.0, *)
func CGPDFScannerRetain(scanner: CGPDFScannerRef) -> CGPDFScannerRef
@available(watchOS 2.0, *)
func CGPDFScannerRelease(scanner: CGPDFScannerRef)
@available(watchOS 2.0, *)
func CGPDFScannerScan(scanner: CGPDFScannerRef) -> Bool
@available(watchOS 2.0, *)
func CGPDFScannerGetContentStream(scanner: CGPDFScannerRef) -> CGPDFContentStreamRef
@available(watchOS 2.0, *)
func CGPDFScannerPopObject(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFObjectRef>) -> Bool
@available(watchOS 2.0, *)
func CGPDFScannerPopBoolean(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFBoolean>) -> Bool
@available(watchOS 2.0, *)
func CGPDFScannerPopInteger(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFInteger>) -> Bool
@available(watchOS 2.0, *)
func CGPDFScannerPopNumber(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFReal>) -> Bool
@available(watchOS 2.0, *)
func CGPDFScannerPopName(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<UnsafePointer<Int8>>) -> Bool
@available(watchOS 2.0, *)
func CGPDFScannerPopString(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFStringRef>) -> Bool
@available(watchOS 2.0, *)
func CGPDFScannerPopArray(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFArrayRef>) -> Bool
@available(watchOS 2.0, *)
func CGPDFScannerPopDictionary(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFDictionaryRef>) -> Bool
@available(watchOS 2.0, *)
func CGPDFScannerPopStream(scanner: CGPDFScannerRef, _ value: UnsafeMutablePointer<CGPDFStreamRef>) -> Bool
typealias CGPDFStreamRef = COpaquePointer
enum CGPDFDataFormat : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Raw
  case JPEGEncoded
  case JPEG2000
}
@available(watchOS 2.0, *)
func CGPDFStreamGetDictionary(stream: CGPDFStreamRef) -> CGPDFDictionaryRef
@available(watchOS 2.0, *)
func CGPDFStreamCopyData(stream: CGPDFStreamRef, _ format: UnsafeMutablePointer<CGPDFDataFormat>) -> CFData?
typealias CGPDFStringRef = COpaquePointer
@available(watchOS 2.0, *)
func CGPDFStringGetLength(string: CGPDFStringRef) -> Int
@available(watchOS 2.0, *)
func CGPDFStringGetBytePtr(string: CGPDFStringRef) -> UnsafePointer<UInt8>
@available(watchOS 2.0, *)
func CGPDFStringCopyTextString(string: CGPDFStringRef) -> CFString?
@available(watchOS 2.0, *)
func CGPDFStringCopyDate(string: CGPDFStringRef) -> CFDate?
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
@available(watchOS 2.0, *)
func CGPathGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
func CGPathCreateMutable() -> CGMutablePath
@available(watchOS 2.0, *)
func CGPathCreateCopy(path: CGPath?) -> CGPath?
@available(watchOS 2.0, *)
func CGPathCreateCopyByTransformingPath(path: CGPath?, _ transform: UnsafePointer<CGAffineTransform>) -> CGPath?
@available(watchOS 2.0, *)
func CGPathCreateMutableCopy(path: CGPath?) -> CGMutablePath?
@available(watchOS 2.0, *)
func CGPathCreateMutableCopyByTransformingPath(path: CGPath?, _ transform: UnsafePointer<CGAffineTransform>) -> CGMutablePath?
@available(watchOS 2.0, *)
func CGPathCreateWithRect(rect: CGRect, _ transform: UnsafePointer<CGAffineTransform>) -> CGPath
@available(watchOS 2.0, *)
func CGPathCreateWithEllipseInRect(rect: CGRect, _ transform: UnsafePointer<CGAffineTransform>) -> CGPath
@available(watchOS 2.0, *)
func CGPathCreateWithRoundedRect(rect: CGRect, _ cornerWidth: CGFloat, _ cornerHeight: CGFloat, _ transform: UnsafePointer<CGAffineTransform>) -> CGPath
@available(watchOS 2.0, *)
func CGPathAddRoundedRect(path: CGMutablePath?, _ transform: UnsafePointer<CGAffineTransform>, _ rect: CGRect, _ cornerWidth: CGFloat, _ cornerHeight: CGFloat)
@available(watchOS 2.0, *)
func CGPathCreateCopyByDashingPath(path: CGPath?, _ transform: UnsafePointer<CGAffineTransform>, _ phase: CGFloat, _ lengths: UnsafePointer<CGFloat>, _ count: Int) -> CGPath?
@available(watchOS 2.0, *)
func CGPathCreateCopyByStrokingPath(path: CGPath?, _ transform: UnsafePointer<CGAffineTransform>, _ lineWidth: CGFloat, _ lineCap: CGLineCap, _ lineJoin: CGLineJoin, _ miterLimit: CGFloat) -> CGPath?
@available(watchOS 2.0, *)
func CGPathEqualToPath(path1: CGPath?, _ path2: CGPath?) -> Bool

/*** Path construction functions. ***/
@available(watchOS 2.0, *)
func CGPathMoveToPoint(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ x: CGFloat, _ y: CGFloat)
@available(watchOS 2.0, *)
func CGPathAddLineToPoint(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ x: CGFloat, _ y: CGFloat)
@available(watchOS 2.0, *)
func CGPathAddQuadCurveToPoint(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ cpx: CGFloat, _ cpy: CGFloat, _ x: CGFloat, _ y: CGFloat)
@available(watchOS 2.0, *)
func CGPathAddCurveToPoint(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ cp1x: CGFloat, _ cp1y: CGFloat, _ cp2x: CGFloat, _ cp2y: CGFloat, _ x: CGFloat, _ y: CGFloat)
@available(watchOS 2.0, *)
func CGPathCloseSubpath(path: CGMutablePath?)

/*** Path construction convenience functions. ***/
@available(watchOS 2.0, *)
func CGPathAddRect(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ rect: CGRect)
@available(watchOS 2.0, *)
func CGPathAddRects(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ rects: UnsafePointer<CGRect>, _ count: Int)
@available(watchOS 2.0, *)
func CGPathAddLines(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ points: UnsafePointer<CGPoint>, _ count: Int)
@available(watchOS 2.0, *)
func CGPathAddEllipseInRect(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ rect: CGRect)
@available(watchOS 2.0, *)
func CGPathAddRelativeArc(path: CGMutablePath?, _ matrix: UnsafePointer<CGAffineTransform>, _ x: CGFloat, _ y: CGFloat, _ radius: CGFloat, _ startAngle: CGFloat, _ delta: CGFloat)
@available(watchOS 2.0, *)
func CGPathAddArc(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ x: CGFloat, _ y: CGFloat, _ radius: CGFloat, _ startAngle: CGFloat, _ endAngle: CGFloat, _ clockwise: Bool)
@available(watchOS 2.0, *)
func CGPathAddArcToPoint(path: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ x1: CGFloat, _ y1: CGFloat, _ x2: CGFloat, _ y2: CGFloat, _ radius: CGFloat)
@available(watchOS 2.0, *)
func CGPathAddPath(path1: CGMutablePath?, _ m: UnsafePointer<CGAffineTransform>, _ path2: CGPath?)

/*** Path information functions. ***/
@available(watchOS 2.0, *)
func CGPathIsEmpty(path: CGPath?) -> Bool
@available(watchOS 2.0, *)
func CGPathIsRect(path: CGPath?, _ rect: UnsafeMutablePointer<CGRect>) -> Bool
@available(watchOS 2.0, *)
func CGPathGetCurrentPoint(path: CGPath?) -> CGPoint
@available(watchOS 2.0, *)
func CGPathGetBoundingBox(path: CGPath?) -> CGRect
@available(watchOS 2.0, *)
func CGPathGetPathBoundingBox(path: CGPath?) -> CGRect
@available(watchOS 2.0, *)
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
@available(watchOS 2.0, *)
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
@available(watchOS 2.0, *)
func CGPatternGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
func CGPatternCreate(info: UnsafeMutablePointer<Void>, _ bounds: CGRect, _ matrix: CGAffineTransform, _ xStep: CGFloat, _ yStep: CGFloat, _ tiling: CGPatternTiling, _ isColored: Bool, _ callbacks: UnsafePointer<CGPatternCallbacks>) -> CGPattern?
class CGShading {
}
typealias CGShadingRef = CGShading
@available(watchOS 2.0, *)
func CGShadingGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
func CGShadingCreateAxial(space: CGColorSpace?, _ start: CGPoint, _ end: CGPoint, _ function: CGFunction?, _ extendStart: Bool, _ extendEnd: Bool) -> CGShading?
@available(watchOS 2.0, *)
func CGShadingCreateRadial(space: CGColorSpace?, _ start: CGPoint, _ startRadius: CGFloat, _ end: CGPoint, _ endRadius: CGFloat, _ function: CGFunction?, _ extendStart: Bool, _ extendEnd: Bool) -> CGShading?
