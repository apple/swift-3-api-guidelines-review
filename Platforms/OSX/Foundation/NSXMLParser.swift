
@available(OSX 10.9, *)
enum NSXMLParserExternalEntityResolvingPolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case resolveExternalEntitiesNever
  case resolveExternalEntitiesNoNetwork
  case resolveExternalEntitiesSameOriginOnly
  case resolveExternalEntitiesAlways
}
class NSXMLParser : NSObject {
  convenience init?(contentsOf url: NSURL)
  init(data: NSData)
  @available(OSX 10.7, *)
  convenience init(stream: NSInputStream)
  unowned(unsafe) var delegate: @sil_unmanaged NSXMLParserDelegate?
  var shouldProcessNamespaces: Bool
  var shouldReportNamespacePrefixes: Bool
  @available(OSX 10.9, *)
  var externalEntityResolvingPolicy: NSXMLParserExternalEntityResolvingPolicy
  @available(OSX 10.9, *)
  var allowedExternalEntityURLs: Set<NSURL>?
  func parse() -> Bool
  func abortParsing()
  @NSCopying var parserError: NSError? { get }
  var shouldResolveExternalEntities: Bool
  convenience init()
}
extension NSXMLParser {
  var publicID: String? { get }
  var systemID: String? { get }
  var lineNumber: Int { get }
  var columnNumber: Int { get }
}
protocol NSXMLParserDelegate : NSObjectProtocol {
  optional func parserDidStartDocument(parser: NSXMLParser)
  optional func parserDidEndDocument(parser: NSXMLParser)
  optional func parser(parser: NSXMLParser, foundNotationDeclarationWithName name: String, publicID: String?, systemID: String?)
  optional func parser(parser: NSXMLParser, foundUnparsedEntityDeclarationWithName name: String, publicID: String?, systemID: String?, notationName: String?)
  optional func parser(parser: NSXMLParser, foundAttributeDeclarationWithName attributeName: String, forElement elementName: String, type: String?, defaultValue: String?)
  optional func parser(parser: NSXMLParser, foundElementDeclarationWithName elementName: String, model: String)
  optional func parser(parser: NSXMLParser, foundInternalEntityDeclarationWithName name: String, value: String?)
  optional func parser(parser: NSXMLParser, foundExternalEntityDeclarationWithName name: String, publicID: String?, systemID: String?)
  optional func parser(parser: NSXMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:])
  optional func parser(parser: NSXMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?)
  optional func parser(parser: NSXMLParser, didStartMappingPrefix prefix: String, toURI namespaceURI: String)
  optional func parser(parser: NSXMLParser, didEndMappingPrefix prefix: String)
  optional func parser(parser: NSXMLParser, foundCharacters string: String)
  optional func parser(parser: NSXMLParser, foundIgnorableWhitespace whitespaceString: String)
  optional func parser(parser: NSXMLParser, foundProcessingInstructionWithTarget target: String, data: String?)
  optional func parser(parser: NSXMLParser, foundComment comment: String)
  optional func parser(parser: NSXMLParser, foundCDATA CDATABlock: NSData)
  optional func parser(parser: NSXMLParser, resolveExternalEntityName name: String, systemID: String?) -> NSData?
  optional func parser(parser: NSXMLParser, parseErrorOccurred parseError: NSError)
  optional func parser(parser: NSXMLParser, validationErrorOccurred validationError: NSError)
}
@available(OSX 10.3, *)
let NSXMLParserErrorDomain: String
enum NSXMLParserError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case internalError
  case outOfMemoryError
  case documentStartError
  case emptyDocumentError
  case prematureDocumentEndError
  case invalidHexCharacterRefError
  case invalidDecimalCharacterRefError
  case invalidCharacterRefError
  case invalidCharacterError
  case characterRefAtEOFError
  case characterRefInPrologError
  case characterRefInEpilogError
  case characterRefInDTDError
  case entityRefAtEOFError
  case entityRefInPrologError
  case entityRefInEpilogError
  case entityRefInDTDError
  case parsedEntityRefAtEOFError
  case parsedEntityRefInPrologError
  case parsedEntityRefInEpilogError
  case parsedEntityRefInInternalSubsetError
  case entityReferenceWithoutNameError
  case entityReferenceMissingSemiError
  case parsedEntityRefNoNameError
  case parsedEntityRefMissingSemiError
  case undeclaredEntityError
  case unparsedEntityError
  case entityIsExternalError
  case entityIsParameterError
  case unknownEncodingError
  case encodingNotSupportedError
  case stringNotStartedError
  case stringNotClosedError
  case namespaceDeclarationError
  case entityNotStartedError
  case entityNotFinishedError
  case lessThanSymbolInAttributeError
  case attributeNotStartedError
  case attributeNotFinishedError
  case attributeHasNoValueError
  case attributeRedefinedError
  case literalNotStartedError
  case literalNotFinishedError
  case commentNotFinishedError
  case processingInstructionNotStartedError
  case processingInstructionNotFinishedError
  case notationNotStartedError
  case notationNotFinishedError
  case attributeListNotStartedError
  case attributeListNotFinishedError
  case mixedContentDeclNotStartedError
  case mixedContentDeclNotFinishedError
  case elementContentDeclNotStartedError
  case elementContentDeclNotFinishedError
  case xmlDeclNotStartedError
  case xmlDeclNotFinishedError
  case conditionalSectionNotStartedError
  case conditionalSectionNotFinishedError
  case externalSubsetNotFinishedError
  case doctypeDeclNotFinishedError
  case misplacedCDATAEndStringError
  case cdataNotFinishedError
  case misplacedXMLDeclarationError
  case spaceRequiredError
  case separatorRequiredError
  case nmtokenRequiredError
  case nameRequiredError
  case pcdataRequiredError
  case uriRequiredError
  case publicIdentifierRequiredError
  case ltRequiredError
  case gtRequiredError
  case ltSlashRequiredError
  case equalExpectedError
  case tagNameMismatchError
  case unfinishedTagError
  case standaloneValueError
  case invalidEncodingNameError
  case commentContainsDoubleHyphenError
  case invalidEncodingError
  case externalStandaloneEntityError
  case invalidConditionalSectionError
  case entityValueRequiredError
  case notWellBalancedError
  case extraContentError
  case invalidCharacterInEntityError
  case parsedEntityRefInInternalError
  case entityRefLoopError
  case entityBoundaryError
  case invalidURIError
  case uriFragmentError
  case nodtdError
  case delegateAbortedParseError
}
