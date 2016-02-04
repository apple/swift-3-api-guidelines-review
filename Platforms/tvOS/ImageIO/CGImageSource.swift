
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
@available(tvOS 4.0, *)
let kCGImageSourceTypeIdentifierHint: CFString
@available(tvOS 4.0, *)
let kCGImageSourceShouldCache: CFString
@available(tvOS 7.0, *)
let kCGImageSourceShouldCacheImmediately: CFString
@available(tvOS 4.0, *)
let kCGImageSourceShouldAllowFloat: CFString
@available(tvOS 4.0, *)
let kCGImageSourceCreateThumbnailFromImageIfAbsent: CFString
@available(tvOS 4.0, *)
let kCGImageSourceCreateThumbnailFromImageAlways: CFString
@available(tvOS 4.0, *)
let kCGImageSourceThumbnailMaxPixelSize: CFString
@available(tvOS 4.0, *)
let kCGImageSourceCreateThumbnailWithTransform: CFString
@available(tvOS 9.0, *)
let kCGImageSourceSubsampleFactor: CFString
@available(tvOS 4.0, *)
func CGImageSourceGetTypeID() -> CFTypeID
@available(tvOS 4.0, *)
func CGImageSourceCopyTypeIdentifiers() -> CFArray
@available(tvOS 4.0, *)
func CGImageSourceCreateWithDataProvider(provider: CGDataProvider, _ options: CFDictionary?) -> CGImageSource?
@available(tvOS 4.0, *)
func CGImageSourceCreateWithData(data: CFData, _ options: CFDictionary?) -> CGImageSource?
@available(tvOS 4.0, *)
func CGImageSourceCreateWithURL(url: CFURL, _ options: CFDictionary?) -> CGImageSource?
@available(tvOS 4.0, *)
func CGImageSourceGetType(isrc: CGImageSource) -> CFString?
@available(tvOS 4.0, *)
func CGImageSourceGetCount(isrc: CGImageSource) -> Int
@available(tvOS 4.0, *)
func CGImageSourceCopyProperties(isrc: CGImageSource, _ options: CFDictionary?) -> CFDictionary?
@available(tvOS 4.0, *)
func CGImageSourceCopyPropertiesAtIndex(isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CFDictionary?
@available(tvOS 7.0, *)
func CGImageSourceCopyMetadataAtIndex(isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CGImageMetadata?
@available(tvOS 4.0, *)
func CGImageSourceCreateImageAtIndex(isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CGImage?
@available(tvOS 7.0, *)
func CGImageSourceRemoveCacheAtIndex(isrc: CGImageSource, _ index: Int)
@available(tvOS 4.0, *)
func CGImageSourceCreateThumbnailAtIndex(isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CGImage?
@available(tvOS 4.0, *)
func CGImageSourceCreateIncremental(options: CFDictionary?) -> CGImageSource
@available(tvOS 4.0, *)
func CGImageSourceUpdateData(isrc: CGImageSource, _ data: CFData, _ final: Bool)
@available(tvOS 4.0, *)
func CGImageSourceUpdateDataProvider(isrc: CGImageSource, _ provider: CGDataProvider, _ final: Bool)
@available(tvOS 4.0, *)
func CGImageSourceGetStatus(isrc: CGImageSource) -> CGImageSourceStatus
@available(tvOS 4.0, *)
func CGImageSourceGetStatusAtIndex(isrc: CGImageSource, _ index: Int) -> CGImageSourceStatus
