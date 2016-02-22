
class CGContext {
}
enum CGPathDrawingMode : Int32 {
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  case fill
  case eoFill
  case stroke
  case fillStroke
  case eoFillStroke
}
enum CGTextDrawingMode : Int32 {
  init?(rawValue rawValue: Int32)
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
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  case encodingFontSpecific
  case encodingMacRoman
}
enum CGInterpolationQuality : Int32 {
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  case `default`
  case none
  case low
  case medium
  case high
}
enum CGBlendMode : Int32 {
  init?(rawValue rawValue: Int32)
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
func CGContextSaveGState(_ c: CGContext?)
@available(watchOS 2.0, *)
func CGContextRestoreGState(_ c: CGContext?)
@available(watchOS 2.0, *)
func CGContextScaleCTM(_ c: CGContext?, _ sx: CGFloat, _ sy: CGFloat)
@available(watchOS 2.0, *)
func CGContextTranslateCTM(_ c: CGContext?, _ tx: CGFloat, _ ty: CGFloat)
@available(watchOS 2.0, *)
func CGContextRotateCTM(_ c: CGContext?, _ angle: CGFloat)
@available(watchOS 2.0, *)
func CGContextConcatCTM(_ c: CGContext?, _ transform: CGAffineTransform)
@available(watchOS 2.0, *)
func CGContextGetCTM(_ c: CGContext?) -> CGAffineTransform
@available(watchOS 2.0, *)
func CGContextSetLineWidth(_ c: CGContext?, _ width: CGFloat)
@available(watchOS 2.0, *)
func CGContextSetLineCap(_ c: CGContext?, _ cap: CGLineCap)
@available(watchOS 2.0, *)
func CGContextSetLineJoin(_ c: CGContext?, _ join: CGLineJoin)
@available(watchOS 2.0, *)
func CGContextSetMiterLimit(_ c: CGContext?, _ limit: CGFloat)
@available(watchOS 2.0, *)
func CGContextSetLineDash(_ c: CGContext?, _ phase: CGFloat, _ lengths: UnsafePointer<CGFloat>, _ count: Int)
@available(watchOS 2.0, *)
func CGContextSetFlatness(_ c: CGContext?, _ flatness: CGFloat)
@available(watchOS 2.0, *)
func CGContextSetAlpha(_ c: CGContext?, _ alpha: CGFloat)
@available(watchOS 2.0, *)
func CGContextSetBlendMode(_ c: CGContext?, _ mode: CGBlendMode)
@available(watchOS 2.0, *)
func CGContextBeginPath(_ c: CGContext?)
@available(watchOS 2.0, *)
func CGContextMoveToPoint(_ c: CGContext?, _ x: CGFloat, _ y: CGFloat)
@available(watchOS 2.0, *)
func CGContextAddLineToPoint(_ c: CGContext?, _ x: CGFloat, _ y: CGFloat)
@available(watchOS 2.0, *)
func CGContextAddCurveToPoint(_ c: CGContext?, _ cp1x: CGFloat, _ cp1y: CGFloat, _ cp2x: CGFloat, _ cp2y: CGFloat, _ x: CGFloat, _ y: CGFloat)
@available(watchOS 2.0, *)
func CGContextAddQuadCurveToPoint(_ c: CGContext?, _ cpx: CGFloat, _ cpy: CGFloat, _ x: CGFloat, _ y: CGFloat)
@available(watchOS 2.0, *)
func CGContextClosePath(_ c: CGContext?)
@available(watchOS 2.0, *)
func CGContextAddRect(_ c: CGContext?, _ rect: CGRect)
@available(watchOS 2.0, *)
func CGContextAddRects(_ c: CGContext?, _ rects: UnsafePointer<CGRect>, _ count: Int)
@available(watchOS 2.0, *)
func CGContextAddLines(_ c: CGContext?, _ points: UnsafePointer<CGPoint>, _ count: Int)
@available(watchOS 2.0, *)
func CGContextAddEllipseInRect(_ c: CGContext?, _ rect: CGRect)
@available(watchOS 2.0, *)
func CGContextAddArc(_ c: CGContext?, _ x: CGFloat, _ y: CGFloat, _ radius: CGFloat, _ startAngle: CGFloat, _ endAngle: CGFloat, _ clockwise: Int32)
@available(watchOS 2.0, *)
func CGContextAddArcToPoint(_ c: CGContext?, _ x1: CGFloat, _ y1: CGFloat, _ x2: CGFloat, _ y2: CGFloat, _ radius: CGFloat)
@available(watchOS 2.0, *)
func CGContextAddPath(_ c: CGContext?, _ path: CGPath?)
@available(watchOS 2.0, *)
func CGContextReplacePathWithStrokedPath(_ c: CGContext?)
@available(watchOS 2.0, *)
func CGContextIsPathEmpty(_ c: CGContext?) -> Bool
@available(watchOS 2.0, *)
func CGContextGetPathCurrentPoint(_ c: CGContext?) -> CGPoint
@available(watchOS 2.0, *)
func CGContextGetPathBoundingBox(_ c: CGContext?) -> CGRect
@available(watchOS 2.0, *)
func CGContextCopyPath(_ c: CGContext?) -> CGPath?
@available(watchOS 2.0, *)
func CGContextPathContainsPoint(_ c: CGContext?, _ point: CGPoint, _ mode: CGPathDrawingMode) -> Bool
@available(watchOS 2.0, *)
func CGContextDrawPath(_ c: CGContext?, _ mode: CGPathDrawingMode)
@available(watchOS 2.0, *)
func CGContextFillPath(_ c: CGContext?)
@available(watchOS 2.0, *)
func CGContextEOFillPath(_ c: CGContext?)
@available(watchOS 2.0, *)
func CGContextStrokePath(_ c: CGContext?)
@available(watchOS 2.0, *)
func CGContextFillRect(_ c: CGContext?, _ rect: CGRect)
@available(watchOS 2.0, *)
func CGContextFillRects(_ c: CGContext?, _ rects: UnsafePointer<CGRect>, _ count: Int)
@available(watchOS 2.0, *)
func CGContextStrokeRect(_ c: CGContext?, _ rect: CGRect)
@available(watchOS 2.0, *)
func CGContextStrokeRectWithWidth(_ c: CGContext?, _ rect: CGRect, _ width: CGFloat)
@available(watchOS 2.0, *)
func CGContextClearRect(_ c: CGContext?, _ rect: CGRect)
@available(watchOS 2.0, *)
func CGContextFillEllipseInRect(_ c: CGContext?, _ rect: CGRect)
@available(watchOS 2.0, *)
func CGContextStrokeEllipseInRect(_ c: CGContext?, _ rect: CGRect)
@available(watchOS 2.0, *)
func CGContextStrokeLineSegments(_ c: CGContext?, _ points: UnsafePointer<CGPoint>, _ count: Int)
@available(watchOS 2.0, *)
func CGContextClip(_ c: CGContext?)
@available(watchOS 2.0, *)
func CGContextEOClip(_ c: CGContext?)
@available(watchOS 2.0, *)
func CGContextClipToMask(_ c: CGContext?, _ rect: CGRect, _ mask: CGImage?)
@available(watchOS 2.0, *)
func CGContextGetClipBoundingBox(_ c: CGContext?) -> CGRect
@available(watchOS 2.0, *)
func CGContextClipToRect(_ c: CGContext?, _ rect: CGRect)
@available(watchOS 2.0, *)
func CGContextClipToRects(_ c: CGContext?, _ rects: UnsafePointer<CGRect>, _ count: Int)
@available(watchOS 2.0, *)
func CGContextSetFillColorWithColor(_ c: CGContext?, _ color: CGColor?)
@available(watchOS 2.0, *)
func CGContextSetStrokeColorWithColor(_ c: CGContext?, _ color: CGColor?)
@available(watchOS 2.0, *)
func CGContextSetFillColorSpace(_ c: CGContext?, _ space: CGColorSpace?)
@available(watchOS 2.0, *)
func CGContextSetStrokeColorSpace(_ c: CGContext?, _ space: CGColorSpace?)
@available(watchOS 2.0, *)
func CGContextSetFillColor(_ c: CGContext?, _ components: UnsafePointer<CGFloat>)
@available(watchOS 2.0, *)
func CGContextSetStrokeColor(_ c: CGContext?, _ components: UnsafePointer<CGFloat>)
@available(watchOS 2.0, *)
func CGContextSetFillPattern(_ c: CGContext?, _ pattern: CGPattern?, _ components: UnsafePointer<CGFloat>)
@available(watchOS 2.0, *)
func CGContextSetStrokePattern(_ c: CGContext?, _ pattern: CGPattern?, _ components: UnsafePointer<CGFloat>)
@available(watchOS 2.0, *)
func CGContextSetPatternPhase(_ c: CGContext?, _ phase: CGSize)
@available(watchOS 2.0, *)
func CGContextSetGrayFillColor(_ c: CGContext?, _ gray: CGFloat, _ alpha: CGFloat)
@available(watchOS 2.0, *)
func CGContextSetGrayStrokeColor(_ c: CGContext?, _ gray: CGFloat, _ alpha: CGFloat)
@available(watchOS 2.0, *)
func CGContextSetRGBFillColor(_ c: CGContext?, _ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat)
@available(watchOS 2.0, *)
func CGContextSetRGBStrokeColor(_ c: CGContext?, _ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat)
@available(watchOS 2.0, *)
func CGContextSetCMYKFillColor(_ c: CGContext?, _ cyan: CGFloat, _ magenta: CGFloat, _ yellow: CGFloat, _ black: CGFloat, _ alpha: CGFloat)
@available(watchOS 2.0, *)
func CGContextSetCMYKStrokeColor(_ c: CGContext?, _ cyan: CGFloat, _ magenta: CGFloat, _ yellow: CGFloat, _ black: CGFloat, _ alpha: CGFloat)
@available(watchOS 2.0, *)
func CGContextSetRenderingIntent(_ c: CGContext?, _ intent: CGColorRenderingIntent)
@available(watchOS 2.0, *)
func CGContextDrawImage(_ c: CGContext?, _ rect: CGRect, _ image: CGImage?)
@available(watchOS 2.0, *)
func CGContextDrawTiledImage(_ c: CGContext?, _ rect: CGRect, _ image: CGImage?)
@available(watchOS 2.0, *)
func CGContextGetInterpolationQuality(_ c: CGContext?) -> CGInterpolationQuality
@available(watchOS 2.0, *)
func CGContextSetInterpolationQuality(_ c: CGContext?, _ quality: CGInterpolationQuality)
@available(watchOS 2.0, *)
func CGContextSetShadowWithColor(_ c: CGContext?, _ offset: CGSize, _ blur: CGFloat, _ color: CGColor?)
@available(watchOS 2.0, *)
func CGContextSetShadow(_ c: CGContext?, _ offset: CGSize, _ blur: CGFloat)
@available(watchOS 2.0, *)
func CGContextDrawLinearGradient(_ c: CGContext?, _ gradient: CGGradient?, _ startPoint: CGPoint, _ endPoint: CGPoint, _ options: CGGradientDrawingOptions)
@available(watchOS 2.0, *)
func CGContextDrawRadialGradient(_ c: CGContext?, _ gradient: CGGradient?, _ startCenter: CGPoint, _ startRadius: CGFloat, _ endCenter: CGPoint, _ endRadius: CGFloat, _ options: CGGradientDrawingOptions)
@available(watchOS 2.0, *)
func CGContextDrawShading(_ c: CGContext?, _ shading: CGShading?)
@available(watchOS 2.0, *)
func CGContextSetCharacterSpacing(_ c: CGContext?, _ spacing: CGFloat)
@available(watchOS 2.0, *)
func CGContextSetTextPosition(_ c: CGContext?, _ x: CGFloat, _ y: CGFloat)
@available(watchOS 2.0, *)
func CGContextGetTextPosition(_ c: CGContext?) -> CGPoint
@available(watchOS 2.0, *)
func CGContextSetTextMatrix(_ c: CGContext?, _ t: CGAffineTransform)
@available(watchOS 2.0, *)
func CGContextGetTextMatrix(_ c: CGContext?) -> CGAffineTransform
@available(watchOS 2.0, *)
func CGContextSetTextDrawingMode(_ c: CGContext?, _ mode: CGTextDrawingMode)
@available(watchOS 2.0, *)
func CGContextSetFont(_ c: CGContext?, _ font: CGFont?)
@available(watchOS 2.0, *)
func CGContextSetFontSize(_ c: CGContext?, _ size: CGFloat)
@available(watchOS 2.0, *)
func CGContextShowGlyphsAtPositions(_ c: CGContext?, _ glyphs: UnsafePointer<CGGlyph>, _ Lpositions: UnsafePointer<CGPoint>, _ count: Int)
@available(watchOS 2.0, *)
func CGContextDrawPDFPage(_ c: CGContext?, _ page: CGPDFPage?)
@available(watchOS 2.0, *)
func CGContextBeginPage(_ c: CGContext?, _ mediaBox: UnsafePointer<CGRect>)
@available(watchOS 2.0, *)
func CGContextEndPage(_ c: CGContext?)
@available(watchOS 2.0, *)
func CGContextFlush(_ c: CGContext?)
@available(watchOS 2.0, *)
func CGContextSynchronize(_ c: CGContext?)
@available(watchOS 2.0, *)
func CGContextSetShouldAntialias(_ c: CGContext?, _ shouldAntialias: Bool)
@available(watchOS 2.0, *)
func CGContextSetAllowsAntialiasing(_ c: CGContext?, _ allowsAntialiasing: Bool)
@available(watchOS 2.0, *)
func CGContextSetShouldSmoothFonts(_ c: CGContext?, _ shouldSmoothFonts: Bool)
@available(watchOS 2.0, *)
func CGContextSetAllowsFontSmoothing(_ c: CGContext?, _ allowsFontSmoothing: Bool)
@available(watchOS 2.0, *)
func CGContextSetShouldSubpixelPositionFonts(_ c: CGContext?, _ shouldSubpixelPositionFonts: Bool)
@available(watchOS 2.0, *)
func CGContextSetAllowsFontSubpixelPositioning(_ c: CGContext?, _ allowsFontSubpixelPositioning: Bool)
@available(watchOS 2.0, *)
func CGContextSetShouldSubpixelQuantizeFonts(_ c: CGContext?, _ shouldSubpixelQuantizeFonts: Bool)
@available(watchOS 2.0, *)
func CGContextSetAllowsFontSubpixelQuantization(_ c: CGContext?, _ allowsFontSubpixelQuantization: Bool)
@available(watchOS 2.0, *)
func CGContextBeginTransparencyLayer(_ c: CGContext?, _ auxiliaryInfo: CFDictionary?)
@available(watchOS 2.0, *)
func CGContextBeginTransparencyLayerWithRect(_ c: CGContext?, _ rect: CGRect, _ auxInfo: CFDictionary?)
@available(watchOS 2.0, *)
func CGContextEndTransparencyLayer(_ c: CGContext?)
@available(watchOS 2.0, *)
func CGContextGetUserSpaceToDeviceSpaceTransform(_ c: CGContext?) -> CGAffineTransform
@available(watchOS 2.0, *)
func CGContextConvertPointToDeviceSpace(_ c: CGContext?, _ point: CGPoint) -> CGPoint
@available(watchOS 2.0, *)
func CGContextConvertPointToUserSpace(_ c: CGContext?, _ point: CGPoint) -> CGPoint
@available(watchOS 2.0, *)
func CGContextConvertSizeToDeviceSpace(_ c: CGContext?, _ size: CGSize) -> CGSize
@available(watchOS 2.0, *)
func CGContextConvertSizeToUserSpace(_ c: CGContext?, _ size: CGSize) -> CGSize
@available(watchOS 2.0, *)
func CGContextConvertRectToDeviceSpace(_ c: CGContext?, _ rect: CGRect) -> CGRect
@available(watchOS 2.0, *)
func CGContextConvertRectToUserSpace(_ c: CGContext?, _ rect: CGRect) -> CGRect
@available(watchOS, introduced=2.0, deprecated=2.0)
func CGContextSelectFont(_ c: CGContext?, _ name: UnsafePointer<Int8>, _ size: CGFloat, _ textEncoding: CGTextEncoding)
@available(watchOS, introduced=2.0, deprecated=2.0)
func CGContextShowText(_ c: CGContext?, _ string: UnsafePointer<Int8>, _ length: Int)
@available(watchOS, introduced=2.0, deprecated=2.0)
func CGContextShowTextAtPoint(_ c: CGContext?, _ x: CGFloat, _ y: CGFloat, _ string: UnsafePointer<Int8>, _ length: Int)
@available(watchOS, introduced=2.0, deprecated=2.0)
func CGContextShowGlyphs(_ c: CGContext?, _ g: UnsafePointer<CGGlyph>, _ count: Int)
@available(watchOS, introduced=2.0, deprecated=2.0)
func CGContextShowGlyphsAtPoint(_ c: CGContext?, _ x: CGFloat, _ y: CGFloat, _ glyphs: UnsafePointer<CGGlyph>, _ count: Int)
@available(watchOS, introduced=2.0, deprecated=2.0)
func CGContextShowGlyphsWithAdvances(_ c: CGContext?, _ glyphs: UnsafePointer<CGGlyph>, _ advances: UnsafePointer<CGSize>, _ count: Int)
