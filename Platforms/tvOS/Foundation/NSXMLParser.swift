
@available(tvOS 8.0, *)
enum NSXMLParserExternalEntityResolvingPolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ResolveExternalEntitiesNever
  case ResolveExternalEntitiesNoNetwork
  case ResolveExternalEntitiesSameOriginOnly
  case ResolveExternalEntitiesAlways
}
class NSXMLParser : NSObject {
  convenience init?(contentsOfURL url: NSURL)
  init(data: NSData)
  @available(tvOS 5.0, *)
  convenience init(stream: NSInputStream)
  unowned(unsafe) var delegate: @sil_unmanaged NSXMLParserDelegate?
  var shouldProcessNamespaces: Bool
  var shouldReportNamespacePrefixes: Bool
  @available(tvOS 8.0, *)
  var externalEntityResolvingPolicy: NSXMLParserExternalEntityResolvingPolicy
  @available(tvOS 8.0, *)
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
  optional func parser(parser: NSXMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String])
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
@available(tvOS 2.0, *)
let NSXMLParserErrorDomain: String
enum NSXMLParserError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case InternalError
  case OutOfMemoryError
  case DocumentStartError
  case EmptyDocumentError
  case PrematureDocumentEndError
  case InvalidHexCharacterRefError
  case InvalidDecimalCharacterRefError
  case InvalidCharacterRefError
  case InvalidCharacterError
  case CharacterRefAtEOFError
  case CharacterRefInPrologError
  case CharacterRefInEpilogError
  case CharacterRefInDTDError
  case EntityRefAtEOFError
  case EntityRefInPrologError
  case EntityRefInEpilogError
  case EntityRefInDTDError
  case ParsedEntityRefAtEOFError
  case ParsedEntityRefInPrologError
  case ParsedEntityRefInEpilogError
  case ParsedEntityRefInInternalSubsetError
  case EntityReferenceWithoutNameError
  case EntityReferenceMissingSemiError
  case ParsedEntityRefNoNameError
  case ParsedEntityRefMissingSemiError
  case UndeclaredEntityError
  case UnparsedEntityError
  case EntityIsExternalError
  case EntityIsParameterError
  case UnknownEncodingError
  case EncodingNotSupportedError
  case StringNotStartedError
  case StringNotClosedError
  case NamespaceDeclarationError
  case EntityNotStartedError
  case EntityNotFinishedError
  case LessThanSymbolInAttributeError
  case AttributeNotStartedError
  case AttributeNotFinishedError
  case AttributeHasNoValueError
  case AttributeRedefinedError
  case LiteralNotStartedError
  case LiteralNotFinishedError
  case CommentNotFinishedError
  case ProcessingInstructionNotStartedError
  case ProcessingInstructionNotFinishedError
  case NotationNotStartedError
  case NotationNotFinishedError
  case AttributeListNotStartedError
  case AttributeListNotFinishedError
  case MixedContentDeclNotStartedError
  case MixedContentDeclNotFinishedError
  case ElementContentDeclNotStartedError
  case ElementContentDeclNotFinishedError
  case XMLDeclNotStartedError
  case XMLDeclNotFinishedError
  case ConditionalSectionNotStartedError
  case ConditionalSectionNotFinishedError
  case ExternalSubsetNotFinishedError
  case DOCTYPEDeclNotFinishedError
  case MisplacedCDATAEndStringError
  case CDATANotFinishedError
  case MisplacedXMLDeclarationError
  case SpaceRequiredError
  case SeparatorRequiredError
  case NMTOKENRequiredError
  case NAMERequiredError
  case PCDATARequiredError
  case URIRequiredError
  case PublicIdentifierRequiredError
  case LTRequiredError
  case GTRequiredError
  case LTSlashRequiredError
  case EqualExpectedError
  case TagNameMismatchError
  case UnfinishedTagError
  case StandaloneValueError
  case InvalidEncodingNameError
  case CommentContainsDoubleHyphenError
  case InvalidEncodingError
  case ExternalStandaloneEntityError
  case InvalidConditionalSectionError
  case EntityValueRequiredError
  case NotWellBalancedError
  case ExtraContentError
  case InvalidCharacterInEntityError
  case ParsedEntityRefInInternalError
  case EntityRefLoopError
  case EntityBoundaryError
  case InvalidURIError
  case URIFragmentError
  case NoDTDError
  case DelegateAbortedParseError
}
