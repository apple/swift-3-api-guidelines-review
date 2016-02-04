
class CGImageSource {
}
@available(*, deprecated, renamed="CGImageSource")
typealias CGImageSourceRef = CGImageSource
enum CGImageSourceStatus : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case StatusUnexpectedEOF
  case StatusInvalidData
  case StatusUnknownType
  case StatusReadingHeader
  case StatusIncomplete
  case StatusComplete
}
@available(watchOS 2.0, *)
let kCGImageSourceTypeIdentifierHint: CFString
@available(watchOS 2.0, *)
let kCGImageSourceShouldCache: CFString
@available(watchOS 2.0, *)
let kCGImageSourceShouldCacheImmediately: CFString
@available(watchOS 2.0, *)
let kCGImageSourceShouldAllowFloat: CFString
@available(watchOS 2.0, *)
let kCGImageSourceCreateThumbnailFromImageIfAbsent: CFString
@available(watchOS 2.0, *)
let kCGImageSourceCreateThumbnailFromImageAlways: CFString
@available(watchOS 2.0, *)
let kCGImageSourceThumbnailMaxPixelSize: CFString
@available(watchOS 2.0, *)
let kCGImageSourceCreateThumbnailWithTransform: CFString
@available(watchOS 2.0, *)
let kCGImageSourceSubsampleFactor: CFString
@available(watchOS 2.0, *)
func CGImageSourceGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
func CGImageSourceCopyTypeIdentifiers() -> CFArray
@available(watchOS 2.0, *)
func CGImageSourceCreateWithDataProvider(provider: CGDataProvider, _ options: CFDictionary?) -> CGImageSource?
@available(watchOS 2.0, *)
func CGImageSourceCreateWithData(data: CFData, _ options: CFDictionary?) -> CGImageSource?
@available(watchOS 2.0, *)
func CGImageSourceCreateWithURL(url: CFURL, _ options: CFDictionary?) -> CGImageSource?
@available(watchOS 2.0, *)
func CGImageSourceGetType(isrc: CGImageSource) -> CFString?
@available(watchOS 2.0, *)
func CGImageSourceGetCount(isrc: CGImageSource) -> Int
@available(watchOS 2.0, *)
func CGImageSourceCopyProperties(isrc: CGImageSource, _ options: CFDictionary?) -> CFDictionary?
@available(watchOS 2.0, *)
func CGImageSourceCopyPropertiesAtIndex(isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CFDictionary?
@available(watchOS 2.0, *)
func CGImageSourceCopyMetadataAtIndex(isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CGImageMetadata?
@available(watchOS 2.0, *)
func CGImageSourceCreateImageAtIndex(isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CGImage?
@available(watchOS 2.0, *)
func CGImageSourceRemoveCacheAtIndex(isrc: CGImageSource, _ index: Int)
@available(watchOS 2.0, *)
func CGImageSourceCreateThumbnailAtIndex(isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CGImage?
@available(watchOS 2.0, *)
func CGImageSourceCreateIncremental(options: CFDictionary?) -> CGImageSource
@available(watchOS 2.0, *)
func CGImageSourceUpdateData(isrc: CGImageSource, _ data: CFData, _ final: Bool)
@available(watchOS 2.0, *)
func CGImageSourceUpdateDataProvider(isrc: CGImageSource, _ provider: CGDataProvider, _ final: Bool)
@available(watchOS 2.0, *)
func CGImageSourceGetStatus(isrc: CGImageSource) -> CGImageSourceStatus
@available(watchOS 2.0, *)
func CGImageSourceGetStatusAtIndex(isrc: CGImageSource, _ index: Int) -> CGImageSourceStatus
