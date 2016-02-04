
@available(iOS 6.0, *)
let NSFontAttributeName: String
@available(iOS 6.0, *)
let NSParagraphStyleAttributeName: String
@available(iOS 6.0, *)
let NSForegroundColorAttributeName: String
@available(iOS 6.0, *)
let NSBackgroundColorAttributeName: String
@available(iOS 6.0, *)
let NSLigatureAttributeName: String
@available(iOS 6.0, *)
let NSKernAttributeName: String
@available(iOS 6.0, *)
let NSStrikethroughStyleAttributeName: String
@available(iOS 6.0, *)
let NSUnderlineStyleAttributeName: String
@available(iOS 6.0, *)
let NSStrokeColorAttributeName: String
@available(iOS 6.0, *)
let NSStrokeWidthAttributeName: String
@available(iOS 6.0, *)
let NSShadowAttributeName: String
@available(iOS 7.0, *)
let NSTextEffectAttributeName: String
@available(iOS 7.0, *)
let NSAttachmentAttributeName: String
@available(iOS 7.0, *)
let NSLinkAttributeName: String
@available(iOS 7.0, *)
let NSBaselineOffsetAttributeName: String
@available(iOS 7.0, *)
let NSUnderlineColorAttributeName: String
@available(iOS 7.0, *)
let NSStrikethroughColorAttributeName: String
@available(iOS 7.0, *)
let NSObliquenessAttributeName: String
@available(iOS 7.0, *)
let NSExpansionAttributeName: String
@available(iOS 7.0, *)
let NSWritingDirectionAttributeName: String
@available(iOS 6.0, *)
let NSVerticalGlyphFormAttributeName: String
@available(iOS 6.0, *)
enum NSUnderlineStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case StyleNone
  case StyleSingle
  @available(iOS 7.0, *)
  case StyleThick
  @available(iOS 7.0, *)
  case StyleDouble
  @available(iOS 7.0, *)
  static var PatternSolid: NSUnderlineStyle { get }
  @available(iOS 7.0, *)
  case PatternDot
  @available(iOS 7.0, *)
  case PatternDash
  @available(iOS 7.0, *)
  case PatternDashDot
  @available(iOS 7.0, *)
  case PatternDashDotDot
  @available(iOS 7.0, *)
  case ByWord
}
@available(iOS 9.0, *)
enum NSWritingDirectionFormatType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Embedding
  case Override
}
@available(iOS 7.0, *)
let NSTextEffectLetterpressStyle: String
extension MutableAttributedString {
  @available(iOS 7.0, *)
  func fixAttributesIn(range: NSRange)
}
@available(iOS 7.0, *)
let NSPlainTextDocumentType: String
@available(iOS 7.0, *)
let NSRTFTextDocumentType: String
@available(iOS 7.0, *)
let NSRTFDTextDocumentType: String
@available(iOS 7.0, *)
let NSHTMLTextDocumentType: String
@available(iOS 7.0, *)
let NSTextLayoutSectionOrientation: String
@available(iOS 7.0, *)
let NSTextLayoutSectionRange: String
@available(iOS 7.0, *)
let NSDocumentTypeDocumentAttribute: String
@available(iOS 7.0, *)
let NSCharacterEncodingDocumentAttribute: String
@available(iOS 7.0, *)
let NSDefaultAttributesDocumentAttribute: String
@available(iOS 7.0, *)
let NSPaperSizeDocumentAttribute: String
@available(iOS 7.0, *)
let NSPaperMarginDocumentAttribute: String
@available(iOS 7.0, *)
let NSViewSizeDocumentAttribute: String
@available(iOS 7.0, *)
let NSViewZoomDocumentAttribute: String
@available(iOS 7.0, *)
let NSViewModeDocumentAttribute: String
@available(iOS 7.0, *)
let NSReadOnlyDocumentAttribute: String
@available(iOS 7.0, *)
let NSBackgroundColorDocumentAttribute: String
@available(iOS 7.0, *)
let NSHyphenationFactorDocumentAttribute: String
@available(iOS 7.0, *)
let NSDefaultTabIntervalDocumentAttribute: String
@available(iOS 7.0, *)
let NSTextLayoutSectionsAttribute: String
extension AttributedString {
  @available(iOS 9.0, *)
  init(url: URL, options: [String : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(iOS 7.0, *)
  init(data: Data, options: [String : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(iOS 7.0, *)
  func dataFrom(range: NSRange, documentAttributes dict: [String : AnyObject] = [:]) throws -> Data
  @available(iOS 7.0, *)
  func fileWrapperFrom(range: NSRange, documentAttributes dict: [String : AnyObject] = [:]) throws -> FileWrapper
}
extension MutableAttributedString {
  @available(iOS 9.0, *)
  func readFrom(url: URL, options opts: [String : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(iOS 7.0, *)
  func readFrom(data: Data, options opts: [String : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
}
extension AttributedString {
  @available(iOS 9.0, *)
  func containsAttachmentsIn(range: NSRange) -> Bool
}
@available(iOS, introduced=7.0, deprecated=9.0, message="Use NSWritingDirectionFormatType instead")
enum NSTextWritingDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Embedding
  case Override
}
extension AttributedString {
  @available(iOS, introduced=7.0, deprecated=9.0, message="Use -initWithURL:options:documentAttributes:error: instead")
  init(fileURL url: URL, options: [Object : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
}
extension MutableAttributedString {
  @available(iOS, introduced=7.0, deprecated=9.0, message="Use -readFromURL:options:documentAttributes:error: instead")
  func readFromFileURL(url: URL, options opts: [Object : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
}
