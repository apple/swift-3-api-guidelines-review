
class CFXMLParser {
}
@available(*, deprecated, renamed="CFXMLParser")
typealias CFXMLParserRef = CFXMLParser
struct CFXMLParserOptions : OptionSetType {
  init(rawValue rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var ValidateDocument: CFXMLParserOptions { get }
  static var SkipMetaData: CFXMLParserOptions { get }
  static var ReplacePhysicalEntities: CFXMLParserOptions { get }
  static var SkipWhitespace: CFXMLParserOptions { get }
  static var ResolveExternalEntities: CFXMLParserOptions { get }
  static var AddImpliedAttributes: CFXMLParserOptions { get }
  static var AllOptions: CFXMLParserOptions { get }
  static var NoOptions: CFXMLParserOptions { get }
}
struct CFXMLParserStatusCode : OptionSetType {
  init(rawValue rawValue: CFIndex)
  let rawValue: CFIndex
  static var StatusParseNotBegun: CFXMLParserStatusCode { get }
  static var StatusParseInProgress: CFXMLParserStatusCode { get }
  static var StatusParseSuccessful: CFXMLParserStatusCode { get }
  static var ErrorUnexpectedEOF: CFXMLParserStatusCode { get }
  static var ErrorUnknownEncoding: CFXMLParserStatusCode { get }
  static var ErrorEncodingConversionFailure: CFXMLParserStatusCode { get }
  static var ErrorMalformedProcessingInstruction: CFXMLParserStatusCode { get }
  static var ErrorMalformedDTD: CFXMLParserStatusCode { get }
  static var ErrorMalformedName: CFXMLParserStatusCode { get }
  static var ErrorMalformedCDSect: CFXMLParserStatusCode { get }
  static var ErrorMalformedCloseTag: CFXMLParserStatusCode { get }
  static var ErrorMalformedStartTag: CFXMLParserStatusCode { get }
  static var ErrorMalformedDocument: CFXMLParserStatusCode { get }
  static var ErrorElementlessDocument: CFXMLParserStatusCode { get }
  static var ErrorMalformedComment: CFXMLParserStatusCode { get }
  static var ErrorMalformedCharacterReference: CFXMLParserStatusCode { get }
  static var ErrorMalformedParsedCharacterData: CFXMLParserStatusCode { get }
  static var ErrorNoData: CFXMLParserStatusCode { get }
}
typealias CFXMLParserCreateXMLStructureCallBack = @convention(c) (CFXMLParser!, CFXMLNode!, UnsafeMutablePointer<Void>) -> UnsafeMutablePointer<Void>
typealias CFXMLParserAddChildCallBack = @convention(c) (CFXMLParser!, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> Void
typealias CFXMLParserEndXMLStructureCallBack = @convention(c) (CFXMLParser!, UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>) -> Void
typealias CFXMLParserResolveExternalEntityCallBack = @convention(c) (CFXMLParser!, UnsafeMutablePointer<CFXMLExternalID>, UnsafeMutablePointer<Void>) -> Unmanaged<CFData>!
typealias CFXMLParserHandleErrorCallBack = @convention(c) (CFXMLParser!, CFXMLParserStatusCode, UnsafeMutablePointer<Void>) -> DarwinBoolean
struct CFXMLParserCallBacks {
  var version: CFIndex
  var createXMLStructure: CFXMLParserCreateXMLStructureCallBack!
  var addChild: CFXMLParserAddChildCallBack!
  var endXMLStructure: CFXMLParserEndXMLStructureCallBack!
  var resolveExternalEntity: CFXMLParserResolveExternalEntityCallBack!
  var handleError: CFXMLParserHandleErrorCallBack!
  init()
  init(version version: CFIndex, createXMLStructure createXMLStructure: CFXMLParserCreateXMLStructureCallBack!, addChild addChild: CFXMLParserAddChildCallBack!, endXMLStructure endXMLStructure: CFXMLParserEndXMLStructureCallBack!, resolveExternalEntity resolveExternalEntity: CFXMLParserResolveExternalEntityCallBack!, handleError handleError: CFXMLParserHandleErrorCallBack!)
}
typealias CFXMLParserRetainCallBack = @convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>
typealias CFXMLParserReleaseCallBack = @convention(c) (UnsafePointer<Void>) -> Void
typealias CFXMLParserCopyDescriptionCallBack = @convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>!
struct CFXMLParserContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: CFXMLParserRetainCallBack!
  var release: CFXMLParserReleaseCallBack!
  var copyDescription: CFXMLParserCopyDescriptionCallBack!
  init()
  init(version version: CFIndex, info info: UnsafeMutablePointer<Void>, retain retain: CFXMLParserRetainCallBack!, release release: CFXMLParserReleaseCallBack!, copyDescription copyDescription: CFXMLParserCopyDescriptionCallBack!)
}
func CFXMLCreateStringByEscapingEntities(_ allocator: CFAllocator!, _ string: CFString!, _ entitiesDictionary: CFDictionary!) -> CFString!
func CFXMLCreateStringByUnescapingEntities(_ allocator: CFAllocator!, _ string: CFString!, _ entitiesDictionary: CFDictionary!) -> CFString!
let kCFXMLTreeErrorDescription: CFString!
let kCFXMLTreeErrorLineNumber: CFString!
let kCFXMLTreeErrorLocation: CFString!
let kCFXMLTreeErrorStatusCode: CFString!
