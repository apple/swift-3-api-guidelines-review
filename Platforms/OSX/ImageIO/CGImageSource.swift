
class CGImageSource {
}
enum CGImageSourceStatus : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case statusUnexpectedEOF
  case statusInvalidData
  case statusUnknownType
  case statusReadingHeader
  case statusIncomplete
  case statusComplete
}
@available(OSX 10.4, *)
let kCGImageSourceTypeIdentifierHint: CFString
@available(OSX 10.4, *)
let kCGImageSourceShouldCache: CFString
@available(OSX 10.9, *)
let kCGImageSourceShouldCacheImmediately: CFString
@available(OSX 10.4, *)
let kCGImageSourceShouldAllowFloat: CFString
@available(OSX 10.4, *)
let kCGImageSourceCreateThumbnailFromImageIfAbsent: CFString
@available(OSX 10.4, *)
let kCGImageSourceCreateThumbnailFromImageAlways: CFString
@available(OSX 10.4, *)
let kCGImageSourceThumbnailMaxPixelSize: CFString
@available(OSX 10.4, *)
let kCGImageSourceCreateThumbnailWithTransform: CFString
@available(OSX 10.11, *)
let kCGImageSourceSubsampleFactor: CFString
@available(OSX 10.4, *)
func CGImageSourceGetTypeID() -> CFTypeID
@available(OSX 10.4, *)
func CGImageSourceCopyTypeIdentifiers() -> CFArray
@available(OSX 10.4, *)
func CGImageSourceCreateWithDataProvider(provider: CGDataProvider, _ options: CFDictionary?) -> CGImageSource?
@available(OSX 10.4, *)
func CGImageSourceCreateWithData(data: CFData, _ options: CFDictionary?) -> CGImageSource?
@available(OSX 10.4, *)
func CGImageSourceCreateWithURL(url: CFURL, _ options: CFDictionary?) -> CGImageSource?
@available(OSX 10.4, *)
func CGImageSourceGetType(isrc: CGImageSource) -> CFString?
@available(OSX 10.4, *)
func CGImageSourceGetCount(isrc: CGImageSource) -> Int
@available(OSX 10.4, *)
func CGImageSourceCopyProperties(isrc: CGImageSource, _ options: CFDictionary?) -> CFDictionary?
@available(OSX 10.4, *)
func CGImageSourceCopyPropertiesAtIndex(isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CFDictionary?
@available(OSX 10.8, *)
func CGImageSourceCopyMetadataAtIndex(isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CGImageMetadata?
@available(OSX 10.4, *)
func CGImageSourceCreateImageAtIndex(isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CGImage?
@available(OSX 10.9, *)
func CGImageSourceRemoveCacheAtIndex(isrc: CGImageSource, _ index: Int)
@available(OSX 10.4, *)
func CGImageSourceCreateThumbnailAtIndex(isrc: CGImageSource, _ index: Int, _ options: CFDictionary?) -> CGImage?
@available(OSX 10.4, *)
func CGImageSourceCreateIncremental(options: CFDictionary?) -> CGImageSource
@available(OSX 10.4, *)
func CGImageSourceUpdateData(isrc: CGImageSource, _ data: CFData, _ final: Bool)
@available(OSX 10.4, *)
func CGImageSourceUpdateDataProvider(isrc: CGImageSource, _ provider: CGDataProvider, _ final: Bool)
@available(OSX 10.4, *)
func CGImageSourceGetStatus(isrc: CGImageSource) -> CGImageSourceStatus
@available(OSX 10.4, *)
func CGImageSourceGetStatusAtIndex(isrc: CGImageSource, _ index: Int) -> CGImageSourceStatus
