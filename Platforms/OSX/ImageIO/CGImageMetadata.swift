
class CGImageMetadata {
}
@available(*, deprecated, renamed="CGImageMetadata")
typealias CGImageMetadataRef = CGImageMetadata
func CGImageMetadataGetTypeID() -> CFTypeID
@available(*, deprecated, renamed="CGMutableImageMetadata")
typealias CGMutableImageMetadataRef = CGMutableImageMetadata
class CGMutableImageMetadata {
}
@available(OSX 10.8, *)
func CGImageMetadataCreateMutable() -> CGMutableImageMetadata
@available(OSX 10.8, *)
func CGImageMetadataCreateMutableCopy(metadata: CGImageMetadata) -> CGMutableImageMetadata?
@available(*, deprecated, renamed="CGImageMetadataTag")
typealias CGImageMetadataTagRef = CGImageMetadataTag
class CGImageMetadataTag {
}
@available(OSX 10.8, *)
func CGImageMetadataTagGetTypeID() -> CFTypeID
@available(OSX 10.8, *)
let kCGImageMetadataNamespaceExif: CFString
@available(OSX 10.8, *)
let kCGImageMetadataNamespaceExifAux: CFString
@available(OSX 10.9, *)
let kCGImageMetadataNamespaceExifEX: CFString
@available(OSX 10.8, *)
let kCGImageMetadataNamespaceDublinCore: CFString
@available(OSX 10.8, *)
let kCGImageMetadataNamespaceIPTCCore: CFString
@available(OSX 10.8, *)
let kCGImageMetadataNamespacePhotoshop: CFString
@available(OSX 10.8, *)
let kCGImageMetadataNamespaceTIFF: CFString
@available(OSX 10.8, *)
let kCGImageMetadataNamespaceXMPBasic: CFString
@available(OSX 10.8, *)
let kCGImageMetadataNamespaceXMPRights: CFString
@available(OSX 10.8, *)
let kCGImageMetadataPrefixExif: CFString
@available(OSX 10.8, *)
let kCGImageMetadataPrefixExifAux: CFString
@available(OSX 10.9, *)
let kCGImageMetadataPrefixExifEX: CFString
@available(OSX 10.8, *)
let kCGImageMetadataPrefixDublinCore: CFString
@available(OSX 10.8, *)
let kCGImageMetadataPrefixIPTCCore: CFString
@available(OSX 10.8, *)
let kCGImageMetadataPrefixPhotoshop: CFString
@available(OSX 10.8, *)
let kCGImageMetadataPrefixTIFF: CFString
@available(OSX 10.8, *)
let kCGImageMetadataPrefixXMPBasic: CFString
@available(OSX 10.8, *)
let kCGImageMetadataPrefixXMPRights: CFString
enum CGImageMetadataType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Invalid
  case Default
  case String
  case ArrayUnordered
  case ArrayOrdered
  case AlternateArray
  case AlternateText
  case Structure
}
@available(OSX 10.8, *)
func CGImageMetadataTagCreate(xmlns: CFString, _ prefix: CFString?, _ name: CFString, _ type: CGImageMetadataType, _ value: CFTypeRef) -> CGImageMetadataTag?
@available(OSX 10.8, *)
func CGImageMetadataTagCopyNamespace(tag: CGImageMetadataTag) -> CFString?
@available(OSX 10.8, *)
func CGImageMetadataTagCopyPrefix(tag: CGImageMetadataTag) -> CFString?
@available(OSX 10.8, *)
func CGImageMetadataTagCopyName(tag: CGImageMetadataTag) -> CFString?
@available(OSX 10.8, *)
func CGImageMetadataTagCopyValue(tag: CGImageMetadataTag) -> CFTypeRef?
@available(OSX 10.8, *)
func CGImageMetadataTagGetType(tag: CGImageMetadataTag) -> CGImageMetadataType
@available(OSX 10.8, *)
func CGImageMetadataTagCopyQualifiers(tag: CGImageMetadataTag) -> CFArray?
@available(OSX 10.8, *)
func CGImageMetadataCopyTags(metadata: CGImageMetadata) -> CFArray?
@available(OSX 10.8, *)
func CGImageMetadataCopyTagWithPath(metadata: CGImageMetadata, _ parent: CGImageMetadataTag?, _ path: CFString) -> CGImageMetadataTag?
@available(OSX 10.8, *)
func CGImageMetadataCopyStringValueWithPath(metadata: CGImageMetadata, _ parent: CGImageMetadataTag?, _ path: CFString) -> CFString?
@available(OSX 10.8, *)
func CGImageMetadataRegisterNamespaceForPrefix(metadata: CGMutableImageMetadata, _ xmlns: CFString, _ prefix: CFString, _ err: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(OSX 10.8, *)
func CGImageMetadataSetTagWithPath(metadata: CGMutableImageMetadata, _ parent: CGImageMetadataTag?, _ path: CFString, _ tag: CGImageMetadataTag) -> Bool
@available(OSX 10.8, *)
func CGImageMetadataSetValueWithPath(metadata: CGMutableImageMetadata, _ parent: CGImageMetadataTag?, _ path: CFString, _ value: CFTypeRef) -> Bool
@available(OSX 10.8, *)
func CGImageMetadataRemoveTagWithPath(metadata: CGMutableImageMetadata, _ parent: CGImageMetadataTag?, _ path: CFString) -> Bool
typealias CGImageMetadataTagBlock = (CFString, CGImageMetadataTag) -> Bool
@available(OSX 10.8, *)
func CGImageMetadataEnumerateTagsUsingBlock(metadata: CGImageMetadata, _ rootPath: CFString?, _ options: CFDictionary?, _ block: CGImageMetadataTagBlock)
@available(OSX 10.8, *)
let kCGImageMetadataEnumerateRecursively: CFString
@available(OSX 10.8, *)
func CGImageMetadataCopyTagMatchingImageProperty(metadata: CGImageMetadata, _ dictionaryName: CFString, _ propertyName: CFString) -> CGImageMetadataTag?
@available(OSX 10.8, *)
func CGImageMetadataSetValueMatchingImageProperty(metadata: CGMutableImageMetadata, _ dictionaryName: CFString, _ propertyName: CFString, _ value: CFTypeRef) -> Bool
@available(OSX 10.8, *)
func CGImageMetadataCreateXMPData(metadata: CGImageMetadata, _ options: CFDictionary?) -> CFData?
@available(OSX 10.8, *)
func CGImageMetadataCreateFromXMPData(data: CFData) -> CGImageMetadata?
let kCFErrorDomainCGImageMetadata: CFString
enum CGImageMetadataErrors : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Unknown
  case UnsupportedFormat
  case BadArgument
  case ConflictingArguments
  case PrefixConflict
}
