
var kCMFormatDescriptionBridgeError_InvalidParameter: OSStatus { get }
var kCMFormatDescriptionBridgeError_AllocationFailed: OSStatus { get }
var kCMFormatDescriptionBridgeError_InvalidSerializedSampleDescription: OSStatus { get }
var kCMFormatDescriptionBridgeError_InvalidFormatDescription: OSStatus { get }
var kCMFormatDescriptionBridgeError_IncompatibleFormatDescription: OSStatus { get }
var kCMFormatDescriptionBridgeError_UnsupportedSampleDescriptionFlavor: OSStatus { get }
var kCMFormatDescriptionBridgeError_InvalidSlice: OSStatus { get }
@available(iOS 8.0, *)
let kCMImageDescriptionFlavor_QuickTimeMovie: CFString
@available(iOS 8.0, *)
let kCMImageDescriptionFlavor_ISOFamily: CFString
@available(iOS 8.0, *)
let kCMImageDescriptionFlavor_3GPFamily: CFString
@available(iOS 8.0, *)
func CMVideoFormatDescriptionCreateFromBigEndianImageDescriptionData(_ allocator: CFAllocator?, _ imageDescriptionData: UnsafePointer<UInt8>, _ imageDescriptionSize: Int, _ imageDescriptionStringEncoding: CFStringEncoding, _ imageDescriptionFlavor: CFString?, _ videoFormatDescriptionOut: UnsafeMutablePointer<CMVideoFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMVideoFormatDescriptionCreateFromBigEndianImageDescriptionBlockBuffer(_ allocator: CFAllocator?, _ imageDescriptionBlockBuffer: CMBlockBuffer, _ imageDescriptionStringEncoding: CFStringEncoding, _ imageDescriptionFlavor: CFString?, _ videoFormatDescriptionOut: UnsafeMutablePointer<CMVideoFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMVideoFormatDescriptionCopyAsBigEndianImageDescriptionBlockBuffer(_ allocator: CFAllocator?, _ videoFormatDescription: CMVideoFormatDescription, _ imageDescriptionStringEncoding: CFStringEncoding, _ imageDescriptionFlavor: CFString?, _ imageDescriptionBlockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(iOS 8.0, *)
func CMSwapBigEndianImageDescriptionToHost(_ imageDescriptionData: UnsafeMutablePointer<UInt8>, _ imageDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
func CMSwapHostEndianImageDescriptionToBig(_ imageDescriptionData: UnsafeMutablePointer<UInt8>, _ imageDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
let kCMSoundDescriptionFlavor_QuickTimeMovie: CFString
@available(iOS 8.0, *)
let kCMSoundDescriptionFlavor_QuickTimeMovieV2: CFString
@available(iOS 8.0, *)
let kCMSoundDescriptionFlavor_ISOFamily: CFString
@available(iOS 8.0, *)
let kCMSoundDescriptionFlavor_3GPFamily: CFString
@available(iOS 8.0, *)
func CMAudioFormatDescriptionCreateFromBigEndianSoundDescriptionData(_ allocator: CFAllocator?, _ soundDescriptionData: UnsafePointer<UInt8>, _ soundDescriptionSize: Int, _ soundDescriptionFlavor: CFString?, _ audioFormatDescriptionOut: UnsafeMutablePointer<CMAudioFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMAudioFormatDescriptionCreateFromBigEndianSoundDescriptionBlockBuffer(_ allocator: CFAllocator?, _ soundDescriptionBlockBuffer: CMBlockBuffer, _ soundDescriptionFlavor: CFString?, _ audioFormatDescriptionOut: UnsafeMutablePointer<CMAudioFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMAudioFormatDescriptionCopyAsBigEndianSoundDescriptionBlockBuffer(_ allocator: CFAllocator?, _ audioFormatDescription: CMAudioFormatDescription, _ soundDescriptionFlavor: CFString?, _ soundDescriptionBlockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(iOS 8.0, *)
func CMDoesBigEndianSoundDescriptionRequireLegacyCBRSampleTableLayout(_ soundDescriptionBlockBuffer: CMBlockBuffer, _ soundDescriptionFlavor: CFString?) -> Bool
@available(iOS 8.0, *)
func CMSwapBigEndianSoundDescriptionToHost(_ soundDescriptionData: UnsafeMutablePointer<UInt8>, _ soundDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
func CMSwapHostEndianSoundDescriptionToBig(_ soundDescriptionData: UnsafeMutablePointer<UInt8>, _ soundDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
func CMTextFormatDescriptionCreateFromBigEndianTextDescriptionData(_ allocator: CFAllocator?, _ textDescriptionData: UnsafePointer<UInt8>, _ textDescriptionSize: Int, _ textDescriptionFlavor: CFString?, _ mediaType: CMMediaType, _ textFormatDescriptionOut: UnsafeMutablePointer<CMTextFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMTextFormatDescriptionCreateFromBigEndianTextDescriptionBlockBuffer(_ allocator: CFAllocator?, _ textDescriptionBlockBuffer: CMBlockBuffer, _ textDescriptionFlavor: CFString?, _ mediaType: CMMediaType, _ textFormatDescriptionOut: UnsafeMutablePointer<CMTextFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer(_ allocator: CFAllocator?, _ textFormatDescription: CMTextFormatDescription, _ textDescriptionFlavor: CFString?, _ textDescriptionBlockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(iOS 8.0, *)
func CMSwapBigEndianTextDescriptionToHost(_ textDescriptionData: UnsafeMutablePointer<UInt8>, _ textDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
func CMSwapHostEndianTextDescriptionToBig(_ textDescriptionData: UnsafeMutablePointer<UInt8>, _ textDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
func CMClosedCaptionFormatDescriptionCreateFromBigEndianClosedCaptionDescriptionData(_ allocator: CFAllocator?, _ closedCaptionDescriptionData: UnsafePointer<UInt8>, _ closedCaptionDescriptionSize: Int, _ closedCaptionDescriptionFlavor: CFString?, _ closedCaptionFormatDescriptionOut: UnsafeMutablePointer<CMClosedCaptionFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMClosedCaptionFormatDescriptionCreateFromBigEndianClosedCaptionDescriptionBlockBuffer(_ allocator: CFAllocator?, _ closedCaptionDescriptionBlockBuffer: CMBlockBuffer, _ closedCaptionDescriptionFlavor: CFString?, _ closedCaptionFormatDescriptionOut: UnsafeMutablePointer<CMClosedCaptionFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMClosedCaptionFormatDescriptionCopyAsBigEndianClosedCaptionDescriptionBlockBuffer(_ allocator: CFAllocator?, _ closedCaptionFormatDescription: CMClosedCaptionFormatDescription, _ closedCaptionDescriptionFlavor: CFString?, _ closedCaptionDescriptionBlockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(iOS 8.0, *)
func CMSwapBigEndianClosedCaptionDescriptionToHost(_ closedCaptionDescriptionData: UnsafeMutablePointer<UInt8>, _ closedCaptionDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
func CMSwapHostEndianClosedCaptionDescriptionToBig(_ closedCaptionDescriptionData: UnsafeMutablePointer<UInt8>, _ closedCaptionDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
func CMTimeCodeFormatDescriptionCreateFromBigEndianTimeCodeDescriptionData(_ allocator: CFAllocator?, _ timeCodeDescriptionData: UnsafePointer<UInt8>, _ timeCodeDescriptionSize: Int, _ timeCodeDescriptionFlavor: CFString?, _ timeCodeFormatDescriptionOut: UnsafeMutablePointer<CMTimeCodeFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMTimeCodeFormatDescriptionCreateFromBigEndianTimeCodeDescriptionBlockBuffer(_ allocator: CFAllocator?, _ timeCodeDescriptionBlockBuffer: CMBlockBuffer, _ timeCodeDescriptionFlavor: CFString?, _ timeCodeFormatDescriptionOut: UnsafeMutablePointer<CMTimeCodeFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMTimeCodeFormatDescriptionCopyAsBigEndianTimeCodeDescriptionBlockBuffer(_ allocator: CFAllocator?, _ timeCodeFormatDescription: CMTimeCodeFormatDescription, _ timeCodeDescriptionFlavor: CFString?, _ timeCodeDescriptionBlockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(iOS 8.0, *)
func CMSwapBigEndianTimeCodeDescriptionToHost(_ timeCodeDescriptionData: UnsafeMutablePointer<UInt8>, _ timeCodeDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
func CMSwapHostEndianTimeCodeDescriptionToBig(_ timeCodeDescriptionData: UnsafeMutablePointer<UInt8>, _ timeCodeDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
func CMMetadataFormatDescriptionCreateFromBigEndianMetadataDescriptionData(_ allocator: CFAllocator?, _ metadataDescriptionData: UnsafePointer<UInt8>, _ metadataDescriptionSize: Int, _ metadataDescriptionFlavor: CFString?, _ metadataFormatDescriptionOut: UnsafeMutablePointer<CMMetadataFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMMetadataFormatDescriptionCreateFromBigEndianMetadataDescriptionBlockBuffer(_ allocator: CFAllocator?, _ metadataDescriptionBlockBuffer: CMBlockBuffer, _ metadataDescriptionFlavor: CFString?, _ metadataFormatDescriptionOut: UnsafeMutablePointer<CMMetadataFormatDescription?>) -> OSStatus
@available(iOS 8.0, *)
func CMMetadataFormatDescriptionCopyAsBigEndianMetadataDescriptionBlockBuffer(_ allocator: CFAllocator?, _ metadataFormatDescription: CMMetadataFormatDescription, _ metadataDescriptionFlavor: CFString?, _ metadataDescriptionBlockBufferOut: UnsafeMutablePointer<CMBlockBuffer?>) -> OSStatus
@available(iOS 8.0, *)
func CMSwapBigEndianMetadataDescriptionToHost(_ metadataDescriptionData: UnsafeMutablePointer<UInt8>, _ metadataDescriptionSize: Int) -> OSStatus
@available(iOS 8.0, *)
func CMSwapHostEndianMetadataDescriptionToBig(_ metadataDescriptionData: UnsafeMutablePointer<UInt8>, _ metadataDescriptionSize: Int) -> OSStatus
