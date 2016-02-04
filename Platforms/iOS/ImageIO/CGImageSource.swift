
class CGImageSource {
}
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
@available(iOS 4.0, *)
let kCGImageSourceTypeIdentifierHint: CFString
@available(iOS 4.0, *)
let kCGImageSourceShouldCache: CFString
@available(iOS 7.0, *)
let kCGImageSourceShouldCacheImmediately: CFString
@available(iOS 4.0, *)
let kCGImageSourceShouldAllowFloat: CFString
@available(iOS 4.0, *)
let kCGImageSourceCreateThumbnailFromImageIfAbsent: CFString
@available(iOS 4.0, *)
let kCGImageSourceCreateThumbnailFromImageAlways: CFString
@available(iOS 4.0, *)
let kCGImageSourceThumbnailMaxPixelSize: CFString
@available(iOS 4.0, *)
let kCGImageSourceCreateThumbnailWithTransform: CFString
@available(iOS 9.0, *)
let kCGImageSourceSubsampleFactor: CFString
@available(iOS 4.0, *)
func CGImageSourceGetTypeID() -> CFTypeID
@available(iOS 4.0, *)
func CGImageSourceCopyTypeIdentifiers() -> CFArray
@available(iOS 4.0, *)
func CGImageSourceCreateWithDataProvider(provider: CGDataProvider, _ options: CFDictionary?) -> CGImageSource?
@available(iOS 4.0, *)
func CGImageSourceCreateWithData(data: CFData, _ options: CFDictionary?) -> CGImageSource?
@available(iOS 4.0, *)
func CGImageSourceCreateWithURL(url: CFURL, _ options: CFDictionary?) -> CGImageSource?
@available(iOS 4.0, *)
func CGImageSourceGetType(isrc: CGImageSource) -> CFString?
@available(iOS 4.0, *)
func CGImageSourceGetCount(isrc: CGImageSource) -> Int
@available(iOS 4.0, *)
func CGImageSourceCopyProperties(isrc: CGImageSource, _ options: CFDictionary?) -> CFDictionary?
@available(iOS 4.0, *)
func CGImageSourceCopyPropertiesAtIndex(isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CFDictionary?
@available(iOS 7.0, *)
func CGImageSourceCopyMetadataAtIndex(isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CGImageMetadata?
@available(iOS 4.0, *)
func CGImageSourceCreateImageAtIndex(isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CGImage?
@available(iOS 7.0, *)
func CGImageSourceRemoveCacheAtIndex(isrc: CGImageSource, _ index: Int)
@available(iOS 4.0, *)
func CGImageSourceCreateThumbnailAtIndex(isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CGImage?
@available(iOS 4.0, *)
func CGImageSourceCreateIncremental(options: CFDictionary?) -> CGImageSource
@available(iOS 4.0, *)
func CGImageSourceUpdateData(isrc: CGImageSource, _ data: CFData, _ final: Bool)
@available(iOS 4.0, *)
func CGImageSourceUpdateDataProvider(isrc: CGImageSource, _ provider: CGDataProvider, _ final: Bool)
@available(iOS 4.0, *)
func CGImageSourceGetStatus(isrc: CGImageSource) -> CGImageSourceStatus
@available(iOS 4.0, *)
func CGImageSourceGetStatusAtIndex(isrc: CGImageSource, _ index: Int) -> CGImageSourceStatus
