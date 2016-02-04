
@available(iOS 3.2, *)
let kCTFontAttributeName: CFString
@available(iOS 3.2, *)
let kCTForegroundColorFromContextAttributeName: CFString
@available(iOS 3.2, *)
let kCTKernAttributeName: CFString
@available(iOS 3.2, *)
let kCTLigatureAttributeName: CFString
@available(iOS 3.2, *)
let kCTForegroundColorAttributeName: CFString
@available(iOS 3.2, *)
let kCTParagraphStyleAttributeName: CFString
@available(iOS 3.2, *)
let kCTStrokeWidthAttributeName: CFString
@available(iOS 3.2, *)
let kCTStrokeColorAttributeName: CFString
@available(iOS 3.2, *)
let kCTUnderlineStyleAttributeName: CFString
@available(iOS 3.2, *)
let kCTSuperscriptAttributeName: CFString
@available(iOS 3.2, *)
let kCTUnderlineColorAttributeName: CFString
@available(iOS 4.3, *)
let kCTVerticalFormsAttributeName: CFString
@available(iOS 3.2, *)
let kCTGlyphInfoAttributeName: CFString
@available(iOS, introduced=3.2, deprecated=9.0)
let kCTCharacterShapeAttributeName: CFString
@available(iOS 7.0, *)
let kCTLanguageAttributeName: CFString
@available(iOS 3.2, *)
let kCTRunDelegateAttributeName: CFString
struct CTUnderlineStyle : OptionSetType {
  init(rawValue: Int32)
  let rawValue: Int32
  static var None: CTUnderlineStyle { get }
  static var Single: CTUnderlineStyle { get }
  static var Thick: CTUnderlineStyle { get }
  static var Double: CTUnderlineStyle { get }
}
struct CTUnderlineStyleModifiers : OptionSetType {
  init(rawValue: Int32)
  let rawValue: Int32
  static var PatternSolid: CTUnderlineStyleModifiers { get }
  static var PatternDot: CTUnderlineStyleModifiers { get }
  static var PatternDash: CTUnderlineStyleModifiers { get }
  static var PatternDashDot: CTUnderlineStyleModifiers { get }
  static var PatternDashDotDot: CTUnderlineStyleModifiers { get }
}
@available(iOS 6.0, *)
let kCTBaselineClassAttributeName: CFString
@available(iOS 6.0, *)
let kCTBaselineInfoAttributeName: CFString
@available(iOS 6.0, *)
let kCTBaselineReferenceInfoAttributeName: CFString
@available(iOS 6.0, *)
let kCTWritingDirectionAttributeName: CFString
var kCTWritingDirectionEmbedding: Int { get }
var kCTWritingDirectionOverride: Int { get }
@available(iOS 8.0, *)
let kCTRubyAnnotationAttributeName: CFString
