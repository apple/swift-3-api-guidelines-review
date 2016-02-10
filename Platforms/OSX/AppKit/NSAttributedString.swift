
@available(OSX 10.0, *)
let NSFontAttributeName: String
@available(OSX 10.0, *)
let NSParagraphStyleAttributeName: String
@available(OSX 10.0, *)
let NSForegroundColorAttributeName: String
@available(OSX 10.0, *)
let NSBackgroundColorAttributeName: String
@available(OSX 10.0, *)
let NSLigatureAttributeName: String
@available(OSX 10.0, *)
let NSKernAttributeName: String
@available(OSX 10.0, *)
let NSStrikethroughStyleAttributeName: String
@available(OSX 10.0, *)
let NSUnderlineStyleAttributeName: String
@available(OSX 10.0, *)
let NSStrokeColorAttributeName: String
@available(OSX 10.0, *)
let NSStrokeWidthAttributeName: String
@available(OSX 10.0, *)
let NSShadowAttributeName: String
@available(OSX 10.10, *)
let NSTextEffectAttributeName: String
@available(OSX 10.0, *)
let NSAttachmentAttributeName: String
@available(OSX 10.0, *)
let NSLinkAttributeName: String
@available(OSX 10.0, *)
let NSBaselineOffsetAttributeName: String
@available(OSX 10.0, *)
let NSUnderlineColorAttributeName: String
@available(OSX 10.0, *)
let NSStrikethroughColorAttributeName: String
@available(OSX 10.0, *)
let NSObliquenessAttributeName: String
@available(OSX 10.0, *)
let NSExpansionAttributeName: String
@available(OSX 10.6, *)
let NSWritingDirectionAttributeName: String
@available(OSX 10.7, *)
let NSVerticalGlyphFormAttributeName: String
let NSCursorAttributeName: String
let NSToolTipAttributeName: String
let NSMarkedClauseSegmentAttributeName: String
@available(OSX 10.8, *)
let NSTextAlternativesAttributeName: String
let NSSpellingStateAttributeName: String
let NSSuperscriptAttributeName: String
let NSGlyphInfoAttributeName: String
@available(OSX 10.0, *)
enum NSUnderlineStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case styleNone
  case styleSingle
  @available(OSX 10.0, *)
  case styleThick
  @available(OSX 10.0, *)
  case styleDouble
  @available(OSX 10.0, *)
  static var patternSolid: NSUnderlineStyle { get }
  @available(OSX 10.0, *)
  case patternDot
  @available(OSX 10.0, *)
  case patternDash
  @available(OSX 10.0, *)
  case patternDashDot
  @available(OSX 10.0, *)
  case patternDashDotDot
  @available(OSX 10.0, *)
  case byWord
}
@available(OSX 10.11, *)
enum NSWritingDirectionFormatType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case embedding
  case override
}
@available(OSX 10.10, *)
let NSTextEffectLetterpressStyle: String
@available(OSX 10.5, *)
var NSSpellingStateSpellingFlag: Int { get }
@available(OSX 10.5, *)
var NSSpellingStateGrammarFlag: Int { get }
extension MutableAttributedString {
  @available(OSX 10.0, *)
  func fixAttributesIn(range: NSRange)
  func fixFontAttributeIn(range: NSRange)
  func fixParagraphStyleAttributeIn(range: NSRange)
  func fixAttachmentAttributeIn(range: NSRange)
}
@available(OSX 10.0, *)
let NSPlainTextDocumentType: String
@available(OSX 10.0, *)
let NSRTFTextDocumentType: String
@available(OSX 10.0, *)
let NSRTFDTextDocumentType: String
@available(OSX 10.0, *)
let NSHTMLTextDocumentType: String
let NSMacSimpleTextDocumentType: String
let NSDocFormatTextDocumentType: String
let NSWordMLTextDocumentType: String
let NSWebArchiveTextDocumentType: String
@available(OSX 10.5, *)
let NSOfficeOpenXMLTextDocumentType: String
@available(OSX 10.5, *)
let NSOpenDocumentTextDocumentType: String
@available(OSX 10.7, *)
let NSTextLayoutSectionOrientation: String
@available(OSX 10.7, *)
let NSTextLayoutSectionRange: String
@available(OSX 10.0, *)
let NSDocumentTypeDocumentAttribute: String
let NSConvertedDocumentAttribute: String
let NSCocoaVersionDocumentAttribute: String
@available(OSX 10.6, *)
let NSFileTypeDocumentAttribute: String
let NSTitleDocumentAttribute: String
let NSCompanyDocumentAttribute: String
let NSCopyrightDocumentAttribute: String
let NSSubjectDocumentAttribute: String
let NSAuthorDocumentAttribute: String
let NSKeywordsDocumentAttribute: String
let NSCommentDocumentAttribute: String
let NSEditorDocumentAttribute: String
let NSCreationTimeDocumentAttribute: String
let NSModificationTimeDocumentAttribute: String
@available(OSX 10.5, *)
let NSManagerDocumentAttribute: String
@available(OSX 10.6, *)
let NSCategoryDocumentAttribute: String
@available(OSX 10.0, *)
let NSCharacterEncodingDocumentAttribute: String
@available(OSX 10.11, *)
let NSDefaultAttributesDocumentAttribute: String
@available(OSX 10.0, *)
let NSPaperSizeDocumentAttribute: String
let NSLeftMarginDocumentAttribute: String
let NSRightMarginDocumentAttribute: String
let NSTopMarginDocumentAttribute: String
let NSBottomMarginDocumentAttribute: String
@available(OSX 10.0, *)
let NSViewSizeDocumentAttribute: String
@available(OSX 10.0, *)
let NSViewZoomDocumentAttribute: String
@available(OSX 10.0, *)
let NSViewModeDocumentAttribute: String
@available(OSX 10.0, *)
let NSReadOnlyDocumentAttribute: String
@available(OSX 10.0, *)
let NSBackgroundColorDocumentAttribute: String
@available(OSX 10.0, *)
let NSHyphenationFactorDocumentAttribute: String
@available(OSX 10.0, *)
let NSDefaultTabIntervalDocumentAttribute: String
@available(OSX 10.7, *)
let NSTextLayoutSectionsAttribute: String
let NSExcludedElementsDocumentAttribute: String
let NSTextEncodingNameDocumentAttribute: String
let NSPrefixSpacesDocumentAttribute: String
let NSDocumentTypeDocumentOption: String
let NSDefaultAttributesDocumentOption: String
let NSCharacterEncodingDocumentOption: String
let NSTextEncodingNameDocumentOption: String
let NSBaseURLDocumentOption: String
let NSTimeoutDocumentOption: String
let NSWebPreferencesDocumentOption: String
let NSWebResourceLoadDelegateDocumentOption: String
let NSTextSizeMultiplierDocumentOption: String
@available(OSX 10.6, *)
let NSFileTypeDocumentOption: String
extension AttributedString {
  @available(OSX 10.11, *)
  init(url: URL, options: [String : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(OSX 10.0, *)
  init(data: Data, options: [String : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) throws
  @available(OSX 10.0, *)
  func dataFrom(range: NSRange, documentAttributes dict: [String : AnyObject] = [:]) throws -> Data
  @available(OSX 10.0, *)
  func fileWrapperFrom(range: NSRange, documentAttributes dict: [String : AnyObject] = [:]) throws -> FileWrapper
  init?(rtf data: Data, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(rtfd data: Data, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(html data: Data, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(html data: Data, baseURL base: URL, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(docFormat data: Data, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(html data: Data, options: [Object : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  init?(rtfdFileWrapper wrapper: FileWrapper, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  func rtfFrom(range: NSRange, documentAttributes dict: [String : AnyObject] = [:]) -> Data?
  func rtfdFrom(range: NSRange, documentAttributes dict: [String : AnyObject] = [:]) -> Data?
  func rtfdFileWrapperFrom(range: NSRange, documentAttributes dict: [String : AnyObject] = [:]) -> FileWrapper?
  func docFormatFrom(range: NSRange, documentAttributes dict: [String : AnyObject] = [:]) -> Data?
}
extension MutableAttributedString {
  @available(OSX 10.11, *)
  func readFrom(url: URL, options opts: [String : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>, error: ()) throws
  @available(OSX 10.0, *)
  func readFrom(data: Data, options opts: [String : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>, error: ()) throws
}
extension AttributedString {
  func fontAttributesIn(range: NSRange) -> [String : AnyObject]
  func rulerAttributesIn(range: NSRange) -> [String : AnyObject]
  @available(OSX 10.11, *)
  func containsAttachmentsIn(range: NSRange) -> Bool
  func lineBreakBefore(location: Int, within aRange: NSRange) -> Int
  func lineBreakByHyphenatingBefore(location: Int, within aRange: NSRange) -> Int
  func doubleClickAt(location: Int) -> NSRange
  func nextWordFrom(location: Int, forward isForward: Bool) -> Int
  func rangeOf(block: NSTextBlock, at location: Int) -> NSRange
  func rangeOf(table: NSTextTable, at location: Int) -> NSRange
  func rangeOf(list: NSTextList, at location: Int) -> NSRange
  func itemNumberIn(list: NSTextList, at location: Int) -> Int
}
extension AttributedString : NSPasteboardReading, NSPasteboardWriting {
  @available(OSX 10.5, *)
  class func textTypes() -> [String]
  @available(OSX 10.5, *)
  class func textUnfilteredTypes() -> [String]
  @available(OSX 10.0, *)
  class func readableTypesFor(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  class func readingOptionsFor(type type: String, pasteboard: NSPasteboard) -> NSPasteboardReadingOptions
  init?(pasteboardPropertyList propertyList: AnyObject, ofType type: String)
  @available(OSX 10.0, *)
  func writableTypesFor(pasteboard: NSPasteboard) -> [String]
  @available(OSX 10.6, *)
  func writingOptionsFor(type type: String, pasteboard: NSPasteboard) -> NSPasteboardWritingOptions
  @available(OSX 10.0, *)
  func pasteboardPropertyListFor(type type: String) -> AnyObject?
}
extension MutableAttributedString {
  func superscriptRange(range: NSRange)
  func subscriptRange(range: NSRange)
  func unscriptRange(range: NSRange)
  func applyFontTraits(traitMask: NSFontTraitMask, range: NSRange)
  func setAlignment(alignment: NSTextAlignment, range: NSRange)
  func setBaseWritingDirection(writingDirection: NSWritingDirection, range: NSRange)
}
@available(OSX, introduced=10.0, deprecated=10.11, message="This attribute is bound to a specific implementation of ATS feature and not generically supported by wide range of fonts. The majority of characters accessed through this API are now encoded in the Unicode standard. Use the CTFont feature API for fine control over character shape choices.")
let NSCharacterShapeAttributeName: String
@available(OSX, introduced=10.8, deprecated=10.11)
let NSUsesScreenFontsDocumentAttribute: String
@available(OSX, introduced=10.0, deprecated=10.11, message="Use NSUnderlineByWord instead")
var NSUnderlineByWordMask: Int
extension AttributedString {
  var containsAttachments: Bool { get }
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -initWithURL:options:documentAttributes:error: instead")
  init?(url: URL, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -initWithURL:options:documentAttributes:error: instead")
  init?(path: String, documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>)
  @available(OSX, introduced=10.5, deprecated=10.11, message="Use NSDataDetector instead")
  func urlAt(location: Int, effectiveRange: RangePointer) -> URL?
}
extension MutableAttributedString {
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -readFromURL:options:documentAttributes:error: instead")
  func readFrom(url: URL, options: [Object : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> Bool
  @available(OSX, introduced=10.0, deprecated=10.11, message="Use -readFromData:options:documentAttributes:error: instead")
  func readFrom(data: Data, options: [Object : AnyObject] = [:], documentAttributes dict: AutoreleasingUnsafeMutablePointer<NSDictionary?>) -> Bool
}
