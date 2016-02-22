
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
@available(OSX 10.2, *)
func CGContextGetTypeID() -> CFTypeID
@available(OSX 10.0, *)
func CGContextSaveGState(_ c: CGContext?)
@available(OSX 10.0, *)
func CGContextRestoreGState(_ c: CGContext?)
@available(OSX 10.0, *)
func CGContextScaleCTM(_ c: CGContext?, _ sx: CGFloat, _ sy: CGFloat)
@available(OSX 10.0, *)
func CGContextTranslateCTM(_ c: CGContext?, _ tx: CGFloat, _ ty: CGFloat)
@available(OSX 10.0, *)
func CGContextRotateCTM(_ c: CGContext?, _ angle: CGFloat)
@available(OSX 10.0, *)
func CGContextConcatCTM(_ c: CGContext?, _ transform: CGAffineTransform)
@available(OSX 10.0, *)
func CGContextGetCTM(_ c: CGContext?) -> CGAffineTransform
@available(OSX 10.0, *)
func CGContextSetLineWidth(_ c: CGContext?, _ width: CGFloat)
@available(OSX 10.0, *)
func CGContextSetLineCap(_ c: CGContext?, _ cap: CGLineCap)
@available(OSX 10.0, *)
func CGContextSetLineJoin(_ c: CGContext?, _ join: CGLineJoin)
@available(OSX 10.0, *)
func CGContextSetMiterLimit(_ c: CGContext?, _ limit: CGFloat)
@available(OSX 10.0, *)
func CGContextSetLineDash(_ c: CGContext?, _ phase: CGFloat, _ lengths: UnsafePointer<CGFloat>, _ count: Int)
@available(OSX 10.0, *)
func CGContextSetFlatness(_ c: CGContext?, _ flatness: CGFloat)
@available(OSX 10.0, *)
func CGContextSetAlpha(_ c: CGContext?, _ alpha: CGFloat)
@available(OSX 10.4, *)
func CGContextSetBlendMode(_ c: CGContext?, _ mode: CGBlendMode)
@available(OSX 10.0, *)
func CGContextBeginPath(_ c: CGContext?)
@available(OSX 10.0, *)
func CGContextMoveToPoint(_ c: CGContext?, _ x: CGFloat, _ y: CGFloat)
@available(OSX 10.0, *)
func CGContextAddLineToPoint(_ c: CGContext?, _ x: CGFloat, _ y: CGFloat)
@available(OSX 10.0, *)
func CGContextAddCurveToPoint(_ c: CGContext?, _ cp1x: CGFloat, _ cp1y: CGFloat, _ cp2x: CGFloat, _ cp2y: CGFloat, _ x: CGFloat, _ y: CGFloat)
@available(OSX 10.0, *)
func CGContextAddQuadCurveToPoint(_ c: CGContext?, _ cpx: CGFloat, _ cpy: CGFloat, _ x: CGFloat, _ y: CGFloat)
@available(OSX 10.0, *)
func CGContextClosePath(_ c: CGContext?)
@available(OSX 10.0, *)
func CGContextAddRect(_ c: CGContext?, _ rect: CGRect)
@available(OSX 10.0, *)
func CGContextAddRects(_ c: CGContext?, _ rects: UnsafePointer<CGRect>, _ count: Int)
@available(OSX 10.0, *)
func CGContextAddLines(_ c: CGContext?, _ points: UnsafePointer<CGPoint>, _ count: Int)
@available(OSX 10.4, *)
func CGContextAddEllipseInRect(_ c: CGContext?, _ rect: CGRect)
@available(OSX 10.0, *)
func CGContextAddArc(_ c: CGContext?, _ x: CGFloat, _ y: CGFloat, _ radius: CGFloat, _ startAngle: CGFloat, _ endAngle: CGFloat, _ clockwise: Int32)
@available(OSX 10.0, *)
func CGContextAddArcToPoint(_ c: CGContext?, _ x1: CGFloat, _ y1: CGFloat, _ x2: CGFloat, _ y2: CGFloat, _ radius: CGFloat)
@available(OSX 10.2, *)
func CGContextAddPath(_ c: CGContext?, _ path: CGPath?)
@available(OSX 10.4, *)
func CGContextReplacePathWithStrokedPath(_ c: CGContext?)
@available(OSX 10.0, *)
func CGContextIsPathEmpty(_ c: CGContext?) -> Bool
@available(OSX 10.0, *)
func CGContextGetPathCurrentPoint(_ c: CGContext?) -> CGPoint
@available(OSX 10.0, *)
func CGContextGetPathBoundingBox(_ c: CGContext?) -> CGRect
@available(OSX 10.2, *)
func CGContextCopyPath(_ c: CGContext?) -> CGPath?
@available(OSX 10.4, *)
func CGContextPathContainsPoint(_ c: CGContext?, _ point: CGPoint, _ mode: CGPathDrawingMode) -> Bool
@available(OSX 10.0, *)
func CGContextDrawPath(_ c: CGContext?, _ mode: CGPathDrawingMode)
@available(OSX 10.0, *)
func CGContextFillPath(_ c: CGContext?)
@available(OSX 10.0, *)
func CGContextEOFillPath(_ c: CGContext?)
@available(OSX 10.0, *)
func CGContextStrokePath(_ c: CGContext?)
@available(OSX 10.0, *)
func CGContextFillRect(_ c: CGContext?, _ rect: CGRect)
@available(OSX 10.0, *)
func CGContextFillRects(_ c: CGContext?, _ rects: UnsafePointer<CGRect>, _ count: Int)
@available(OSX 10.0, *)
func CGContextStrokeRect(_ c: CGContext?, _ rect: CGRect)
@available(OSX 10.0, *)
func CGContextStrokeRectWithWidth(_ c: CGContext?, _ rect: CGRect, _ width: CGFloat)
@available(OSX 10.0, *)
func CGContextClearRect(_ c: CGContext?, _ rect: CGRect)
@available(OSX 10.4, *)
func CGContextFillEllipseInRect(_ c: CGContext?, _ rect: CGRect)
@available(OSX 10.4, *)
func CGContextStrokeEllipseInRect(_ c: CGContext?, _ rect: CGRect)
@available(OSX 10.4, *)
func CGContextStrokeLineSegments(_ c: CGContext?, _ points: UnsafePointer<CGPoint>, _ count: Int)
@available(OSX 10.0, *)
func CGContextClip(_ c: CGContext?)
@available(OSX 10.0, *)
func CGContextEOClip(_ c: CGContext?)
@available(OSX 10.4, *)
func CGContextClipToMask(_ c: CGContext?, _ rect: CGRect, _ mask: CGImage?)
@available(OSX 10.3, *)
func CGContextGetClipBoundingBox(_ c: CGContext?) -> CGRect
@available(OSX 10.0, *)
func CGContextClipToRect(_ c: CGContext?, _ rect: CGRect)
@available(OSX 10.0, *)
func CGContextClipToRects(_ c: CGContext?, _ rects: UnsafePointer<CGRect>, _ count: Int)
@available(OSX 10.3, *)
func CGContextSetFillColorWithColor(_ c: CGContext?, _ color: CGColor?)
@available(OSX 10.3, *)
func CGContextSetStrokeColorWithColor(_ c: CGContext?, _ color: CGColor?)
@available(OSX 10.0, *)
func CGContextSetFillColorSpace(_ c: CGContext?, _ space: CGColorSpace?)
@available(OSX 10.0, *)
func CGContextSetStrokeColorSpace(_ c: CGContext?, _ space: CGColorSpace?)
@available(OSX 10.0, *)
func CGContextSetFillColor(_ c: CGContext?, _ components: UnsafePointer<CGFloat>)
@available(OSX 10.0, *)
func CGContextSetStrokeColor(_ c: CGContext?, _ components: UnsafePointer<CGFloat>)
@available(OSX 10.0, *)
func CGContextSetFillPattern(_ c: CGContext?, _ pattern: CGPattern?, _ components: UnsafePointer<CGFloat>)
@available(OSX 10.0, *)
func CGContextSetStrokePattern(_ c: CGContext?, _ pattern: CGPattern?, _ components: UnsafePointer<CGFloat>)
@available(OSX 10.0, *)
func CGContextSetPatternPhase(_ c: CGContext?, _ phase: CGSize)
@available(OSX 10.0, *)
func CGContextSetGrayFillColor(_ c: CGContext?, _ gray: CGFloat, _ alpha: CGFloat)
@available(OSX 10.0, *)
func CGContextSetGrayStrokeColor(_ c: CGContext?, _ gray: CGFloat, _ alpha: CGFloat)
@available(OSX 10.0, *)
func CGContextSetRGBFillColor(_ c: CGContext?, _ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat)
@available(OSX 10.0, *)
func CGContextSetRGBStrokeColor(_ c: CGContext?, _ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat)
@available(OSX 10.0, *)
func CGContextSetCMYKFillColor(_ c: CGContext?, _ cyan: CGFloat, _ magenta: CGFloat, _ yellow: CGFloat, _ black: CGFloat, _ alpha: CGFloat)
@available(OSX 10.0, *)
func CGContextSetCMYKStrokeColor(_ c: CGContext?, _ cyan: CGFloat, _ magenta: CGFloat, _ yellow: CGFloat, _ black: CGFloat, _ alpha: CGFloat)
@available(OSX 10.0, *)
func CGContextSetRenderingIntent(_ c: CGContext?, _ intent: CGColorRenderingIntent)
@available(OSX 10.0, *)
func CGContextDrawImage(_ c: CGContext?, _ rect: CGRect, _ image: CGImage?)
@available(OSX 10.5, *)
func CGContextDrawTiledImage(_ c: CGContext?, _ rect: CGRect, _ image: CGImage?)
@available(OSX 10.0, *)
func CGContextGetInterpolationQuality(_ c: CGContext?) -> CGInterpolationQuality
@available(OSX 10.0, *)
func CGContextSetInterpolationQuality(_ c: CGContext?, _ quality: CGInterpolationQuality)
@available(OSX 10.3, *)
func CGContextSetShadowWithColor(_ c: CGContext?, _ offset: CGSize, _ blur: CGFloat, _ color: CGColor?)
@available(OSX 10.3, *)
func CGContextSetShadow(_ c: CGContext?, _ offset: CGSize, _ blur: CGFloat)
@available(OSX 10.5, *)
func CGContextDrawLinearGradient(_ c: CGContext?, _ gradient: CGGradient?, _ startPoint: CGPoint, _ endPoint: CGPoint, _ options: CGGradientDrawingOptions)
@available(OSX 10.5, *)
func CGContextDrawRadialGradient(_ c: CGContext?, _ gradient: CGGradient?, _ startCenter: CGPoint, _ startRadius: CGFloat, _ endCenter: CGPoint, _ endRadius: CGFloat, _ options: CGGradientDrawingOptions)
@available(OSX 10.2, *)
func CGContextDrawShading(_ c: CGContext?, _ shading: CGShading?)
@available(OSX 10.0, *)
func CGContextSetCharacterSpacing(_ c: CGContext?, _ spacing: CGFloat)
@available(OSX 10.0, *)
func CGContextSetTextPosition(_ c: CGContext?, _ x: CGFloat, _ y: CGFloat)
@available(OSX 10.0, *)
func CGContextGetTextPosition(_ c: CGContext?) -> CGPoint
@available(OSX 10.0, *)
func CGContextSetTextMatrix(_ c: CGContext?, _ t: CGAffineTransform)
@available(OSX 10.0, *)
func CGContextGetTextMatrix(_ c: CGContext?) -> CGAffineTransform
@available(OSX 10.0, *)
func CGContextSetTextDrawingMode(_ c: CGContext?, _ mode: CGTextDrawingMode)
@available(OSX 10.0, *)
func CGContextSetFont(_ c: CGContext?, _ font: CGFont?)
@available(OSX 10.0, *)
func CGContextSetFontSize(_ c: CGContext?, _ size: CGFloat)
@available(OSX 10.5, *)
func CGContextShowGlyphsAtPositions(_ c: CGContext?, _ glyphs: UnsafePointer<CGGlyph>, _ Lpositions: UnsafePointer<CGPoint>, _ count: Int)
@available(OSX 10.3, *)
func CGContextDrawPDFPage(_ c: CGContext?, _ page: CGPDFPage?)
@available(OSX 10.0, *)
func CGContextBeginPage(_ c: CGContext?, _ mediaBox: UnsafePointer<CGRect>)
@available(OSX 10.0, *)
func CGContextEndPage(_ c: CGContext?)
@available(OSX 10.0, *)
func CGContextFlush(_ c: CGContext?)
@available(OSX 10.0, *)
func CGContextSynchronize(_ c: CGContext?)
@available(OSX 10.0, *)
func CGContextSetShouldAntialias(_ c: CGContext?, _ shouldAntialias: Bool)
@available(OSX 10.4, *)
func CGContextSetAllowsAntialiasing(_ c: CGContext?, _ allowsAntialiasing: Bool)
@available(OSX 10.2, *)
func CGContextSetShouldSmoothFonts(_ c: CGContext?, _ shouldSmoothFonts: Bool)
@available(OSX 10.2, *)
func CGContextSetAllowsFontSmoothing(_ c: CGContext?, _ allowsFontSmoothing: Bool)
@available(OSX 10.5, *)
func CGContextSetShouldSubpixelPositionFonts(_ c: CGContext?, _ shouldSubpixelPositionFonts: Bool)
@available(OSX 10.5, *)
func CGContextSetAllowsFontSubpixelPositioning(_ c: CGContext?, _ allowsFontSubpixelPositioning: Bool)
@available(OSX 10.5, *)
func CGContextSetShouldSubpixelQuantizeFonts(_ c: CGContext?, _ shouldSubpixelQuantizeFonts: Bool)
@available(OSX 10.5, *)
func CGContextSetAllowsFontSubpixelQuantization(_ c: CGContext?, _ allowsFontSubpixelQuantization: Bool)
@available(OSX 10.3, *)
func CGContextBeginTransparencyLayer(_ c: CGContext?, _ auxiliaryInfo: CFDictionary?)
@available(OSX 10.5, *)
func CGContextBeginTransparencyLayerWithRect(_ c: CGContext?, _ rect: CGRect, _ auxInfo: CFDictionary?)
@available(OSX 10.3, *)
func CGContextEndTransparencyLayer(_ c: CGContext?)
@available(OSX 10.4, *)
func CGContextGetUserSpaceToDeviceSpaceTransform(_ c: CGContext?) -> CGAffineTransform
@available(OSX 10.4, *)
func CGContextConvertPointToDeviceSpace(_ c: CGContext?, _ point: CGPoint) -> CGPoint
@available(OSX 10.4, *)
func CGContextConvertPointToUserSpace(_ c: CGContext?, _ point: CGPoint) -> CGPoint
@available(OSX 10.4, *)
func CGContextConvertSizeToDeviceSpace(_ c: CGContext?, _ size: CGSize) -> CGSize
@available(OSX 10.4, *)
func CGContextConvertSizeToUserSpace(_ c: CGContext?, _ size: CGSize) -> CGSize
@available(OSX 10.4, *)
func CGContextConvertRectToDeviceSpace(_ c: CGContext?, _ rect: CGRect) -> CGRect
@available(OSX 10.4, *)
func CGContextConvertRectToUserSpace(_ c: CGContext?, _ rect: CGRect) -> CGRect
