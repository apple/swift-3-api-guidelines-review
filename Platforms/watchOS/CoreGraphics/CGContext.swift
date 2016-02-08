
class CGContext {
}
enum CGPathDrawingMode : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case fill
  case eoFill
  case stroke
  case fillStroke
  case eoFillStroke
}
enum CGTextDrawingMode : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case fill
  case stroke
  case fillStroke
  case invisible
  case fillClip
  case strokeClip
  case fillStrokeClip
  case clip
}
@available(watchOS, introduced=2.0, deprecated=2.0)
enum CGTextEncoding : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case encodingFontSpecific
  case encodingMacRoman
}
enum CGInterpolationQuality : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case `default`
  case none
  case low
  case medium
  case high
}
enum CGBlendMode : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case normal
  case multiply
  case screen
  case overlay
  case darken
  case lighten
  case colorDodge
  case colorBurn
  case softLight
  case hardLight
  case difference
  case exclusion
  case hue
  case saturation
  case color
  case luminosity
  case clear
  case copy
  case sourceIn
  case sourceOut
  case sourceAtop
  case destinationOver
  case destinationIn
  case destinationOut
  case destinationAtop
  case XOR
  case plusDarker
  case plusLighter
}
@available(watchOS 2.0, *)
func CGContextGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
func CGContextSaveGState(c: CGContext?)
@available(watchOS 2.0, *)
func CGContextRestoreGState(c: CGContext?)
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
@available(watchOS 2.0, *)
func CGContextDrawPath(c: CGContext?, _ mode: CGPathDrawingMode)
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
@available(watchOS 2.0, *)
func CGContextClip(c: CGContext?)
@available(watchOS 2.0, *)
func CGContextEOClip(c: CGContext?)
@available(watchOS 2.0, *)
func CGContextClipToMask(c: CGContext?, _ rect: CGRect, _ mask: CGImage?)
@available(watchOS 2.0, *)
func CGContextGetClipBoundingBox(c: CGContext?) -> CGRect
@available(watchOS 2.0, *)
func CGContextClipToRect(c: CGContext?, _ rect: CGRect)
@available(watchOS 2.0, *)
func CGContextClipToRects(c: CGContext?, _ rects: UnsafePointer<CGRect>, _ count: Int)
@available(watchOS 2.0, *)
func CGContextSetFillColorWithColor(c: CGContext?, _ color: CGColor?)
@available(watchOS 2.0, *)
func CGContextSetStrokeColorWithColor(c: CGContext?, _ color: CGColor?)
@available(watchOS 2.0, *)
func CGContextSetFillColorSpace(c: CGContext?, _ space: CGColorSpace?)
@available(watchOS 2.0, *)
func CGContextSetStrokeColorSpace(c: CGContext?, _ space: CGColorSpace?)
@available(watchOS 2.0, *)
func CGContextSetFillColor(c: CGContext?, _ components: UnsafePointer<CGFloat>)
@available(watchOS 2.0, *)
func CGContextSetStrokeColor(c: CGContext?, _ components: UnsafePointer<CGFloat>)
@available(watchOS 2.0, *)
func CGContextSetFillPattern(c: CGContext?, _ pattern: CGPattern?, _ components: UnsafePointer<CGFloat>)
@available(watchOS 2.0, *)
func CGContextSetStrokePattern(c: CGContext?, _ pattern: CGPattern?, _ components: UnsafePointer<CGFloat>)
@available(watchOS 2.0, *)
func CGContextSetPatternPhase(c: CGContext?, _ phase: CGSize)
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
@available(watchOS 2.0, *)
func CGContextSetRenderingIntent(c: CGContext?, _ intent: CGColorRenderingIntent)
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
@available(watchOS 2.0, *)
func CGContextDrawPDFPage(c: CGContext?, _ page: CGPDFPage?)
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
@available(watchOS 2.0, *)
func CGContextBeginTransparencyLayer(c: CGContext?, _ auxiliaryInfo: CFDictionary?)
@available(watchOS 2.0, *)
func CGContextBeginTransparencyLayerWithRect(c: CGContext?, _ rect: CGRect, _ auxInfo: CFDictionary?)
@available(watchOS 2.0, *)
func CGContextEndTransparencyLayer(c: CGContext?)
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
