
var COREVIDEO_SUPPORTS_DIRECT3D: Int32 { get }
var COREVIDEO_DECLARE_NULLABILITY: Int32 { get }

/*!
    @typedef	CVOptionFlags
    @abstract   Flags to be used for the display and render call back functions.
    @discussion ***Values to be defined***
*/
typealias CVOptionFlags = UInt64

/*!
    @struct         CVSMPTETime
    @abstract       A structure for holding a SMPTE time.
    @field          subframes
                        The number of subframes in the full message.
    @field          subframeDivisor
                        The number of subframes per frame (typically 80).
    @field          counter
                        The total number of messages received.
    @field          type
                        The kind of SMPTE time using the SMPTE time type constants.
    @field          flags
                        A set of flags that indicate the SMPTE state.
    @field          hours
                        The number of hours in the full message.
    @field          minutes
                        The number of minutes in the full message.
    @field          seconds
                        The number of seconds in the full message.
    @field          frames
                        The number of frames in the full message.
*/
struct CVSMPTETime {
  var subframes: Int16
  var subframeDivisor: Int16
  var counter: UInt32
  var type: UInt32
  var flags: UInt32
  var hours: Int16
  var minutes: Int16
  var seconds: Int16
  var frames: Int16
  init()
  init(subframes: Int16, subframeDivisor: Int16, counter: UInt32, type: UInt32, flags: UInt32, hours: Int16, minutes: Int16, seconds: Int16, frames: Int16)
}
var kCVSMPTETimeType24: Int { get }
var kCVSMPTETimeType25: Int { get }
var kCVSMPTETimeType30Drop: Int { get }
var kCVSMPTETimeType30: Int { get }
var kCVSMPTETimeType2997: Int { get }
var kCVSMPTETimeType2997Drop: Int { get }
var kCVSMPTETimeType60: Int { get }
var kCVSMPTETimeType5994: Int { get }
var kCVSMPTETimeValid: Int { get }
var kCVSMPTETimeRunning: Int { get }
var kCVTimeIsIndefinite: Int { get }
struct CVTime {
  var timeValue: Int64
  var timeScale: Int32
  var flags: Int32
  init()
  init(timeValue: Int64, timeScale: Int32, flags: Int32)
}

/*!
    @struct CVTimeStamp
    @abstract CoreVideo uses a CVTimeStamp structure to store video display time stamps.
    @discussion This structure is purposely very similar to AudioTimeStamp defined in the CoreAudio framework. 
		Most of the CVTimeStamp struct should be fairly self-explanatory. However, it is probably worth pointing out that unlike the audio time stamps, floats are not used to represent the video equivalent of sample times. This was done partly to avoid precision issues, and partly because QuickTime still uses integers for time values and time scales. In the actual implementation it has turned out to be very convenient to use integers, and we can represent framerates like NTSC (30000/1001 fps) exactly. The mHostTime structure field uses the same Mach absolute time base that is used in CoreAudio, so that clients of the CoreVideo API can synchronize between the two subsystems.
    @field version The current CVTimeStamp is version 0.
    @field videoTimeScale The scale (in units per second) of the videoTime and videoPeriod values
    @field videoTime This represents the start of a frame (or field for interlaced)
    @field hostTime Host root timebase time
    @field rateScalar This is the current rate of the device as measured by the timestamps, divided by the nominal rate
    @field videoRefreshPeriod This is the nominal update period of the current output device
    @field smpteTime SMPTE time representation of the time stamp. 
    @field flags Possible values are:		
		kCVTimeStampVideoTimeValid
		kCVTimeStampHostTimeValid
		kCVTimeStampSMPTETimeValid
		kCVTimeStampVideoPeriodValid
		kCVTimeStampRateScalarValid
		There are flags for each field to make it easier to detect interlaced vs progressive output
		kCVTimeStampTopField
		kCVTimeStampBottomField
		Some commonly used combinations of timestamp flags
		kCVTimeStampVideoHostTimeValid
		kCVTimeStampIsInterlaced
    @field reserved Reserved. Do not use.

*/
struct CVTimeStamp {
  var version: UInt32
  var videoTimeScale: Int32
  var videoTime: Int64
  var hostTime: UInt64
  var rateScalar: Double
  var videoRefreshPeriod: Int64
  var smpteTime: CVSMPTETime
  var flags: UInt64
  var reserved: UInt64
  init()
  init(version: UInt32, videoTimeScale: Int32, videoTime: Int64, hostTime: UInt64, rateScalar: Double, videoRefreshPeriod: Int64, smpteTime: CVSMPTETime, flags: UInt64, reserved: UInt64)
}
var kCVTimeStampVideoTimeValid: Int { get }
var kCVTimeStampHostTimeValid: Int { get }
var kCVTimeStampSMPTETimeValid: Int { get }
var kCVTimeStampVideoRefreshPeriodValid: Int { get }
var kCVTimeStampRateScalarValid: Int { get }
var kCVTimeStampTopField: Int { get }
var kCVTimeStampBottomField: Int { get }
var kCVTimeStampVideoHostTimeValid: Int { get }
var kCVTimeStampIsInterlaced: Int { get }
let kCVZeroTime: CVTime
let kCVIndefiniteTime: CVTime
@available(iOS 4.0, *)
let kCVBufferPropagatedAttachmentsKey: CFString
@available(iOS 4.0, *)
let kCVBufferNonPropagatedAttachmentsKey: CFString
@available(iOS 4.0, *)
let kCVBufferMovieTimeKey: CFString
@available(iOS 4.0, *)
let kCVBufferTimeValueKey: CFString
@available(iOS 4.0, *)
let kCVBufferTimeScaleKey: CFString
typealias CVAttachmentMode = UInt32
var kCVAttachmentMode_ShouldNotPropagate: CVAttachmentMode { get }
var kCVAttachmentMode_ShouldPropagate: CVAttachmentMode { get }

/*!
    @typedef	CVBufferRef
    @abstract   Base type for all CoreVideo buffers

*/
class CVBuffer {
}

/*!
    @typedef	CVBufferRef
    @abstract   Base type for all CoreVideo buffers

*/
typealias CVBufferRef = CVBuffer

/*!
    @function   CVBufferSetAttachment
    @abstract   Sets or adds a attachment of a CVBuffer object
    @discussion You can attach any CF object to a CVBuffer object to store additional information. CVBufferGetAttachment stores an attachement identified by a key. If the key doesn't exist, the attachment will be added. If the key does exist, the existing attachment will be replaced. In bouth cases the retain count of the attachment will be incremented. The value can be any CFType but nil has no defined behavior.
    @param      buffer  Target CVBuffer object.
    @param      key     Key in form of a CFString identifying the desired attachment.
    @param      value	Attachment in form af a CF object.
    @param      attachmentMode	Specifies which attachment mode is desired for this attachment.   A particular attachment key may only exist in
                                a single mode at a time.
*/
@available(iOS 4.0, *)
func CVBufferSetAttachment(buffer: CVBuffer, _ key: CFString, _ value: AnyObject, _ attachmentMode: CVAttachmentMode)

/*!
    @function   CVBufferGetAttachment
    @abstract   Returns a specific attachment of a CVBuffer object
    @discussion You can attach any CF object to a CVBuffer object to store additional information. CVBufferGetAttachment retrieves an attachement identified by a key.
    @param      buffer  Target CVBuffer object.
    @param      key	Key in form of a CFString identifying the desired attachment.
    @param      attachmentMode.  Returns the mode of the attachment, if desired.  May be NULL.
    @result     If found the attachment object
*/
@available(iOS 4.0, *)
func CVBufferGetAttachment(buffer: CVBuffer, _ key: CFString, _ attachmentMode: UnsafeMutablePointer<CVAttachmentMode>) -> Unmanaged<AnyObject>?

/*!
    @function   CVBufferRemoveAttachment
    @abstract   Removes a specific attachment of a CVBuffer object
    @discussion CVBufferRemoveAttachment removes an attachement identified by a key. If found the attachement is removed and the retain count decremented.
    @param      buffer  Target CVBuffer object.
    @param      key	Key in form of a CFString identifying the desired attachment.
*/
@available(iOS 4.0, *)
func CVBufferRemoveAttachment(buffer: CVBuffer, _ key: CFString)

/*!
    @function   CVBufferRemoveAllAttachments
    @abstract   Removes all attachments of a CVBuffer object
    @discussion While CVBufferRemoveAttachment removes a specific attachement identified by a key CVBufferRemoveAllAttachments removes all attachments of a buffer and decrements their retain counts.
    @param      buffer  Target CVBuffer object.
*/
@available(iOS 4.0, *)
func CVBufferRemoveAllAttachments(buffer: CVBuffer)

/*!
    @function   CVBufferGetAttachments
    @abstract   Returns all attachments of a CVBuffer object
    @discussion CVBufferGetAttachments is a convenience call that returns all attachments with their corresponding keys in a CFDictionary.
    @param      buffer  Target CVBuffer object.
    @result     A CFDictionary with all buffer attachments identified by there keys. If no attachment is present, the dictionary is empty.  Returns NULL
		for invalid attachment mode.
*/
@available(iOS 4.0, *)
func CVBufferGetAttachments(buffer: CVBuffer, _ attachmentMode: CVAttachmentMode) -> Unmanaged<CFDictionary>?

/*!
    @function   CVBufferSetAttachments
    @abstract   Sets a set of attachments for a CVBuffer
    @discussion CVBufferSetAttachments is a convenience call that in turn calls CVBufferSetAttachment for each key and value in the given dictionary. All key value pairs must be in the root level of the dictionary.
    @param      buffer  Target CVBuffer object.
*/
@available(iOS 4.0, *)
func CVBufferSetAttachments(buffer: CVBuffer, _ theAttachments: CFDictionary, _ attachmentMode: CVAttachmentMode)

/*!
    @function   CVBufferPropagateAttachments
    @abstract   Copy all propagatable attachments from one buffer to another.
    @discussion CVBufferPropagateAttachments is a convenience call that copies all attachments with a mode of kCVAttachmentMode_ShouldPropagate from one
                buffer to another.
    @param      sourceBuffer  CVBuffer to copy attachments from.
    @param      destinationBuffer  CVBuffer to copy attachments to.
*/
@available(iOS 4.0, *)
func CVBufferPropagateAttachments(sourceBuffer: CVBuffer, _ destinationBuffer: CVBuffer)
@available(iOS 4.0, *)
let kCVImageBufferCGColorSpaceKey: CFString
@available(iOS 4.0, *)
let kCVImageBufferCleanApertureKey: CFString
@available(iOS 4.0, *)
let kCVImageBufferCleanApertureWidthKey: CFString
@available(iOS 4.0, *)
let kCVImageBufferCleanApertureHeightKey: CFString
@available(iOS 4.0, *)
let kCVImageBufferCleanApertureHorizontalOffsetKey: CFString
@available(iOS 4.0, *)
let kCVImageBufferCleanApertureVerticalOffsetKey: CFString
@available(iOS 4.0, *)
let kCVImageBufferPreferredCleanApertureKey: CFString
@available(iOS 4.0, *)
let kCVImageBufferFieldCountKey: CFString
@available(iOS 4.0, *)
let kCVImageBufferFieldDetailKey: CFString
@available(iOS 4.0, *)
let kCVImageBufferFieldDetailTemporalTopFirst: CFString
@available(iOS 4.0, *)
let kCVImageBufferFieldDetailTemporalBottomFirst: CFString
@available(iOS 4.0, *)
let kCVImageBufferFieldDetailSpatialFirstLineEarly: CFString
@available(iOS 4.0, *)
let kCVImageBufferFieldDetailSpatialFirstLineLate: CFString
@available(iOS 4.0, *)
let kCVImageBufferPixelAspectRatioKey: CFString
@available(iOS 4.0, *)
let kCVImageBufferPixelAspectRatioHorizontalSpacingKey: CFString
@available(iOS 4.0, *)
let kCVImageBufferPixelAspectRatioVerticalSpacingKey: CFString
@available(iOS 4.0, *)
let kCVImageBufferDisplayDimensionsKey: CFString
@available(iOS 4.0, *)
let kCVImageBufferDisplayWidthKey: CFString
@available(iOS 4.0, *)
let kCVImageBufferDisplayHeightKey: CFString
@available(iOS 4.0, *)
let kCVImageBufferGammaLevelKey: CFString
@available(iOS 4.0, *)
let kCVImageBufferICCProfileKey: CFString
@available(iOS 4.0, *)
let kCVImageBufferYCbCrMatrixKey: CFString
@available(iOS 4.0, *)
let kCVImageBufferYCbCrMatrix_ITU_R_709_2: CFString
@available(iOS 4.0, *)
let kCVImageBufferYCbCrMatrix_ITU_R_601_4: CFString
@available(iOS 4.0, *)
let kCVImageBufferYCbCrMatrix_SMPTE_240M_1995: CFString
@available(iOS 9.0, *)
let kCVImageBufferYCbCrMatrix_DCI_P3: CFString
@available(iOS 9.0, *)
let kCVImageBufferYCbCrMatrix_P3_D65: CFString
@available(iOS 9.0, *)
let kCVImageBufferYCbCrMatrix_ITU_R_2020: CFString
@available(iOS 4.0, *)
let kCVImageBufferColorPrimariesKey: CFString
@available(iOS 4.0, *)
let kCVImageBufferColorPrimaries_ITU_R_709_2: CFString
@available(iOS 4.0, *)
let kCVImageBufferColorPrimaries_EBU_3213: CFString
@available(iOS 4.0, *)
let kCVImageBufferColorPrimaries_SMPTE_C: CFString
@available(iOS 6.0, *)
let kCVImageBufferColorPrimaries_P22: CFString
@available(iOS 9.0, *)
let kCVImageBufferColorPrimaries_DCI_P3: CFString
@available(iOS 9.0, *)
let kCVImageBufferColorPrimaries_P3_D65: CFString
@available(iOS 9.0, *)
let kCVImageBufferColorPrimaries_ITU_R_2020: CFString
@available(iOS 4.0, *)
let kCVImageBufferTransferFunctionKey: CFString
@available(iOS 4.0, *)
let kCVImageBufferTransferFunction_ITU_R_709_2: CFString
@available(iOS 4.0, *)
let kCVImageBufferTransferFunction_SMPTE_240M_1995: CFString
@available(iOS 4.0, *)
let kCVImageBufferTransferFunction_UseGamma: CFString
@available(iOS 9.0, *)
let kCVImageBufferTransferFunction_ITU_R_2020: CFString
@available(iOS 4.0, *)
let kCVImageBufferChromaLocationTopFieldKey: CFString
@available(iOS 4.0, *)
let kCVImageBufferChromaLocationBottomFieldKey: CFString
@available(iOS 4.0, *)
let kCVImageBufferChromaLocation_Left: CFString
@available(iOS 4.0, *)
let kCVImageBufferChromaLocation_Center: CFString
@available(iOS 4.0, *)
let kCVImageBufferChromaLocation_TopLeft: CFString
@available(iOS 4.0, *)
let kCVImageBufferChromaLocation_Top: CFString
@available(iOS 4.0, *)
let kCVImageBufferChromaLocation_BottomLeft: CFString
@available(iOS 4.0, *)
let kCVImageBufferChromaLocation_Bottom: CFString
@available(iOS 4.0, *)
let kCVImageBufferChromaLocation_DV420: CFString
@available(iOS 4.0, *)
let kCVImageBufferChromaSubsamplingKey: CFString
@available(iOS 4.0, *)
let kCVImageBufferChromaSubsampling_420: CFString
@available(iOS 4.0, *)
let kCVImageBufferChromaSubsampling_422: CFString
@available(iOS 4.0, *)
let kCVImageBufferChromaSubsampling_411: CFString
@available(iOS 8.0, *)
let kCVImageBufferAlphaChannelIsOpaque: CFString

/*!

    @typedef	CVImageBufferRef

    @abstract   Base type for all CoreVideo image buffers



*/
typealias CVImageBufferRef = CVImageBuffer

/*!

    @typedef	CVImageBufferRef

    @abstract   Base type for all CoreVideo image buffers



*/
typealias CVImageBuffer = CVBufferRef

/*!

    @function   CVImageBufferGetEncodedSize

    @abstract   Returns the full encoded dimensions of a CVImageBuffer.  For example, for an NTSC DV frame this would be 720x480

    @param      imageBuffer A CVImageBuffer that you wish to retrieve the encoded size from.

    @result     A CGSize returning the full encoded size of the buffer

		Returns zero size if called with a non-CVImageBufferRef type or NULL.

*/
@available(iOS 4.0, *)
func CVImageBufferGetEncodedSize(imageBuffer: CVImageBuffer) -> CGSize

/*!

    @function   CVImageBufferGetDisplaySize

    @abstract   Returns the nominal output display size (in square pixels) of a CVImageBuffer.  

                For example, for an NTSC DV frame this would be 640x480

    @param      imageBuffer A CVImageBuffer that you wish to retrieve the display size from.

    @result     A CGSize returning the nominal display size of the buffer

		Returns zero size if called with a non-CVImageBufferRef type or NULL.

*/
@available(iOS 4.0, *)
func CVImageBufferGetDisplaySize(imageBuffer: CVImageBuffer) -> CGSize

/*!

    @function   CVImageBufferGetCleanRect

    @abstract   Returns the source rectangle of a CVImageBuffer that represents the clean aperture

		of the buffer in encoded pixels.    For example, an NTSC DV frame would return a CGRect with an

		origin of 8,0 and a size of 704,480.		

		Note that the origin of this rect always the lower left	corner.   This is the same coordinate system as

		used by CoreImage.

    @param      imageBuffer A CVImageBuffer that you wish to retrieve the display size from.

    @result     A CGSize returning the nominal display size of the buffer

		Returns zero rect if called with a non-CVImageBufferRef type or NULL.

*/
@available(iOS 4.0, *)
func CVImageBufferGetCleanRect(imageBuffer: CVImageBuffer) -> CGRect

/*!

    @function   CVImageBufferIsFlipped

    @abstract   Returns whether the image is flipped vertically or not.

    @param      CVImageBuffer target

    @result     True if 0,0 in the texture is upper left, false if 0,0 is lower left.

*/
@available(iOS 4.0, *)
func CVImageBufferIsFlipped(imageBuffer: CVImageBuffer) -> Bool

/*!
    @typedef	CVMetalTextureRef
    @abstract   Metal texture based image buffer

*/
typealias CVMetalTexture = CVImageBuffer

/*!
    @typedef	CVMetalTextureRef
    @abstract   Metal texture based image buffer

*/
typealias CVMetalTextureRef = CVMetalTexture
@available(iOS 8.0, *)
func CVMetalTextureGetTypeID() -> CFTypeID

/*!
    @function   CVMetalTextureGetTexture
    @abstract   Returns the Meta MTLTexture object of the CVMetalTextureRef
    @param      image Target CVMetalTexture
    @result     Metal texture
*/
@available(iOS 8.0, *)
func CVMetalTextureGetTexture(image: CVMetalTexture) -> MTLTexture?

/*!
    @function   CVMetalTextureIsFlipped
    @abstract   Returns whether the image is flipped vertically or not.
    @param      image Target CVMetalTexture
    @result     True if 0,0 in the texture is upper left, false if 0,0 is lower left
*/
@available(iOS 8.0, *)
func CVMetalTextureIsFlipped(image: CVMetalTexture) -> Bool

/*!
    @function   CVMetalTextureGetCleanTexCoords 
    @abstract   Returns convenient normalized texture coordinates for the part of the image that should be displayed
    @discussion This function automatically takes into account whether or not the texture is flipped.
    @param      image Target CVMetalTexture
    @param      lowerLeft  - array of two floats where the s and t normalized texture coordinates of the lower left corner of the image will be stored
    @param      lowerRight - array of two floats where the s and t normalized texture coordinates of the lower right corner of the image will be stored
    @param      upperRight - array of two floats where the s and t normalized texture coordinates of the upper right corner of the image will be stored
    @param      upperLeft  - array of two floats where the s and t normalized texture coordinates of the upper right corner of the image will be stored
*/
@available(iOS 8.0, *)
func CVMetalTextureGetCleanTexCoords(image: CVMetalTexture, _ lowerLeft: UnsafeMutablePointer<Float>, _ lowerRight: UnsafeMutablePointer<Float>, _ upperRight: UnsafeMutablePointer<Float>, _ upperLeft: UnsafeMutablePointer<Float>)
@available(iOS 8.0, *)
let kCVMetalTextureCacheMaximumTextureAgeKey: CFString

/*!
    @typedef	CVMetalTextureCacheRef
    @abstract   CoreVideo Metal Texture Cache

*/
class CVMetalTextureCache {
}

/*!
    @typedef	CVMetalTextureCacheRef
    @abstract   CoreVideo Metal Texture Cache

*/
typealias CVMetalTextureCacheRef = CVMetalTextureCache
@available(iOS 8.0, *)
func CVMetalTextureCacheGetTypeID() -> CFTypeID

/*!
    @function   CVMetalTextureCacheCreate
    @abstract   Creates a new Texture Cache.
    @param      allocator The CFAllocatorRef to use for allocating the cache.  May be NULL.
    @param      cacheAttributes A CFDictionaryRef containing the attributes of the cache itself.   May be NULL.
    @param      metalDevice The Metal device for which the texture objects will be created.
    @param      textureAttributes A CFDictionaryRef containing the attributes to be used for creating the CVMetalTexture objects.  May be NULL.
    @param      cacheOut   The newly created texture cache will be placed here
    @result     Returns kCVReturnSuccess on success
*/
@available(iOS 8.0, *)
func CVMetalTextureCacheCreate(allocator: CFAllocator?, _ cacheAttributes: CFDictionary?, _ metalDevice: MTLDevice, _ textureAttributes: CFDictionary?, _ cacheOut: UnsafeMutablePointer<Unmanaged<CVMetalTextureCache>?>) -> CVReturn

/*!
    @function   CVMetalTextureCacheCreateTextureFromImage
    @abstract   Creates a CVMetalTexture object from an existing CVImageBuffer
    @param      allocator The CFAllocatorRef to use for allocating the CVMetalTexture object.  May be NULL.
    @param      textureCache The texture cache object that will manage the texture.
    @param      sourceImage The CVImageBuffer that you want to create a CVMetalTexture from.
    @param      textureAttributes A CFDictionaryRef containing attributes to be used for creating the CVMetalTexture objects.  May be NULL.
    @param      pixelFormat Specifies the Metal pixel format.
    @param      width Specifies the width of the texture image.
    @param      height Specifies the height of the texture image.
    @param      planeIndex Specifies the plane of the CVImageBuffer to map bind.  Ignored for non-planar CVImageBuffers.
    @param      textureOut The newly created texture object will be placed here.
    @result     Returns kCVReturnSuccess on success
    @discussion Creates or returns a cached CVMetalTexture texture object mapped to the CVImageBuffer and
                associated params.  This creates a live binding between the CVImageBuffer and underlying
                CVMetalTexture texture object.
 
                Note that CoreVideo does not explicitly declare any pixel format types to be Metal compatible.  The assumption
                is that if the CVPixelBufferMetalCompatibilityKey has been specified, all buffers will be Metal compatible
                (IOSurface backed), and thus it is the developer's responsibility to choose an appropriate Metal pixel format
                for the CVPixelBuffers.
 
                Here are some example mappings:

                Mapping a BGRA buffer:
                CVMetalTextureCacheCreateTextureFromImage(kCFAllocatorDefault, textureCache, pixelBuffer, NULL, MTLPixelFormatBGRA8Unorm, width, height, 0, &outTexture);

                Mapping the luma plane of a 420v buffer:
                CVMetalTextureCacheCreateTextureFromImage(kCFAllocatorDefault, textureCache, pixelBuffer, NULL, MTLPixelFormatR8Unorm, width, height, 0, &outTexture);

                Mapping the chroma plane of a 420v buffer as a source texture:
                CVMetalTextureCacheCreateTextureFromImage(kCFAllocatorDefault, textureCache, pixelBuffer, NULL, MTLPixelFormatRG8Unorm width/2, height/2, 1, &outTexture);

                Mapping a yuvs buffer as a source texture (note: yuvs/f and 2vuy are unpacked and resampled -- not colorspace converted)
                CVMetalTextureCacheCreateTextureFromImage(kCFAllocatorDefault, textureCache, pixelBuffer, NULL, MTLPixelFormatGBGR422, width, height, 1, &outTexture);
*/
@available(iOS 8.0, *)
func CVMetalTextureCacheCreateTextureFromImage(allocator: CFAllocator?, _ textureCache: CVMetalTextureCache, _ sourceImage: CVImageBuffer, _ textureAttributes: CFDictionary?, _ pixelFormat: MTLPixelFormat, _ width: Int, _ height: Int, _ planeIndex: Int, _ textureOut: UnsafeMutablePointer<Unmanaged<CVMetalTexture>?>) -> CVReturn

/*!
    @function   CVMetalTextureCacheFlush
    @abstract   Performs internal housekeeping/recycling operations
    @discussion This call must be made periodically to give the texture cache a chance to do internal housekeeping operations.
    @param      textureCache The texture cache object to flush
    @param      options Currently unused, set to 0.
*/
@available(iOS 8.0, *)
func CVMetalTextureCacheFlush(textureCache: CVMetalTextureCache, _ options: CVOptionFlags)

/*!
    @typedef	CVOpenGLESTextureRef
    @abstract   OpenGLES texture based image buffer

*/
typealias CVOpenGLESTexture = CVImageBuffer

/*!
    @typedef	CVOpenGLESTextureRef
    @abstract   OpenGLES texture based image buffer

*/
typealias CVOpenGLESTextureRef = CVOpenGLESTexture
@available(iOS 5.0, *)
func CVOpenGLESTextureGetTypeID() -> CFTypeID

/*!
    @function   CVOpenGLESTextureGetTarget
    @abstract   Returns the texture target (eg. 2D vs. rect texture extension) of the CVOpenGLESTexture
    @param      image Target CVOpenGLESTexture
    @result     OpenGLES texture target
*/
@available(iOS 5.0, *)
func CVOpenGLESTextureGetTarget(image: CVOpenGLESTexture) -> GLenum

/*!
    @function   CVOpenGLESTextureGetName
    @abstract   Returns the texture target name of the CVOpenGLESTexture
    @param      image Target CVOpenGLESTexture
    @result     OpenGLES texture target name
*/
@available(iOS 5.0, *)
func CVOpenGLESTextureGetName(image: CVOpenGLESTexture) -> GLuint

/*!
    @function   CVOpenGLESTextureIsFlipped
    @abstract   Returns whether the image is flipped vertically or not.
    @param      image Target CVOpenGLESTexture
    @result     True if 0,0 in the texture is upper left, false if 0,0 is lower left
*/
@available(iOS 5.0, *)
func CVOpenGLESTextureIsFlipped(image: CVOpenGLESTexture) -> Bool

/*!
    @function   CVOpenGLESTextureGetCleanTexCoords 
    @abstract   Returns convenient normalized texture coordinates for the part of the image that should be displayed
    @discussion This function automatically takes into account whether or not the texture is flipped.
    @param      image Target CVOpenGLESTexture
    @param      lowerLeft  - array of two GLfloats where the s and t normalized texture coordinates of the lower left corner of the image will be stored
    @param      lowerRight - array of two GLfloats where the s and t normalized texture coordinates of the lower right corner of the image will be stored
    @param      upperRight - array of two GLfloats where the s and t normalized texture coordinates of the upper right corner of the image will be stored
    @param      upperLeft  - array of two GLfloats where the s and t normalized texture coordinates of the upper right corner of the image will be stored
*/
@available(iOS 5.0, *)
func CVOpenGLESTextureGetCleanTexCoords(image: CVOpenGLESTexture, _ lowerLeft: UnsafeMutablePointer<GLfloat>, _ lowerRight: UnsafeMutablePointer<GLfloat>, _ upperRight: UnsafeMutablePointer<GLfloat>, _ upperLeft: UnsafeMutablePointer<GLfloat>)

/*!
    @typedef	CVOpenGLESTextureCacheRef
    @abstract   CoreVideo OpenGLES Texture Cache

*/
class CVOpenGLESTextureCache {
}

/*!
    @typedef	CVOpenGLESTextureCacheRef
    @abstract   CoreVideo OpenGLES Texture Cache

*/
typealias CVOpenGLESTextureCacheRef = CVOpenGLESTextureCache
var COREVIDEO_USE_EAGLCONTEXT_CLASS_IN_API: Int32 { get }
typealias CVEAGLContext = EAGLContext
@available(iOS 5.0, *)
let kCVOpenGLESTextureCacheMaximumTextureAgeKey: CFString
@available(iOS 5.0, *)
func CVOpenGLESTextureCacheGetTypeID() -> CFTypeID

/*!
    @function   CVOpenGLESTextureCacheCreate
    @abstract   Creates a new Texture Cache.
    @param      allocator The CFAllocatorRef to use for allocating the cache.  May be NULL.
    @param      cacheAttributes A CFDictionaryRef containing the attributes of the cache itself.   May be NULL.
    @param      eaglContext The OpenGLES 2.0 context into which the texture objects will be created.  OpenGLES 1.x contexts are not supported.
    @param      textureAttributes A CFDictionaryRef containing the attributes to be used for creating the CVOpenGLESTexture objects.  May be NULL.
    @param      cacheOut   The newly created texture cache will be placed here
    @result     Returns kCVReturnSuccess on success
*/
@available(iOS 5.0, *)
func CVOpenGLESTextureCacheCreate(allocator: CFAllocator?, _ cacheAttributes: CFDictionary?, _ eaglContext: CVEAGLContext, _ textureAttributes: CFDictionary?, _ cacheOut: UnsafeMutablePointer<CVOpenGLESTextureCache?>) -> CVReturn

/*!
    @function   CVOpenGLESTextureCacheCreateTextureFromImage
    @abstract   Creates a CVOpenGLESTexture object from an existing CVImageBuffer
    @param      allocator The CFAllocatorRef to use for allocating the CVOpenGLESTexture object.  May be NULL.
    @param      textureCache The texture cache object that will manage the texture.
    @param      sourceImage The CVImageBuffer that you want to create a CVOpenGLESTexture from.
    @param      textureAttributes A CFDictionaryRef containing attributes to be used for creating the CVOpenGLESTexture objects.  May be NULL.
    @param      target Specifies the target texture.  GL_TEXTURE_2D and GL_RENDERBUFFER are the only targets currently supported.
    @param      internalFormat Specifies the number of color components in the texture.  Examples are GL_RGBA, GL_LUMINANCE, GL_RGBA8_OES, GL_RED, and GL_RG.
    @param      width Specifies the width of the texture image.
    @param      height Specifies the height of the texture image.
    @param      format Specifies the format of the pixel data.  Examples are GL_RGBA and GL_LUMINANCE.
    @param      type Specifies the data type of the pixel data.  Examples are GL_UNSIGNED_BYTE.
    @param      planeIndex Specifies the plane of the CVImageBuffer to map bind.  Ignored for non-planar CVImageBuffers.
    @param      textureOut The newly created texture object will be placed here.
    @result     Returns kCVReturnSuccess on success
    @discussion Creates or returns a cached CVOpenGLESTexture texture object mapped to the CVImageBuffer and
                associated params.  This creates a live binding between the CVImageBuffer and underlying
                CVOpenGLESTexture texture object.  The EAGLContext associated with the cache may be modified,
                to create, delete, or bind textures.  When used as a source texture or GL_COLOR_ATTACHMENT,
                the CVImageBuffer must be unlocked before rendering.  The source or render buffer texture should
                not be re-used until the rendering has completed.  This can be guaranteed by calling glFlush().

                Here are some example mappings:

                Mapping a BGRA buffer as a source texture:
                CVOpenGLESTextureCacheCreateTextureFromImage(kCFAllocatorDefault, textureCache, pixelBuffer, NULL, GL_TEXTURE_2D, GL_RGBA, width, height, GL_RGBA, GL_UNSIGNED_BYTE, 0, &outTexture);

                Mapping a BGRA buffer as a renderbuffer:
                CVOpenGLESTextureCacheCreateTextureFromImage(kCFAllocatorDefault, textureCache, pixelBuffer, NULL, GL_RENDERBUFFER, GL_RGBA8_OES, width, height, GL_RGBA, GL_UNSIGNED_BYTE, 0, &outTexture);

                Mapping the luma plane of a 420v buffer as a source texture:
                CVOpenGLESTextureCacheCreateTextureFromImage(kCFAllocatorDefault, textureCache, pixelBuffer, NULL, GL_TEXTURE_2D, GL_LUMINANCE, width, height, GL_LUMINANCE, GL_UNSIGNED_BYTE, 0, &outTexture);

                Mapping the chroma plane of a 420v buffer as a source texture:
                CVOpenGLESTextureCacheCreateTextureFromImage(kCFAllocatorDefault, textureCache, pixelBuffer, NULL, GL_TEXTURE_2D, GL_LUMINANCE_ALPHA, width/2, height/2, GL_LUMINANCE_ALPHA, GL_UNSIGNED_BYTE, 1, &outTexture);

                Mapping a yuvs buffer as a source texture (note: yuvs/f and 2vuy are unpacked and resampled -- not colorspace converted)
                CVOpenGLESTextureCacheCreateTextureFromImage(kCFAllocatorDefault, textureCache, pixelBuffer, NULL, GL_TEXTURE_2D, GL_RGB_422_APPLE, width, height, GL_RGB_422_APPLE, GL_UNSIGNED_SHORT_8_8_APPLE, 1, &outTexture);
*/
@available(iOS 5.0, *)
func CVOpenGLESTextureCacheCreateTextureFromImage(allocator: CFAllocator?, _ textureCache: CVOpenGLESTextureCache, _ sourceImage: CVImageBuffer, _ textureAttributes: CFDictionary?, _ target: GLenum, _ internalFormat: GLint, _ width: GLsizei, _ height: GLsizei, _ format: GLenum, _ type: GLenum, _ planeIndex: Int, _ textureOut: UnsafeMutablePointer<CVOpenGLESTexture?>) -> CVReturn

/*!
    @function   CVOpenGLESTextureCacheFlush
    @abstract   Performs internal housekeeping/recycling operations
    @discussion This call must be made periodically to give the texture cache a chance to make OpenGLES calls
                on the OpenGLES context used to create it in order to do housekeeping operations.  The EAGLContext
	            associated with the cache may be used to delete or unbind textures.
    @param      textureCache The texture cache object to flush
    @param      options Currently unused, set to 0.
*/
@available(iOS 5.0, *)
func CVOpenGLESTextureCacheFlush(textureCache: CVOpenGLESTextureCache, _ options: CVOptionFlags)
var kCVPixelFormatType_1Monochrome: OSType { get }
var kCVPixelFormatType_2Indexed: OSType { get }
var kCVPixelFormatType_4Indexed: OSType { get }
var kCVPixelFormatType_8Indexed: OSType { get }
var kCVPixelFormatType_1IndexedGray_WhiteIsZero: OSType { get }
var kCVPixelFormatType_2IndexedGray_WhiteIsZero: OSType { get }
var kCVPixelFormatType_4IndexedGray_WhiteIsZero: OSType { get }
var kCVPixelFormatType_8IndexedGray_WhiteIsZero: OSType { get }
var kCVPixelFormatType_16BE555: OSType { get }
var kCVPixelFormatType_16LE555: OSType { get }
var kCVPixelFormatType_16LE5551: OSType { get }
var kCVPixelFormatType_16BE565: OSType { get }
var kCVPixelFormatType_16LE565: OSType { get }
var kCVPixelFormatType_24RGB: OSType { get }
var kCVPixelFormatType_24BGR: OSType { get }
var kCVPixelFormatType_32ARGB: OSType { get }
var kCVPixelFormatType_32BGRA: OSType { get }
var kCVPixelFormatType_32ABGR: OSType { get }
var kCVPixelFormatType_32RGBA: OSType { get }
var kCVPixelFormatType_64ARGB: OSType { get }
var kCVPixelFormatType_48RGB: OSType { get }
var kCVPixelFormatType_32AlphaGray: OSType { get }
var kCVPixelFormatType_16Gray: OSType { get }
var kCVPixelFormatType_30RGB: OSType { get }
var kCVPixelFormatType_422YpCbCr8: OSType { get }
var kCVPixelFormatType_4444YpCbCrA8: OSType { get }
var kCVPixelFormatType_4444YpCbCrA8R: OSType { get }
var kCVPixelFormatType_4444AYpCbCr8: OSType { get }
var kCVPixelFormatType_4444AYpCbCr16: OSType { get }
var kCVPixelFormatType_444YpCbCr8: OSType { get }
var kCVPixelFormatType_422YpCbCr16: OSType { get }
var kCVPixelFormatType_422YpCbCr10: OSType { get }
var kCVPixelFormatType_444YpCbCr10: OSType { get }
var kCVPixelFormatType_420YpCbCr8Planar: OSType { get }
var kCVPixelFormatType_420YpCbCr8PlanarFullRange: OSType { get }
var kCVPixelFormatType_422YpCbCr_4A_8BiPlanar: OSType { get }
var kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange: OSType { get }
var kCVPixelFormatType_420YpCbCr8BiPlanarFullRange: OSType { get }
var kCVPixelFormatType_422YpCbCr8_yuvs: OSType { get }
var kCVPixelFormatType_422YpCbCr8FullRange: OSType { get }
var kCVPixelFormatType_OneComponent8: OSType { get }
var kCVPixelFormatType_TwoComponent8: OSType { get }
var kCVPixelFormatType_OneComponent16Half: OSType { get }
var kCVPixelFormatType_OneComponent32Float: OSType { get }
var kCVPixelFormatType_TwoComponent16Half: OSType { get }
var kCVPixelFormatType_TwoComponent32Float: OSType { get }
var kCVPixelFormatType_64RGBAHalf: OSType { get }
var kCVPixelFormatType_128RGBAFloat: OSType { get }

/*!
	@enum Pixel Buffer Locking Flags
	@discussion Flags to pass to CVPixelBufferLockBaseAddress() / CVPixelBufferUnlockBaseAddress()
	@constant kCVPixelBufferLock_ReadOnly
		If you are not going to modify the data while you hold the lock, you should set this flag
		to avoid potentially invalidating any existing caches of the buffer contents.  This flag
		should be passed both to the lock and unlock functions.  Non-symmetrical usage of this
		flag will result in undefined behavior.
*/
typealias CVPixelBufferLockFlags = CVOptionFlags
var kCVPixelBufferLock_ReadOnly: CVPixelBufferLockFlags { get }
struct CVPlanarComponentInfo {
  var offset: Int32
  var rowBytes: UInt32
  init()
  init(offset: Int32, rowBytes: UInt32)
}
struct CVPlanarPixelBufferInfo {
  var componentInfo: (CVPlanarComponentInfo)
  init()
  init(componentInfo: (CVPlanarComponentInfo))
}
struct CVPlanarPixelBufferInfo_YCbCrPlanar {
  var componentInfoY: CVPlanarComponentInfo
  var componentInfoCb: CVPlanarComponentInfo
  var componentInfoCr: CVPlanarComponentInfo
  init()
  init(componentInfoY: CVPlanarComponentInfo, componentInfoCb: CVPlanarComponentInfo, componentInfoCr: CVPlanarComponentInfo)
}
struct CVPlanarPixelBufferInfo_YCbCrBiPlanar {
  var componentInfoY: CVPlanarComponentInfo
  var componentInfoCbCr: CVPlanarComponentInfo
  init()
  init(componentInfoY: CVPlanarComponentInfo, componentInfoCbCr: CVPlanarComponentInfo)
}
@available(iOS 4.0, *)
let kCVPixelBufferPixelFormatTypeKey: CFString
@available(iOS 4.0, *)
let kCVPixelBufferMemoryAllocatorKey: CFString
@available(iOS 4.0, *)
let kCVPixelBufferWidthKey: CFString
@available(iOS 4.0, *)
let kCVPixelBufferHeightKey: CFString
@available(iOS 4.0, *)
let kCVPixelBufferExtendedPixelsLeftKey: CFString
@available(iOS 4.0, *)
let kCVPixelBufferExtendedPixelsTopKey: CFString
@available(iOS 4.0, *)
let kCVPixelBufferExtendedPixelsRightKey: CFString
@available(iOS 4.0, *)
let kCVPixelBufferExtendedPixelsBottomKey: CFString
@available(iOS 4.0, *)
let kCVPixelBufferBytesPerRowAlignmentKey: CFString
@available(iOS 4.0, *)
let kCVPixelBufferCGBitmapContextCompatibilityKey: CFString
@available(iOS 4.0, *)
let kCVPixelBufferCGImageCompatibilityKey: CFString
@available(iOS 4.0, *)
let kCVPixelBufferOpenGLCompatibilityKey: CFString
@available(iOS 4.0, *)
let kCVPixelBufferPlaneAlignmentKey: CFString
@available(iOS 4.0, *)
let kCVPixelBufferIOSurfacePropertiesKey: CFString
@available(iOS 6.0, *)
let kCVPixelBufferOpenGLESCompatibilityKey: CFString
@available(iOS 8.0, *)
let kCVPixelBufferMetalCompatibilityKey: CFString
@available(iOS 9.0, *)
let kCVPixelBufferOpenGLESTextureCacheCompatibilityKey: CFString

/*!
    @typedef	CVPixelBufferRef
    @abstract   Based on the image buffer type. The pixel buffer implements the memory storage for an image buffer.

*/
typealias CVPixelBuffer = CVImageBuffer

/*!
    @typedef	CVPixelBufferRef
    @abstract   Based on the image buffer type. The pixel buffer implements the memory storage for an image buffer.

*/
typealias CVPixelBufferRef = CVPixelBuffer
@available(iOS 4.0, *)
func CVPixelBufferGetTypeID() -> CFTypeID

/*!
    @function   CVPixelBufferCreateResolvedAttributesDictionary
    @abstract   Takes a CFArray of CFDictionary objects describing various pixel buffer attributes and tries to resolve them into a
                single dictionary.
    @discussion This is useful when you need to resolve multiple requirements between different potential clients of a buffer.
    @param      attributes CFArray of CFDictionaries containing kCVPixelBuffer key/value pairs.
    @param      resolvedDictionaryOut The resulting dictionary will be placed here.
    @result     Return value that may be useful in discovering why resolution failed.
*/
@available(iOS 4.0, *)
func CVPixelBufferCreateResolvedAttributesDictionary(allocator: CFAllocator?, _ attributes: CFArray?, _ resolvedDictionaryOut: UnsafeMutablePointer<CFDictionary?>) -> CVReturn

/*!
    @function   CVPixelBufferCreate
    @abstract   Call to create a single PixelBuffer for a given size and pixelFormatType.
    @discussion Creates a single PixelBuffer for a given size and pixelFormatType. It allocates the necessary memory based on the pixel dimensions, pixelFormatType and extended pixels described in the pixelBufferAttributes. Not all parameters of the pixelBufferAttributes will be used here.
    @param      width   Width of the PixelBuffer in pixels.
    @param      height  Height of the PixelBuffer in pixels.
    @param	pixelFormatType		Pixel format indentified by its respective OSType.
    @param	pixelBufferAttributes      A dictionary with additional attributes for a pixel buffer. This parameter is optional. See BufferAttributeKeys for more details.
    @param      pixelBufferOut          The new pixel buffer will be returned here
    @result	returns kCVReturnSuccess on success.
*/
@available(iOS 4.0, *)
func CVPixelBufferCreate(allocator: CFAllocator?, _ width: Int, _ height: Int, _ pixelFormatType: OSType, _ pixelBufferAttributes: CFDictionary?, _ pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> CVReturn
typealias CVPixelBufferReleaseBytesCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<Void>) -> Void

/*!
    @function   CVPixelBufferCreateWithBytes
    @abstract   Call to create a single PixelBuffer for a given size and pixelFormatType based on a passed in piece of memory.
    @discussion Creates a single PixelBuffer for a given size and pixelFormatType. Not all parameters of the pixelBufferAttributes will be used here. It requires a release callback function that will be called, when the PixelBuffer gets destroyed so that the owner of the pixels can free the memory.
    @param      width   Width of the PixelBuffer in pixels
    @param      height  Height of the PixelBuffer in pixels
    @param      pixelFormatType		Pixel format indentified by its respective OSType.
    @param      baseAddress		Address of the memory storing the pixels.
    @param      bytesPerRow		Row bytes of the pixel storage memory.
    @param      releaseCallback         CVPixelBufferReleaseBytePointerCallback function that gets called when the PixelBuffer gets destroyed.
    @param      releaseRefCon           User data identifying the PixelBuffer for the release callback.
    @param      pixelBufferAttributes      A dictionary with additional attributes for a a pixel buffer. This parameter is optional. See PixelBufferAttributes for more details.
    @param      pixelBufferOut          The new pixel buffer will be returned here
    @result	returns kCVReturnSuccess on success.
*/
@available(iOS 4.0, *)
func CVPixelBufferCreateWithBytes(allocator: CFAllocator?, _ width: Int, _ height: Int, _ pixelFormatType: OSType, _ baseAddress: UnsafeMutablePointer<Void>, _ bytesPerRow: Int, _ releaseCallback: CVPixelBufferReleaseBytesCallback?, _ releaseRefCon: UnsafeMutablePointer<Void>, _ pixelBufferAttributes: CFDictionary?, _ pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> CVReturn
typealias CVPixelBufferReleasePlanarBytesCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafePointer<Void>, Int, Int, UnsafeMutablePointer<UnsafePointer<Void>>) -> Void

/*!
    @function   CVPixelBufferCreateWithPlanarBytes
    @abstract   Call to create a single PixelBuffer in planar format for a given size and pixelFormatType based on a passed in piece of memory.
    @discussion Creates a single PixelBuffer for a given size and pixelFormatType. Not all parameters of the pixelBufferAttributes will be used here. It requires a release callback function that will be called, when the PixelBuffer gets destroyed so that the owner of the pixels can free the memory.
    @param      width			Width of the PixelBuffer in pixels
    @param      height			Height of the PixelBuffer in pixels
    @param      pixelFormatType		Pixel format indentified by its respective OSType.
    @param	dataPtr			Pass a pointer to a plane descriptor block, or NULL.
    @param	dataSize		pass size if planes are contiguous, NULL if not.
    @param	numberOfPlanes		Number of planes.
    @param	planeBaseAddress	Array of base addresses for the planes.
    @param	planeWidth		Array of plane widths.
    @param	planeHeight		Array of plane heights.
    @param	planeBytesPerRow	Array of plane bytesPerRow values.
    @param	releaseCallback		CVPixelBufferReleaseBytePointerCallback function that gets called when the PixelBuffer gets destroyed.
    @param	releaseRefCon		User data identifying the PixelBuffer for the release callback.
    @param	pixelBufferAttributes      A dictionary with additional attributes for a a pixel buffer. This parameter is optional. See PixelBufferAttributes for more details.
    @param      pixelBufferOut          The new pixel buffer will be returned here
    @result	returns kCVReturnSuccess on success.
*/
@available(iOS 4.0, *)
func CVPixelBufferCreateWithPlanarBytes(allocator: CFAllocator?, _ width: Int, _ height: Int, _ pixelFormatType: OSType, _ dataPtr: UnsafeMutablePointer<Void>, _ dataSize: Int, _ numberOfPlanes: Int, _ planeBaseAddress: UnsafeMutablePointer<UnsafeMutablePointer<Void>>, _ planeWidth: UnsafeMutablePointer<Int>, _ planeHeight: UnsafeMutablePointer<Int>, _ planeBytesPerRow: UnsafeMutablePointer<Int>, _ releaseCallback: CVPixelBufferReleasePlanarBytesCallback?, _ releaseRefCon: UnsafeMutablePointer<Void>, _ pixelBufferAttributes: CFDictionary?, _ pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> CVReturn

/*!
	@function   CVPixelBufferLockBaseAddress
	@abstract   Description Locks the BaseAddress of the PixelBuffer to ensure that the memory is accessible.
	@discussion This API ensures that the CVPixelBuffer is accessible in system memory. This should only be called if the base address is going to be used and the pixel data will be accessed by the CPU.
	@param      pixelBuffer Target PixelBuffer.
	@param      lockFlags See CVPixelBufferLockFlags.
	@result     kCVReturnSuccess if the lock succeeded, or error code on failure
*/
@available(iOS 4.0, *)
func CVPixelBufferLockBaseAddress(pixelBuffer: CVPixelBuffer, _ lockFlags: CVPixelBufferLockFlags) -> CVReturn

/*!
	@function   CVPixelBufferUnlockBaseAddress
	@abstract   Description Unlocks the BaseAddress of the PixelBuffer.
	@param      pixelBuffer Target PixelBuffer.
	@param      unlockFlags See CVPixelBufferLockFlags.
	@result     kCVReturnSuccess if the unlock succeeded, or error code on failure
*/
@available(iOS 4.0, *)
func CVPixelBufferUnlockBaseAddress(pixelBuffer: CVPixelBuffer, _ unlockFlags: CVPixelBufferLockFlags) -> CVReturn

/*!
    @function   CVPixelBufferGetWidth
    @abstract   Returns the width of the PixelBuffer.
    @param      pixelBuffer Target PixelBuffer.
    @result     Width in pixels.
*/
@available(iOS 4.0, *)
func CVPixelBufferGetWidth(pixelBuffer: CVPixelBuffer) -> Int

/*!
    @function   CVPixelBufferGetHeight
    @abstract   Returns the height of the PixelBuffer.
    @param      pixelBuffer Target PixelBuffer.
    @result     Height in pixels.
*/
@available(iOS 4.0, *)
func CVPixelBufferGetHeight(pixelBuffer: CVPixelBuffer) -> Int

/*!
    @function   CVPixelBufferGetPixelFormatType
    @abstract   Returns the PixelFormatType of the PixelBuffer.
    @param      pixelBuffer Target PixelBuffer.
    @result     OSType identifying the pixel format by its type.
*/
@available(iOS 4.0, *)
func CVPixelBufferGetPixelFormatType(pixelBuffer: CVPixelBuffer) -> OSType

/*!
    @function   CVPixelBufferGetBaseAddress
    @abstract   Returns the base address of the PixelBuffer.
    @discussion Retrieving the base address for a PixelBuffer requires that the buffer base address be locked
                via a successful call to CVPixelBufferLockBaseAddress.
    @param      pixelBuffer Target PixelBuffer.
    @result     Base address of the pixels.
		For chunky buffers, this will return a pointer to the pixel at 0,0 in the buffer
		For planar buffers this will return a pointer to a PlanarComponentInfo struct (defined in QuickTime).
*/
@available(iOS 4.0, *)
func CVPixelBufferGetBaseAddress(pixelBuffer: CVPixelBuffer) -> UnsafeMutablePointer<Void>

/*!
    @function   CVPixelBufferGetBytesPerRow
    @abstract   Returns the rowBytes of the PixelBuffer.
    @param      pixelBuffer Target PixelBuffer.
    @result     Bytes per row of the image data.   For planar buffers this will return a rowBytes value such that bytesPerRow * height
                will cover the entire image including all planes.
*/
@available(iOS 4.0, *)
func CVPixelBufferGetBytesPerRow(pixelBuffer: CVPixelBuffer) -> Int

/*!
    @function   CVPixelBufferGetDataSize
    @abstract   Returns the data size for contigous planes of the PixelBuffer.
    @param      pixelBuffer Target PixelBuffer.
    @result     Data size used in CVPixelBufferCreateWithPlanarBytes.
*/
@available(iOS 4.0, *)
func CVPixelBufferGetDataSize(pixelBuffer: CVPixelBuffer) -> Int

/*!
    @function   CVPixelBufferIsPlanar
    @abstract   Returns if the PixelBuffer is planar.
    @param      pixelBuffer Target PixelBuffer.
    @result     True if the PixelBuffer was created using CVPixelBufferCreateWithPlanarBytes.
*/
@available(iOS 4.0, *)
func CVPixelBufferIsPlanar(pixelBuffer: CVPixelBuffer) -> Bool

/*!
    @function   CVPixelBufferGetPlaneCount
    @abstract   Returns number of planes of the PixelBuffer.
    @param      pixelBuffer Target PixelBuffer.
    @result     Number of planes.  Returns 0 for non-planar CVPixelBufferRefs.
*/
@available(iOS 4.0, *)
func CVPixelBufferGetPlaneCount(pixelBuffer: CVPixelBuffer) -> Int

/*!
    @function   CVPixelBufferGetWidthOfPlane
    @abstract   Returns the width of the plane at planeIndex in the PixelBuffer.
    @discussion On OSX 10.10 and earlier, or iOS 8 and earlier, calling this 
                function with a non-planar buffer will have undefined behavior.
    @param      pixelBuffer Target PixelBuffer.
    @param      planeIndex  Identifying the plane.
    @result     Width in pixels, or 0 for non-planar CVPixelBufferRefs.
*/
@available(iOS 4.0, *)
func CVPixelBufferGetWidthOfPlane(pixelBuffer: CVPixelBuffer, _ planeIndex: Int) -> Int

/*!
    @function   CVPixelBufferGetHeightOfPlane
    @abstract   Returns the height of the plane at planeIndex in the PixelBuffer.
    @discussion On OSX 10.10 and earlier, or iOS 8 and earlier, calling this
                function with a non-planar buffer will have undefined behavior.
    @param      pixelBuffer Target PixelBuffer.
    @param      planeIndex  Identifying the plane.
    @result     Height in pixels, or 0 for non-planar CVPixelBufferRefs.
*/
@available(iOS 4.0, *)
func CVPixelBufferGetHeightOfPlane(pixelBuffer: CVPixelBuffer, _ planeIndex: Int) -> Int

/*!
    @function   CVPixelBufferGetBaseAddressOfPlane
    @abstract   Returns the base address of the plane at planeIndex in the PixelBuffer.
    @discussion Retrieving the base address for a PixelBuffer requires that the buffer base address be locked
                via a successful call to CVPixelBufferLockBaseAddress. On OSX 10.10 and earlier, or iOS 8 and
                earlier, calling this function with a non-planar buffer will have undefined behavior.
    @param      pixelBuffer Target PixelBuffer.
    @param      planeIndex  Identifying the plane.
    @result     Base address of the plane, or NULL for non-planar CVPixelBufferRefs.
*/
@available(iOS 4.0, *)
func CVPixelBufferGetBaseAddressOfPlane(pixelBuffer: CVPixelBuffer, _ planeIndex: Int) -> UnsafeMutablePointer<Void>

/*!
    @function   CVPixelBufferGetBytesPerRowOfPlane
    @abstract   Returns the row bytes of the plane at planeIndex in the PixelBuffer.
    @discussion On OSX 10.10 and earlier, or iOS 8 and earlier, calling this
                function with a non-planar buffer will have undefined behavior.
    @param      pixelBuffer Target PixelBuffer.
    @param      planeIndex  Identifying the plane.
    @result     Row bytes of the plane, or NULL for non-planar CVPixelBufferRefs.
*/
@available(iOS 4.0, *)
func CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer: CVPixelBuffer, _ planeIndex: Int) -> Int

/*!
    @function   CVPixelBufferGetExtendedPixels
    @abstract   Returns the size of extended pixels of the PixelBuffer.
    @discussion On OSX 10.10 and earlier, or iOS 8 and earlier, calling this
                function with a non-planar buffer will have undefined behavior.
    @param      pixelBuffer Target PixelBuffer.
    @param      extraColumnsOnLeft Returns the pixel row padding to the left.  May be NULL.
    @param      extraRowsOnTop Returns the pixel row padding to the top.  May be NULL. 
    @param      extraColumnsOnRight Returns the pixel row padding to the right. May be NULL.
    @param      extraRowsOnBottom Returns the pixel row padding to the bottom. May be NULL.
*/
@available(iOS 4.0, *)
func CVPixelBufferGetExtendedPixels(pixelBuffer: CVPixelBuffer, _ extraColumnsOnLeft: UnsafeMutablePointer<Int>, _ extraColumnsOnRight: UnsafeMutablePointer<Int>, _ extraRowsOnTop: UnsafeMutablePointer<Int>, _ extraRowsOnBottom: UnsafeMutablePointer<Int>)

/*!
    @function   CVPixelBufferFillExtendedPixels
    @abstract   Fills the extended pixels of the PixelBuffer.   This function replicates edge pixels to fill the entire extended region of the image.
    @param      pixelBuffer Target PixelBuffer.
*/
@available(iOS 4.0, *)
func CVPixelBufferFillExtendedPixels(pixelBuffer: CVPixelBuffer) -> CVReturn
class CVPixelBufferPool {
}
typealias CVPixelBufferPoolRef = CVPixelBufferPool
@available(iOS 4.0, *)
let kCVPixelBufferPoolMinimumBufferCountKey: CFString
@available(iOS 4.0, *)
let kCVPixelBufferPoolMaximumBufferAgeKey: CFString
@available(iOS 4.0, *)
func CVPixelBufferPoolGetTypeID() -> CFTypeID

/*!
    @function   CVPixelBufferPoolCreate
    @abstract   Creates a new Pixel Buffer pool.
    @param      allocator The CFAllocatorRef to use for allocating this buffer pool.  May be NULL.
    @param      attributes   A CFDictionaryRef containing the attributes to be used for creating new PixelBuffers within the pool.
    @param      poolOut   The newly created pool will be placed here
    @result     Returns kCVReturnSuccess on success
*/
@available(iOS 4.0, *)
func CVPixelBufferPoolCreate(allocator: CFAllocator?, _ poolAttributes: CFDictionary?, _ pixelBufferAttributes: CFDictionary?, _ poolOut: UnsafeMutablePointer<CVPixelBufferPool?>) -> CVReturn

/*!
    @function   CVPixelBufferPoolGetAttributes
    @abstract   Returns the pool attributes dictionary for a CVPixelBufferPool
    @param      pool  The CVPixelBufferPoolRef to retrieve the attributes from
    @result     Returns the pool attributes dictionary, or NULL on failure.
*/
@available(iOS 4.0, *)
func CVPixelBufferPoolGetAttributes(pool: CVPixelBufferPool) -> Unmanaged<CFDictionary>?

/*!
    @function   CVPixelBufferPoolGetPixelBufferAttributes
    @abstract   Returns the attributes of pixel buffers that will be created from this pool.
    @discussion This function is provided for those cases where you may need to know some information about the buffers that
                will be created up front.
    @param      pool  The CVPixelBufferPoolRef to retrieve the attributes from
    @result     Returns the pixel buffer attributes dictionary, or NULL on failure.
*/
@available(iOS 4.0, *)
func CVPixelBufferPoolGetPixelBufferAttributes(pool: CVPixelBufferPool) -> Unmanaged<CFDictionary>?

/*!
    @function   CVPixelBufferPoolCreatePixelBuffer
    @abstract   Creates a new PixelBuffer object from the pool.
    @discussion The function creates a new (attachment-free) CVPixelBuffer using the pixel buffer attributes specifed during pool creation.
    @param      allocator The CFAllocatorRef to use for creating the pixel buffer.  May be NULL.
    @param      pool      The CVPixelBufferPool that should create the new CVPixelBuffer.
    @param      pixelBufferOut   The newly created pixel buffer will be placed here
    @result     Returns kCVReturnSuccess on success
*/
@available(iOS 4.0, *)
func CVPixelBufferPoolCreatePixelBuffer(allocator: CFAllocator?, _ pixelBufferPool: CVPixelBufferPool, _ pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> CVReturn
@available(iOS 4.0, *)
func CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(allocator: CFAllocator?, _ pixelBufferPool: CVPixelBufferPool, _ auxAttributes: CFDictionary?, _ pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> CVReturn
@available(iOS 4.0, *)
let kCVPixelBufferPoolAllocationThresholdKey: CFString
@available(iOS 4.0, *)
let kCVPixelBufferPoolFreeBufferNotification: CFString

/*!
	@enum CVPixelBufferPoolFlush flags
	@discussion Flags to pass to CVPixelBufferPoolFlush()
	@constant kCVPixelBufferPoolFlushExcessBuffers
		This flag will cause CVPixelBufferPoolFlush to flush all unused buffers regardless of age.
*/
typealias CVPixelBufferPoolFlushFlags = CVOptionFlags
var kCVPixelBufferPoolFlushExcessBuffers: CVPixelBufferPoolFlushFlags { get }

/*!
	@function       CVPixelBufferPoolFlush
	@abstract       Frees as many buffers from the pool as possible.
	@discussion     By default, this function will free all aged out buffers.  Setting the
            kCVPixelBufferPoolFlushExcessBuffers flag will cause this call to free all unused
            buffers regardless of age.
	@param		pool    The CVPixelBufferPool to be flushed.
	@param		options Set to kCVPixelBufferPoolFlushExcessBuffers to free all unused buffers
            regardless of their age.
*/
func CVPixelBufferPoolFlush(pool: CVPixelBufferPool, _ options: CVPixelBufferPoolFlushFlags)
@available(iOS 4.0, *)
let kCVPixelFormatName: CFString
@available(iOS 4.0, *)
let kCVPixelFormatConstant: CFString
@available(iOS 4.0, *)
let kCVPixelFormatCodecType: CFString
@available(iOS 4.0, *)
let kCVPixelFormatFourCC: CFString
@available(iOS 4.3, *)
let kCVPixelFormatContainsAlpha: CFString
@available(iOS 8.0, *)
let kCVPixelFormatContainsYCbCr: CFString
@available(iOS 8.0, *)
let kCVPixelFormatContainsRGB: CFString
@available(iOS 9.0, *)
let kCVPixelFormatComponentRange: CFString
@available(iOS 9.0, *)
let kCVPixelFormatComponentRange_VideoRange: CFString
@available(iOS 9.0, *)
let kCVPixelFormatComponentRange_FullRange: CFString
@available(iOS 9.0, *)
let kCVPixelFormatComponentRange_WideRange: CFString
@available(iOS 4.0, *)
let kCVPixelFormatPlanes: CFString
@available(iOS 4.0, *)
let kCVPixelFormatBlockWidth: CFString
@available(iOS 4.0, *)
let kCVPixelFormatBlockHeight: CFString
@available(iOS 4.0, *)
let kCVPixelFormatBitsPerBlock: CFString
@available(iOS 4.0, *)
let kCVPixelFormatBlockHorizontalAlignment: CFString
@available(iOS 4.0, *)
let kCVPixelFormatBlockVerticalAlignment: CFString
@available(iOS 4.0, *)
let kCVPixelFormatBlackBlock: CFString
@available(iOS 4.0, *)
let kCVPixelFormatHorizontalSubsampling: CFString
@available(iOS 4.0, *)
let kCVPixelFormatVerticalSubsampling: CFString
@available(iOS 4.0, *)
let kCVPixelFormatOpenGLFormat: CFString
@available(iOS 4.0, *)
let kCVPixelFormatOpenGLType: CFString
@available(iOS 4.0, *)
let kCVPixelFormatOpenGLInternalFormat: CFString
@available(iOS 4.0, *)
let kCVPixelFormatCGBitmapInfo: CFString
@available(iOS 4.0, *)
let kCVPixelFormatQDCompatibility: CFString
@available(iOS 4.0, *)
let kCVPixelFormatCGBitmapContextCompatibility: CFString
@available(iOS 4.0, *)
let kCVPixelFormatCGImageCompatibility: CFString
@available(iOS 4.0, *)
let kCVPixelFormatOpenGLCompatibility: CFString
@available(iOS 5.0, *)
let kCVPixelFormatOpenGLESCompatibility: CFString
typealias CVFillExtendedPixelsCallBack = @convention(c) (CVPixelBuffer, UnsafeMutablePointer<Void>) -> DarwinBoolean
struct CVFillExtendedPixelsCallBackData {
  var version: CFIndex
  var fillCallBack: CVFillExtendedPixelsCallBack?
  var refCon: UnsafeMutablePointer<Void>
  init()
  init(version: CFIndex, fillCallBack: CVFillExtendedPixelsCallBack?, refCon: UnsafeMutablePointer<Void>)
}
@available(iOS 4.0, *)
let kCVPixelFormatFillExtendedPixelsCallback: CFString
@available(iOS 4.0, *)
func CVPixelFormatDescriptionCreateWithPixelFormatType(allocator: CFAllocator?, _ pixelFormat: OSType) -> Unmanaged<CFDictionary>?
@available(iOS 4.0, *)
func CVPixelFormatDescriptionArrayCreateWithAllPixelFormatTypes(allocator: CFAllocator?) -> Unmanaged<CFArray>?
@available(iOS 4.0, *)
func CVPixelFormatDescriptionRegisterDescriptionWithPixelFormatType(description: CFDictionary, _ pixelFormat: OSType)

/*!
    @enum	CVReturn
    @abstract   CoreVideo specific error codes

    @constant   kCVReturnSuccess Function executed successfully without errors.
    @constant   kCVReturnFirst Placeholder to mark the beginning of the range of CVReturn codes.
    @constant   kCVReturnLast Placeholder to mark the end of the range of CVReturn codes.
 
    @constant   kCVReturnInvalidArgument At least one of the arguments passed in is not valid. Either out of range or the wrong type.
    @constant   kCVReturnAllocationFailed The allocation for a buffer or buffer pool failed. Most likely because of lack of resources.

    @constant   kCVReturnInvalidDisplay A CVDisplayLink cannot be created for the given DisplayRef.
    @constant   kCVReturnDisplayLinkAlreadyRunning The CVDisplayLink is already started and running.
    @constant   kCVReturnDisplayLinkNotRunning The CVDisplayLink has not been started.
    @constant   kCVReturnDisplayLinkCallbacksNotSet The output callback is not set.

    @constant   kCVReturnInvalidPixelFormat The requested pixelformat is not supported for the CVBuffer type.
    @constant   kCVReturnInvalidSize The requested size (most likely too big) is not supported for the CVBuffer type.
    @constant   kCVReturnInvalidPixelBufferAttributes A CVBuffer cannot be created with the given attributes.
    @constant   kCVReturnPixelBufferNotOpenGLCompatible The Buffer cannot be used with OpenGL as either its size, pixelformat or attributes are not supported by OpenGL.
    @constant   kCVReturnPixelBufferNotMetalCompatible The Buffer cannot be used with Metal as either its size, pixelformat or attributes are not supported by Metal.
 
    @constant   kCVReturnWouldExceedAllocationThreshold The allocation request failed because it would have exceeded a specified allocation threshold (see kCVPixelBufferPoolAllocationThresholdKey).
    @constant   kCVReturnPoolAllocationFailed The allocation for the buffer pool failed. Most likely because of lack of resources. Check if your parameters are in range.
    @constant   kCVReturnInvalidPoolAttributes A CVBufferPool cannot be created with the given attributes.
*/
typealias CVReturn = Int32
var kCVReturnSuccess: CVReturn { get }
var kCVReturnFirst: CVReturn { get }
var kCVReturnError: CVReturn { get }
var kCVReturnInvalidArgument: CVReturn { get }
var kCVReturnAllocationFailed: CVReturn { get }
var kCVReturnUnsupported: CVReturn { get }
var kCVReturnInvalidDisplay: CVReturn { get }
var kCVReturnDisplayLinkAlreadyRunning: CVReturn { get }
var kCVReturnDisplayLinkNotRunning: CVReturn { get }
var kCVReturnDisplayLinkCallbacksNotSet: CVReturn { get }
var kCVReturnInvalidPixelFormat: CVReturn { get }
var kCVReturnInvalidSize: CVReturn { get }
var kCVReturnInvalidPixelBufferAttributes: CVReturn { get }
var kCVReturnPixelBufferNotOpenGLCompatible: CVReturn { get }
var kCVReturnPixelBufferNotMetalCompatible: CVReturn { get }
var kCVReturnWouldExceedAllocationThreshold: CVReturn { get }
var kCVReturnPoolAllocationFailed: CVReturn { get }
var kCVReturnInvalidPoolAttributes: CVReturn { get }
var kCVReturnLast: CVReturn { get }
