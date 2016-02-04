
class CGImageDestination {
}
@available(*, deprecated, renamed="CGImageDestination")
typealias CGImageDestinationRef = CGImageDestination
@available(OSX 10.4, *)
let kCGImageDestinationLossyCompressionQuality: CFString
@available(OSX 10.4, *)
let kCGImageDestinationBackgroundColor: CFString
@available(OSX 10.10, *)
let kCGImageDestinationImageMaxPixelSize: CFString
@available(OSX 10.10, *)
let kCGImageDestinationEmbedThumbnail: CFString
@available(OSX 10.4, *)
func CGImageDestinationGetTypeID() -> CFTypeID
@available(OSX 10.4, *)
func CGImageDestinationCopyTypeIdentifiers() -> CFArray
@available(OSX 10.4, *)
func CGImageDestinationCreateWithDataConsumer(consumer: CGDataConsumer, _ type: CFString, _ count: Int, _ options: CFDictionary?) -> CGImageDestination?
@available(OSX 10.4, *)
func CGImageDestinationCreateWithData(data: CFMutableData, _ type: CFString, _ count: Int, _ options: CFDictionary?) -> CGImageDestination?
@available(OSX 10.4, *)
func CGImageDestinationCreateWithURL(url: CFURL, _ type: CFString, _ count: Int, _ options: CFDictionary?) -> CGImageDestination?
@available(OSX 10.4, *)
func CGImageDestinationSetProperties(idst: CGImageDestination, _ properties: CFDictionary?)
@available(OSX 10.4, *)
func CGImageDestinationAddImage(idst: CGImageDestination, _ image: CGImage, _ properties: CFDictionary?)
@available(OSX 10.4, *)
func CGImageDestinationAddImageFromSource(idst: CGImageDestination, _ isrc: CGImageSource, _ index: Int, _ properties: CFDictionary?)
@available(OSX 10.4, *)
func CGImageDestinationFinalize(idst: CGImageDestination) -> Bool
@available(OSX 10.8, *)
func CGImageDestinationAddImageAndMetadata(idst: CGImageDestination, _ image: CGImage, _ metadata: CGImageMetadata?, _ options: CFDictionary?)
@available(OSX 10.8, *)
let kCGImageDestinationMetadata: CFString
@available(OSX 10.8, *)
let kCGImageDestinationMergeMetadata: CFString
@available(OSX 10.8, *)
let kCGImageMetadataShouldExcludeXMP: CFString
@available(OSX 10.10, *)
let kCGImageMetadataShouldExcludeGPS: CFString
@available(OSX 10.8, *)
let kCGImageDestinationDateTime: CFString
@available(OSX 10.8, *)
let kCGImageDestinationOrientation: CFString
@available(OSX 10.8, *)
func CGImageDestinationCopyImageSource(idst: CGImageDestination, _ isrc: CGImageSource, _ options: CFDictionary?, _ err: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
