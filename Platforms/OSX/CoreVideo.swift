
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
@available(OSX 10.4, *)
let kCVBufferPropagatedAttachmentsKey: CFString
@available(OSX 10.4, *)
let kCVBufferNonPropagatedAttachmentsKey: CFString
@available(OSX 10.4, *)
let kCVBufferMovieTimeKey: CFString
@available(OSX 10.4, *)
let kCVBufferTimeValueKey: CFString
@available(OSX 10.4, *)
let kCVBufferTimeScaleKey: CFString
typealias CVAttachmentMode = UInt32
var kCVAttachmentMode_ShouldNotPropagate: CVAttachmentMode { get }
var kCVAttachmentMode_ShouldPropagate: CVAttachmentMode { get }

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
@available(OSX 10.4, *)
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
@available(OSX 10.4, *)
func CVBufferGetAttachment(buffer: CVBuffer, _ key: CFString, _ attachmentMode: UnsafeMutablePointer<CVAttachmentMode>) -> Unmanaged<AnyObject>?

/*!
    @function   CVBufferRemoveAttachment
    @abstract   Removes a specific attachment of a CVBuffer object
    @discussion CVBufferRemoveAttachment removes an attachement identified by a key. If found the attachement is removed and the retain count decremented.
    @param      buffer  Target CVBuffer object.
    @param      key	Key in form of a CFString identifying the desired attachment.
*/
@available(OSX 10.4, *)
func CVBufferRemoveAttachment(buffer: CVBuffer, _ key: CFString)

/*!
    @function   CVBufferRemoveAllAttachments
    @abstract   Removes all attachments of a CVBuffer object
    @discussion While CVBufferRemoveAttachment removes a specific attachement identified by a key CVBufferRemoveAllAttachments removes all attachments of a buffer and decrements their retain counts.
    @param      buffer  Target CVBuffer object.
*/
@available(OSX 10.4, *)
func CVBufferRemoveAllAttachments(buffer: CVBuffer)

/*!
    @function   CVBufferGetAttachments
    @abstract   Returns all attachments of a CVBuffer object
    @discussion CVBufferGetAttachments is a convenience call that returns all attachments with their corresponding keys in a CFDictionary.
    @param      buffer  Target CVBuffer object.
    @result     A CFDictionary with all buffer attachments identified by there keys. If no attachment is present, the dictionary is empty.  Returns NULL
		for invalid attachment mode.
*/
@available(OSX 10.4, *)
func CVBufferGetAttachments(buffer: CVBuffer, _ attachmentMode: CVAttachmentMode) -> Unmanaged<CFDictionary>?

/*!
    @function   CVBufferSetAttachments
    @abstract   Sets a set of attachments for a CVBuffer
    @discussion CVBufferSetAttachments is a convenience call that in turn calls CVBufferSetAttachment for each key and value in the given dictionary. All key value pairs must be in the root level of the dictionary.
    @param      buffer  Target CVBuffer object.
*/
@available(OSX 10.4, *)
func CVBufferSetAttachments(buffer: CVBuffer, _ theAttachments: CFDictionary, _ attachmentMode: CVAttachmentMode)

/*!
    @function   CVBufferPropagateAttachments
    @abstract   Copy all propagatable attachments from one buffer to another.
    @discussion CVBufferPropagateAttachments is a convenience call that copies all attachments with a mode of kCVAttachmentMode_ShouldPropagate from one
                buffer to another.
    @param      sourceBuffer  CVBuffer to copy attachments from.
    @param      destinationBuffer  CVBuffer to copy attachments to.
*/
@available(OSX 10.4, *)
func CVBufferPropagateAttachments(sourceBuffer: CVBuffer, _ destinationBuffer: CVBuffer)
typealias CVDisplayLinkRef = CVDisplayLink
typealias CVDisplayLinkOutputCallback = @convention(c) (CVDisplayLink, UnsafePointer<CVTimeStamp>, UnsafePointer<CVTimeStamp>, CVOptionFlags, UnsafeMutablePointer<CVOptionFlags>, UnsafeMutablePointer<Void>) -> CVReturn
typealias CVDisplayLinkOutputHandler = (CVDisplayLink, UnsafePointer<CVTimeStamp>, UnsafePointer<CVTimeStamp>, CVOptionFlags, UnsafeMutablePointer<CVOptionFlags>) -> CVReturn
@available(OSX 10.4, *)
func CVDisplayLinkGetTypeID() -> CFTypeID

/*!
    @function   CVDisplayLinkCreateWithCGDisplays
    @abstract   General call to create a CVDisplayLink
    @discussion Use this call to create a CVDisplayLink for a set of displays indentified by the CGDirectDisplayIDs.
    @param      displayArray array of CGDirectDisplayIDs
    @param      count   number of displays in the displayArray
    @param      displayLisk The new display link will be returned here
    @result	returns kCVReturnSuccess on success.
*/
@available(OSX 10.4, *)
func CVDisplayLinkCreateWithCGDisplays(displayArray: UnsafeMutablePointer<CGDirectDisplayID>, _ count: CFIndex, _ displayLinkOut: UnsafeMutablePointer<CVDisplayLink?>) -> CVReturn

/*!
    @function   CVDisplayLinkCreateWithOpenGLDisplayMask
    @abstract   Convenience call to create a CVDisplayLink from an OpenGL display mask.
    @discussion Use this call to create a CVDisplayLink for a CGOpenGLDisplayMask.
    @param      mask CGOpenGLDisplayMask describing the display
    @param      displayLisk The new display link will be returned here
    @result	returns kCVReturnSuccess on success.
*/
@available(OSX 10.4, *)
func CVDisplayLinkCreateWithOpenGLDisplayMask(mask: CGOpenGLDisplayMask, _ displayLinkOut: UnsafeMutablePointer<CVDisplayLink?>) -> CVReturn

/*!
    @function   CVDisplayLinkCreateWithCGDisplay
    @abstract   Convenience call to create a CVDisplayLink for a single CGDirectDisplay.
    @discussion Use this call to create a CVDisplayLink for a single CGDirectDisplay.
    @param      displayID CGDirectDisplayID of the target display
    @param      displayLisk The new display link will be returned here
    @result	returns kCVReturnSuccess on success.
*/
@available(OSX 10.4, *)
func CVDisplayLinkCreateWithCGDisplay(displayID: CGDirectDisplayID, _ displayLinkOut: UnsafeMutablePointer<CVDisplayLink?>) -> CVReturn

/*!
    @function   CVDisplayLinkCreateWithActiveCGDisplays
    @abstract   Convenience function to create a CVDisplayLink capable of being used with all active CGDisplays
    @param      displayLinkOut The newly created CVDisplayLink
    @result     kCVReturnSuccess if the device was created, or failure
*/
@available(OSX 10.4, *)
func CVDisplayLinkCreateWithActiveCGDisplays(displayLinkOut: UnsafeMutablePointer<CVDisplayLink?>) -> CVReturn

/*!
    @function   CVDisplayLinkSetCurrentCGDisplay
    @abstract   Sets the current display of a DisplayLink
    @discussion It is safe to call this with a running display link, but be aware that there will likely be a timestamp
                discontinuity in the video time stamp
    @param      displayLink target CVDisplayLinkRef
    @param      displayID target CGDirectDisplayID
    @result     CVReturn. kCVReturnSuccess if successfull.
*/
@available(OSX 10.4, *)
func CVDisplayLinkSetCurrentCGDisplay(displayLink: CVDisplayLink, _ displayID: CGDirectDisplayID) -> CVReturn

/*!
    @function   CVDisplayLinkSetCurrentCGDisplayFromOpenGLContext
    @abstract   Convenience function to select a CVDisplayLink most optimal for the current renderer of the passed in OpenGL context
    @param      displayLink The CVDisplayLink for which you want to set the current CGDisplay
    @param      cglContext The OpenGL context to retrieve the current renderer from.
    @param      cglPixelFormat The OpenGL pixel format used to create the passed in OpenGL context
    @result     kCVReturnSuccess if a device was found, or failure.
*/
@available(OSX 10.4, *)
func CVDisplayLinkSetCurrentCGDisplayFromOpenGLContext(displayLink: CVDisplayLink, _ cglContext: CGLContextObj, _ cglPixelFormat: CGLPixelFormatObj) -> CVReturn

/*!
    @function   CVDisplayLinkGetCurrentCGDisplay
    @abstract   Gets the current display of a DisplayLink
    @discussion (description)
    @param      displayLink target CVDisplayLinkRef
    @result     CGDirectDisplayID
*/
@available(OSX 10.4, *)
func CVDisplayLinkGetCurrentCGDisplay(displayLink: CVDisplayLink) -> CGDirectDisplayID

/*!
    @function   CVDisplayLinkSetOutputCallback
    @abstract   Set the renderer output callback function	
    @discussion The DisplayLink will invoke this callback whenever it wants you to output a frame.
    @param      displayLink target CVDisplayLinkRef
    @param	callback	CVDisplayLinkOutputCallback function
    @param	userInfo  User data for the callback to identify the context.
    @result     CVReturn. kCVReturnSuccess if successfull.
*/
@available(OSX 10.4, *)
func CVDisplayLinkSetOutputCallback(displayLink: CVDisplayLink, _ callback: CVDisplayLinkOutputCallback, _ userInfo: UnsafeMutablePointer<Void>) -> CVReturn

/*!
	 @function   CVDisplayLinkSetOutputHandler
	 @abstract   Set the renderer output callback block
	 @discussion The DisplayLink will invoke this block whenever it wants you to output a frame. You can only have a block or a callback function; not both.
	 @param      displayLink target CVDisplayLinkRef
	 @param      handler	CVDisplayLinkOutputHandler block
	 @result     CVReturn. kCVReturnSuccess if successful.
*/
func CVDisplayLinkSetOutputHandler(displayLink: CVDisplayLink, _ handler: CVDisplayLinkOutputHandler) -> CVReturn

/*!
    @function   CVDisplayLinkStart
    @abstract   Start timer for DisplayLink
    @discussion This call should not be made from inside the CVDisplayLinkOutputCallback
    @param      displayLink target CVDisplayLinkRef
    @result     CVReturn. kCVReturnSuccess if successfull.
                kCVReturnDisplayLinkCallbacksNotSet The DisplayLink cannot be started until the output callback is set.
*/
@available(OSX 10.4, *)
func CVDisplayLinkStart(displayLink: CVDisplayLink) -> CVReturn

/*!
    @function   CVDisplayLinkStop
    @abstract   Stop timer for DisplayLink
    @discussion (description)
    @param      displayLink target CVDisplayLinkRef
    @result     CVReturn. kCVReturnSuccess if successfull.
*/
@available(OSX 10.4, *)
func CVDisplayLinkStop(displayLink: CVDisplayLink) -> CVReturn

/*!
    @function   CVDisplayLinkGetNominalOutputVideoRefreshPeriod
    @abstract   Retrieves the nominal refresh period of a CVDisplayLink.
    @discussion This call allows one to retrieve the device's "ideal" refresh period.   For example, an NTSC output device might report 1001/60000 to represent the exact NTSC vertial refresh rate.
    @param      displayLink The CVDisplayLink to get the refresh period from.
    @result     A CVTime struct that holds the nominal refresh period.    This value may be indefinite.
*/
@available(OSX 10.4, *)
func CVDisplayLinkGetNominalOutputVideoRefreshPeriod(displayLink: CVDisplayLink) -> CVTime

/*!
    @function   CVDisplayLinkGetOutputVideoLatency
    @abstract   Retrieves the nominal latency of a CVDisplayLink.
    @discussion This call allows one to retrieve the device's built in output latency. An NTSC device with one frame of latency might report back 1001/30000 or 2002/60000, for example.
    @param      displayLink The CVDisplayLink to get the latency period from.
    @result     A CVTime struct that holds the latency.   This value may be indefinite.
*/
@available(OSX 10.4, *)
func CVDisplayLinkGetOutputVideoLatency(displayLink: CVDisplayLink) -> CVTime

/*!
    @function   CVDisplayLinkGetActualOutputVideoRefreshPeriod
    @abstract   Retrieves the actual output refresh period of a display as measured by the host timebase.
    @discussion This call returns the actual output refresh period (in seconds) as computed relative to the host's timebase.
    @param      displayLink The CVDisplayLink to get the refresh period from.
    @result     A double containing the actual refresh period.   This value may be zero if the device is not running, or is otherwise unavailable.
*/
@available(OSX 10.4, *)
func CVDisplayLinkGetActualOutputVideoRefreshPeriod(displayLink: CVDisplayLink) -> Double

/*!
    @function   CVDisplayLinkIsRunning
    @abstract   Retrieves the running state of a CVDisplayLink.
    @discussion This call queries the running state of the given CVDisplayLink.
    @param      displayLink The CVDisplayLink to get the running state from.
    @result     A boolean describing the running state. It returns true if it is running and false if it is not running or the CVDisplayLink is invalid.
*/
@available(OSX 10.4, *)
func CVDisplayLinkIsRunning(displayLink: CVDisplayLink) -> Bool

/*!
    @function   CVDisplayLinkGetCurrentTime
    @abstract   Retrieves the current ("now") time of a given CVDisplayLink
    @discussion This call may be used to get the current time of a running CVDisplayLink, outside of the output callback.
    @param      displayLink The CVDisplayLink to get the current time from.
    @param      outTime A pointer to a CVTimeStamp struct.  This struct's version field must currently be set correctly (currently 0) to indicate which version of the timestamp struct is desired.
    @result     kCVReturnSuccess if the current time could be retrieved, otherwise an error indicating why the operation failed.
*/
@available(OSX 10.4, *)
func CVDisplayLinkGetCurrentTime(displayLink: CVDisplayLink, _ outTime: UnsafeMutablePointer<CVTimeStamp>) -> CVReturn

/*!
    @function   CVDisplayLinkTranslateTime
    @abstract   Translates the time in the CVDisplayLink's time base from one representation to
                    another. Note that the device has to be running for this call to succeed.
    @param      displayLink The CVDisplayLink who's timebase should be used to do the translation.
    @param      inTime A CVTimeStamp containing the source time to be translated.
    @param      outTime A CVTimeStamp into which the target time will be written. This struct's version field must currently be set correctly 
                (currently 0) to indicate which version of the timestamp struct is desired.  As well, the flags field should be used to specify
                which representations to translate to.
    @result     kCVReturnSuccess if the time could be translated, otherwise an error indicating why the operation failed.
*/
@available(OSX 10.4, *)
func CVDisplayLinkTranslateTime(displayLink: CVDisplayLink, _ inTime: UnsafePointer<CVTimeStamp>, _ outTime: UnsafeMutablePointer<CVTimeStamp>) -> CVReturn
@available(OSX 10.4, *)
let kCVImageBufferCGColorSpaceKey: CFString
@available(OSX 10.4, *)
let kCVImageBufferCleanApertureKey: CFString
@available(OSX 10.4, *)
let kCVImageBufferCleanApertureWidthKey: CFString
@available(OSX 10.4, *)
let kCVImageBufferCleanApertureHeightKey: CFString
@available(OSX 10.4, *)
let kCVImageBufferCleanApertureHorizontalOffsetKey: CFString
@available(OSX 10.4, *)
let kCVImageBufferCleanApertureVerticalOffsetKey: CFString
@available(OSX 10.4, *)
let kCVImageBufferPreferredCleanApertureKey: CFString
@available(OSX 10.4, *)
let kCVImageBufferFieldCountKey: CFString
@available(OSX 10.4, *)
let kCVImageBufferFieldDetailKey: CFString
@available(OSX 10.4, *)
let kCVImageBufferFieldDetailTemporalTopFirst: CFString
@available(OSX 10.4, *)
let kCVImageBufferFieldDetailTemporalBottomFirst: CFString
@available(OSX 10.4, *)
let kCVImageBufferFieldDetailSpatialFirstLineEarly: CFString
@available(OSX 10.4, *)
let kCVImageBufferFieldDetailSpatialFirstLineLate: CFString
@available(OSX 10.4, *)
let kCVImageBufferPixelAspectRatioKey: CFString
@available(OSX 10.4, *)
let kCVImageBufferPixelAspectRatioHorizontalSpacingKey: CFString
@available(OSX 10.4, *)
let kCVImageBufferPixelAspectRatioVerticalSpacingKey: CFString
@available(OSX 10.4, *)
let kCVImageBufferDisplayDimensionsKey: CFString
@available(OSX 10.4, *)
let kCVImageBufferDisplayWidthKey: CFString
@available(OSX 10.4, *)
let kCVImageBufferDisplayHeightKey: CFString
@available(OSX 10.4, *)
let kCVImageBufferGammaLevelKey: CFString
@available(OSX 10.6, *)
let kCVImageBufferICCProfileKey: CFString
@available(OSX 10.4, *)
let kCVImageBufferYCbCrMatrixKey: CFString
@available(OSX 10.4, *)
let kCVImageBufferYCbCrMatrix_ITU_R_709_2: CFString
@available(OSX 10.4, *)
let kCVImageBufferYCbCrMatrix_ITU_R_601_4: CFString
@available(OSX 10.4, *)
let kCVImageBufferYCbCrMatrix_SMPTE_240M_1995: CFString
@available(OSX 10.11, *)
let kCVImageBufferYCbCrMatrix_ITU_R_2020: CFString
@available(OSX 10.5, *)
let kCVImageBufferColorPrimariesKey: CFString
@available(OSX 10.5, *)
let kCVImageBufferColorPrimaries_ITU_R_709_2: CFString
@available(OSX 10.5, *)
let kCVImageBufferColorPrimaries_EBU_3213: CFString
@available(OSX 10.5, *)
let kCVImageBufferColorPrimaries_SMPTE_C: CFString
@available(OSX 10.8, *)
let kCVImageBufferColorPrimaries_P22: CFString
@available(OSX 10.11, *)
let kCVImageBufferColorPrimaries_DCI_P3: CFString
@available(OSX 10.11, *)
let kCVImageBufferColorPrimaries_P3_D65: CFString
@available(OSX 10.11, *)
let kCVImageBufferColorPrimaries_ITU_R_2020: CFString
@available(OSX 10.5, *)
let kCVImageBufferTransferFunctionKey: CFString
@available(OSX 10.5, *)
let kCVImageBufferTransferFunction_ITU_R_709_2: CFString
@available(OSX 10.6, *)
let kCVImageBufferTransferFunction_SMPTE_240M_1995: CFString
@available(OSX 10.6, *)
let kCVImageBufferTransferFunction_UseGamma: CFString
@available(OSX 10.11, *)
let kCVImageBufferTransferFunction_ITU_R_2020: CFString
@available(OSX 10.5, *)
let kCVImageBufferChromaLocationTopFieldKey: CFString
@available(OSX 10.5, *)
let kCVImageBufferChromaLocationBottomFieldKey: CFString
@available(OSX 10.5, *)
let kCVImageBufferChromaLocation_Left: CFString
@available(OSX 10.5, *)
let kCVImageBufferChromaLocation_Center: CFString
@available(OSX 10.5, *)
let kCVImageBufferChromaLocation_TopLeft: CFString
@available(OSX 10.5, *)
let kCVImageBufferChromaLocation_Top: CFString
@available(OSX 10.5, *)
let kCVImageBufferChromaLocation_BottomLeft: CFString
@available(OSX 10.5, *)
let kCVImageBufferChromaLocation_Bottom: CFString
@available(OSX 10.5, *)
let kCVImageBufferChromaLocation_DV420: CFString
@available(OSX 10.5, *)
let kCVImageBufferChromaSubsamplingKey: CFString
@available(OSX 10.5, *)
let kCVImageBufferChromaSubsampling_420: CFString
@available(OSX 10.5, *)
let kCVImageBufferChromaSubsampling_422: CFString
@available(OSX 10.5, *)
let kCVImageBufferChromaSubsampling_411: CFString
@available(OSX 10.10, *)
let kCVImageBufferAlphaChannelIsOpaque: CFString

/*!

    @typedef	CVImageBufferRef

    @abstract   Base type for all CoreVideo image buffers



*/
typealias CVImageBufferRef = CVImageBuffer

/*!

    @function   CVImageBufferGetEncodedSize

    @abstract   Returns the full encoded dimensions of a CVImageBuffer.  For example, for an NTSC DV frame this would be 720x480

    @param      imageBuffer A CVImageBuffer that you wish to retrieve the encoded size from.

    @result     A CGSize returning the full encoded size of the buffer

		Returns zero size if called with a non-CVImageBufferRef type or NULL.

*/
@available(OSX 10.4, *)
func CVImageBufferGetEncodedSize(imageBuffer: CVImageBuffer) -> CGSize

/*!

    @function   CVImageBufferGetDisplaySize

    @abstract   Returns the nominal output display size (in square pixels) of a CVImageBuffer.  

                For example, for an NTSC DV frame this would be 640x480

    @param      imageBuffer A CVImageBuffer that you wish to retrieve the display size from.

    @result     A CGSize returning the nominal display size of the buffer

		Returns zero size if called with a non-CVImageBufferRef type or NULL.

*/
@available(OSX 10.4, *)
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
@available(OSX 10.4, *)
func CVImageBufferGetCleanRect(imageBuffer: CVImageBuffer) -> CGRect

/*!

    @function   CVImageBufferIsFlipped

    @abstract   Returns whether the image is flipped vertically or not.

    @param      CVImageBuffer target

    @result     True if 0,0 in the texture is upper left, false if 0,0 is lower left.

*/
@available(OSX 10.4, *)
func CVImageBufferIsFlipped(imageBuffer: CVImageBuffer) -> Bool

/*!

    @function   CVImageBufferGetColorSpace

    @abstract   Returns the color space of a CVImageBuffer.

    @param      imageBuffer A CVImageBuffer that you wish to retrieve the color space from.

    @result     A CGColorSpaceRef representing the color space of the buffer.

		Returns NULL if called with a non-CVImageBufferRef type or NULL.

*/
@available(OSX 10.4, *)
func CVImageBufferGetColorSpace(imageBuffer: CVImageBuffer) -> Unmanaged<CGColorSpace>?

/*!

   @function   CVImageBufferCreateColorSpaceFromAttachments

   @abstract   Attempts to synthesize a CGColorSpace from an image buffer's attachments.

   @param      attachments A CFDictionary of attachments for an image buffer, obtained using CVBufferGetAttachments().

   @result     A CGColorSpaceRef representing the color space of the buffer.

		Returns NULL if the attachments dictionary does not contain the information required to synthesize a CGColorSpace.

   @discussion

	To generate a CGColorSpace, the attachments dictionary should include values for either:

		1. kCVImageBufferICCProfile

		2. kCVImageBufferColorPrimariesKey, kCVImageBufferTransferFunctionKey, and kCVImageBufferYCbCrMatrixKey (and possibly kCVImageBufferGammaLevelKey)

	The client is responsible for releasing the CGColorSpaceRef when it is done with it (CGColorSpaceRelease() or CFRelease())

		

*/
@available(OSX 10.8, *)
func CVImageBufferCreateColorSpaceFromAttachments(attachments: CFDictionary) -> Unmanaged<CGColorSpace>?

/*!
    @typedef	CVMetalTextureRef
    @abstract   Metal texture based image buffer

*/
typealias CVMetalTextureRef = CVMetalTexture
@available(OSX 10.11, *)
func CVMetalTextureGetTypeID() -> CFTypeID

/*!
    @function   CVMetalTextureGetTexture
    @abstract   Returns the Meta MTLTexture object of the CVMetalTextureRef
    @param      image Target CVMetalTexture
    @result     Metal texture
*/
@available(OSX 10.11, *)
func CVMetalTextureGetTexture(image: CVMetalTexture) -> MTLTexture?

/*!
    @function   CVMetalTextureIsFlipped
    @abstract   Returns whether the image is flipped vertically or not.
    @param      image Target CVMetalTexture
    @result     True if 0,0 in the texture is upper left, false if 0,0 is lower left
*/
@available(OSX 10.11, *)
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
@available(OSX 10.11, *)
func CVMetalTextureGetCleanTexCoords(image: CVMetalTexture, _ lowerLeft: UnsafeMutablePointer<Float>, _ lowerRight: UnsafeMutablePointer<Float>, _ upperRight: UnsafeMutablePointer<Float>, _ upperLeft: UnsafeMutablePointer<Float>)
@available(OSX 10.11, *)
let kCVMetalTextureCacheMaximumTextureAgeKey: CFString

/*!
    @typedef	CVMetalTextureCacheRef
    @abstract   CoreVideo Metal Texture Cache

*/
typealias CVMetalTextureCacheRef = CVMetalTextureCache
@available(OSX 10.11, *)
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
@available(OSX 10.11, *)
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
@available(OSX 10.11, *)
func CVMetalTextureCacheCreateTextureFromImage(allocator: CFAllocator?, _ textureCache: CVMetalTextureCache, _ sourceImage: CVImageBuffer, _ textureAttributes: CFDictionary?, _ pixelFormat: MTLPixelFormat, _ width: Int, _ height: Int, _ planeIndex: Int, _ textureOut: UnsafeMutablePointer<Unmanaged<CVMetalTexture>?>) -> CVReturn

/*!
    @function   CVMetalTextureCacheFlush
    @abstract   Performs internal housekeeping/recycling operations
    @discussion This call must be made periodically to give the texture cache a chance to do internal housekeeping operations.
    @param      textureCache The texture cache object to flush
    @param      options Currently unused, set to 0.
*/
@available(OSX 10.11, *)
func CVMetalTextureCacheFlush(textureCache: CVMetalTextureCache, _ options: CVOptionFlags)
@available(OSX 10.4, *)
let kCVOpenGLBufferWidth: CFString
@available(OSX 10.4, *)
let kCVOpenGLBufferHeight: CFString
@available(OSX 10.4, *)
let kCVOpenGLBufferTarget: CFString
@available(OSX 10.4, *)
let kCVOpenGLBufferInternalFormat: CFString
@available(OSX 10.4, *)
let kCVOpenGLBufferMaximumMipmapLevel: CFString
typealias CVOpenGLBufferRef = CVOpenGLBuffer
@available(OSX 10.4, *)
func CVOpenGLBufferGetTypeID() -> CFTypeID

/*!
    @function   CVOpenGLBufferCreate
    @abstract   Create a new CVOpenGLBuffer that may be used for OpenGL rendering purposes
    @param      width The width of the buffer in pixels
    @param      height The height of the buffer in pixels
    @param      attributes A CFDictionaryRef containing other desired attributes of the buffer (texture target, internal format, max mipmap level, etc.).
		May be NULL.  Defaults are GL_TEXTURE_RECTANGLE_EXT, GL_RGBA, and 0 for kCVOpenGLBufferTarget, kCVOpenGLBufferInternalFormat and kCVOpenGLBufferMaximumMipmapLevel,
		respectively.
    @param      bufferOut    The newly created buffer will be placed here.
    @result     kCVReturnSuccess if the attachment succeeded
*/
@available(OSX 10.4, *)
func CVOpenGLBufferCreate(allocator: CFAllocator?, _ width: Int, _ height: Int, _ attributes: CFDictionary?, _ bufferOut: UnsafeMutablePointer<CVOpenGLBuffer?>) -> CVReturn

/*!
    @function   CVOpenGLBufferGetAttributes
    @param      openGLBuffer Target OpenGL Buffer.
    @result     CVOpenGLBuffer attributes dictionary, NULL if not set.
*/
@available(OSX 10.4, *)
func CVOpenGLBufferGetAttributes(openGLBuffer: CVOpenGLBuffer) -> Unmanaged<CFDictionary>?

/*!
    @function   CVOpenGLBufferAttach
    @param      openGLBuffer The buffer you wish to attach a GL context to
    @param      cglContext   The CGLContextObj you wish to attach
    @param      face	     The target GL face enum (0 for non cube maps)
    @param      level        The mipmap level index you wish to attach to
    @param      screen       The virtual screen number you want to use
    @result     kCVReturnSuccess if the attachment succeeded
*/
@available(OSX 10.4, *)
func CVOpenGLBufferAttach(openGLBuffer: CVOpenGLBuffer, _ cglContext: CGLContextObj, _ face: GLenum, _ level: GLint, _ screen: GLint) -> CVReturn
typealias CVOpenGLBufferPoolRef = CVOpenGLBufferPool
@available(OSX 10.4, *)
let kCVOpenGLBufferPoolMinimumBufferCountKey: CFString
@available(OSX 10.4, *)
let kCVOpenGLBufferPoolMaximumBufferAgeKey: CFString
@available(OSX 10.4, *)
func CVOpenGLBufferPoolGetTypeID() -> CFTypeID

/*!
    @function   CVOpenGLBufferPoolCreate
    @abstract   Creates a new OpenGL Buffer pool.
    @discussion Equivalent to CFRelease, but NULL safe
    @param      allocator The CFAllocatorRef to use for allocating this buffer pool.  May be NULL.
    @param      poolAttributes   A CFDictionaryRef containing the attributes to be used for the pool itself.
    @param      openGLBufferAttributes   A CFDictionaryRef containing the attributes to be used for creating new OpenGLBuffers within the pool.
    @param      poolOut   The newly created pool will be placed here
    @result     Returns kCVReturnSuccess on success
*/
@available(OSX 10.4, *)
func CVOpenGLBufferPoolCreate(allocator: CFAllocator?, _ poolAttributes: CFDictionary?, _ openGLBufferAttributes: CFDictionary?, _ poolOut: UnsafeMutablePointer<CVOpenGLBufferPool?>) -> CVReturn

/*!
    @function   CVOpenGLBufferPoolGetOpenGLBufferAttributes
    @abstract   Returns the pool attributes dictionary for a CVOpenGLBufferPool
    @param      pool  The CVOpenGLBufferPoolRef to retrieve the attributes from
    @result     Returns the pool attributes dictionary, or NULL on failure.
*/
@available(OSX 10.4, *)
func CVOpenGLBufferPoolGetAttributes(pool: CVOpenGLBufferPool) -> Unmanaged<CFDictionary>?

/*!
    @function   CVOpenGLBufferPoolGetOpenGLBufferAttributes
    @abstract   Returns the attributes of OpenGL buffers that will be created from this pool.
    @discussion This function is provided for those cases where you may need to know some information about the buffers that
                will be created up front.
    @param      pool  The CVOpenGLBufferPoolRef to retrieve the attributes from
    @result     Returns the OpenGL buffer attributes dictionary, or NULL on failure.
*/
@available(OSX 10.4, *)
func CVOpenGLBufferPoolGetOpenGLBufferAttributes(pool: CVOpenGLBufferPool) -> Unmanaged<CFDictionary>?

/*!
    @function   CVOpenGLBufferPoolCreateOpenGLBuffer
    @abstract   Creates a new OpenGLBuffer object from the pool.
    @discussion The function creates a new CVOpenGLBuffer with the default attachments using the OpenGL buffer attributes specifed during pool creation.
    @param      allocator The CFAllocatorRef to use for creating the OpenGL buffer.  May be NULL.
    @param      openGLBufferPool      The CVOpenGLBufferPool that should create the new CVOpenGLBuffer.
    @param      openGLBufferOut   The newly created OpenGL buffer will be placed here
    @result     Returns kCVReturnSuccess on success
*/
@available(OSX 10.4, *)
func CVOpenGLBufferPoolCreateOpenGLBuffer(allocator: CFAllocator?, _ openGLBufferPool: CVOpenGLBufferPool, _ openGLBufferOut: UnsafeMutablePointer<CVOpenGLBuffer?>) -> CVReturn

/*!
    @typedef	CVOpenGLTextureRef
    @abstract   OpenGL texture based image buffer

*/
typealias CVOpenGLTextureRef = CVOpenGLTexture
@available(OSX 10.4, *)
func CVOpenGLTextureGetTypeID() -> CFTypeID

/*!
    @function   CVOpenGLTextureGetTarget
    @abstract   Returns the texture target (eg. 2D vs. rect texture extension) of the CVOpenGLTexture
    @param      image Target CVOpenGLTexture
    @result     OpenGL texture target
*/
@available(OSX 10.4, *)
func CVOpenGLTextureGetTarget(image: CVOpenGLTexture) -> GLenum

/*!
    @function   CVOpenGLTextureGetName
    @abstract   Returns the texture target name of the CVOpenGLTexture
    @param      image Target CVOpenGLTexture
    @result     OpenGL texture target name
*/
@available(OSX 10.4, *)
func CVOpenGLTextureGetName(image: CVOpenGLTexture) -> GLuint

/*!
    @function   CVOpenGLTextureIsFlipped
    @abstract   Returns whether the image is flipped vertically or not.
    @param      image Target CVOpenGLTexture
    @result     True if 0,0 in the texture is upper left, false if 0,0 is lower left
*/
@available(OSX 10.4, *)
func CVOpenGLTextureIsFlipped(image: CVOpenGLTexture) -> Bool

/*!
    @function   CVOpenGLTextureGetCleanTexCoords 
    @abstract   Returns convenient texture coordinates for the part of the image that should be displayed
    @discussion This function automatically takes into account whether or not the texture is flipped.
    @param      image Target CVOpenGLTexture
    @param      lowerLeft  - array of two GLfloats where the s and t texture coordinates of the lower left corner of the image will be stored
    @param      lowerRight - array of two GLfloats where the s and t texture coordinates of the lower right corner of the image will be stored
    @param      upperRight - array of two GLfloats where the s and t texture coordinates of the upper right corner of the image will be stored
    @param      upperLeft  - array of two GLfloats where the s and t texture coordinates of the upper right corner of the image will be stored
*/
@available(OSX 10.4, *)
func CVOpenGLTextureGetCleanTexCoords(image: CVOpenGLTexture, _ lowerLeft: UnsafeMutablePointer<GLfloat>, _ lowerRight: UnsafeMutablePointer<GLfloat>, _ upperRight: UnsafeMutablePointer<GLfloat>, _ upperLeft: UnsafeMutablePointer<GLfloat>)

/*!
    @typedef	CVOpenGLTextureCacheRef
    @abstract   CoreVideo OpenGL Texture Cache

*/
typealias CVOpenGLTextureCacheRef = CVOpenGLTextureCache
@available(OSX 10.4, *)
let kCVOpenGLTextureCacheChromaSamplingModeKey: CFString
@available(OSX 10.4, *)
let kCVOpenGLTextureCacheChromaSamplingModeAutomatic: CFString
@available(OSX 10.4, *)
let kCVOpenGLTextureCacheChromaSamplingModeHighestQuality: CFString
@available(OSX 10.4, *)
let kCVOpenGLTextureCacheChromaSamplingModeBestPerformance: CFString
@available(OSX 10.4, *)
func CVOpenGLTextureCacheGetTypeID() -> CFTypeID

/*!
    @function   CVOpenGLTextureCacheCreate
    @abstract   Creates a new Texture Cache.
    @param      allocator The CFAllocatorRef to use for allocating the cache.  May be NULL.
    @param      cacheAttributes A CFDictionaryRef containing the attributes of the cache itself.   May be NULL.
    @param      cglContext The OpenGL context into which the texture objects will be created
    @param      cglPixelFormat The OpenGL pixel format object used to create the passed in OpenGL context
    @param      textureAttributes A CFDictionaryRef containing the attributes to be used for creating the CVOpenGLTexture objects.  May be NULL.
    @param      cacheOut   The newly created texture cache will be placed here
    @result     Returns kCVReturnSuccess on success
*/
@available(OSX 10.4, *)
func CVOpenGLTextureCacheCreate(allocator: CFAllocator?, _ cacheAttributes: CFDictionary?, _ cglContext: CGLContextObj, _ cglPixelFormat: CGLPixelFormatObj, _ textureAttributes: CFDictionary?, _ cacheOut: UnsafeMutablePointer<CVOpenGLTextureCache?>) -> CVReturn

/*!
    @function   CVOpenGLTextureCacheCreateTextureFromImage
    @abstract   Creates a CVOpenGLTexture object from an existing CVImageBuffer
    @param      allocator The CFAllocatorRef to use for allocating the CVOpenGLTexture object.  May be NULL.
    @param      textureCache The texture cache object that will manage the texture
    @param      sourceImage The CVImageBuffer that you want to create a CVOpenGLTexture from.
    @param      attributes For Future use only! - The desired buffer attributes for the CVOpenGLTexture.
    @param      textureOut The newly created texture object will be placed here.
    @result     Returns kCVReturnSuccess on success
*/
@available(OSX 10.4, *)
func CVOpenGLTextureCacheCreateTextureFromImage(allocator: CFAllocator?, _ textureCache: CVOpenGLTextureCache, _ sourceImage: CVImageBuffer, _ attributes: CFDictionary?, _ textureOut: UnsafeMutablePointer<CVOpenGLTexture?>) -> CVReturn

/*!
    @function   CVOpenGLTextureCacheFlush
    @abstract   Performs internal housekeeping/recycling operations
    @discussion This call must be made periodically to give the texture cache a chance to make OpenGL calls
                on the OpenGL context used to create it in order to do housekeeping operations.
    @param      textureCache The texture cache object to flush
    @param      options Currently unused, set to 0.
    @result     Returns kCVReturnSuccess on success
*/
@available(OSX 10.4, *)
func CVOpenGLTextureCacheFlush(textureCache: CVOpenGLTextureCache, _ options: CVOptionFlags)
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
@available(OSX 10.4, *)
let kCVPixelBufferPixelFormatTypeKey: CFString
@available(OSX 10.4, *)
let kCVPixelBufferMemoryAllocatorKey: CFString
@available(OSX 10.4, *)
let kCVPixelBufferWidthKey: CFString
@available(OSX 10.4, *)
let kCVPixelBufferHeightKey: CFString
@available(OSX 10.4, *)
let kCVPixelBufferExtendedPixelsLeftKey: CFString
@available(OSX 10.4, *)
let kCVPixelBufferExtendedPixelsTopKey: CFString
@available(OSX 10.4, *)
let kCVPixelBufferExtendedPixelsRightKey: CFString
@available(OSX 10.4, *)
let kCVPixelBufferExtendedPixelsBottomKey: CFString
@available(OSX 10.4, *)
let kCVPixelBufferBytesPerRowAlignmentKey: CFString
@available(OSX 10.4, *)
let kCVPixelBufferCGBitmapContextCompatibilityKey: CFString
@available(OSX 10.4, *)
let kCVPixelBufferCGImageCompatibilityKey: CFString
@available(OSX 10.4, *)
let kCVPixelBufferOpenGLCompatibilityKey: CFString
@available(OSX 10.6, *)
let kCVPixelBufferPlaneAlignmentKey: CFString
@available(OSX 10.6, *)
let kCVPixelBufferIOSurfacePropertiesKey: CFString
@available(OSX 10.11, *)
let kCVPixelBufferMetalCompatibilityKey: CFString
@available(OSX 10.11, *)
let kCVPixelBufferOpenGLTextureCacheCompatibilityKey: CFString

/*!
    @typedef	CVPixelBufferRef
    @abstract   Based on the image buffer type. The pixel buffer implements the memory storage for an image buffer.

*/
typealias CVPixelBufferRef = CVPixelBuffer
@available(OSX 10.4, *)
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
@available(OSX 10.4, *)
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
@available(OSX 10.4, *)
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
@available(OSX 10.4, *)
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
@available(OSX 10.4, *)
func CVPixelBufferCreateWithPlanarBytes(allocator: CFAllocator?, _ width: Int, _ height: Int, _ pixelFormatType: OSType, _ dataPtr: UnsafeMutablePointer<Void>, _ dataSize: Int, _ numberOfPlanes: Int, _ planeBaseAddress: UnsafeMutablePointer<UnsafeMutablePointer<Void>>, _ planeWidth: UnsafeMutablePointer<Int>, _ planeHeight: UnsafeMutablePointer<Int>, _ planeBytesPerRow: UnsafeMutablePointer<Int>, _ releaseCallback: CVPixelBufferReleasePlanarBytesCallback?, _ releaseRefCon: UnsafeMutablePointer<Void>, _ pixelBufferAttributes: CFDictionary?, _ pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> CVReturn

/*!
	@function   CVPixelBufferLockBaseAddress
	@abstract   Description Locks the BaseAddress of the PixelBuffer to ensure that the memory is accessible.
	@discussion This API ensures that the CVPixelBuffer is accessible in system memory. This should only be called if the base address is going to be used and the pixel data will be accessed by the CPU.
	@param      pixelBuffer Target PixelBuffer.
	@param      lockFlags See CVPixelBufferLockFlags.
	@result     kCVReturnSuccess if the lock succeeded, or error code on failure
*/
@available(OSX 10.4, *)
func CVPixelBufferLockBaseAddress(pixelBuffer: CVPixelBuffer, _ lockFlags: CVPixelBufferLockFlags) -> CVReturn

/*!
	@function   CVPixelBufferUnlockBaseAddress
	@abstract   Description Unlocks the BaseAddress of the PixelBuffer.
	@param      pixelBuffer Target PixelBuffer.
	@param      unlockFlags See CVPixelBufferLockFlags.
	@result     kCVReturnSuccess if the unlock succeeded, or error code on failure
*/
@available(OSX 10.4, *)
func CVPixelBufferUnlockBaseAddress(pixelBuffer: CVPixelBuffer, _ unlockFlags: CVPixelBufferLockFlags) -> CVReturn

/*!
    @function   CVPixelBufferGetWidth
    @abstract   Returns the width of the PixelBuffer.
    @param      pixelBuffer Target PixelBuffer.
    @result     Width in pixels.
*/
@available(OSX 10.4, *)
func CVPixelBufferGetWidth(pixelBuffer: CVPixelBuffer) -> Int

/*!
    @function   CVPixelBufferGetHeight
    @abstract   Returns the height of the PixelBuffer.
    @param      pixelBuffer Target PixelBuffer.
    @result     Height in pixels.
*/
@available(OSX 10.4, *)
func CVPixelBufferGetHeight(pixelBuffer: CVPixelBuffer) -> Int

/*!
    @function   CVPixelBufferGetPixelFormatType
    @abstract   Returns the PixelFormatType of the PixelBuffer.
    @param      pixelBuffer Target PixelBuffer.
    @result     OSType identifying the pixel format by its type.
*/
@available(OSX 10.4, *)
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
@available(OSX 10.4, *)
func CVPixelBufferGetBaseAddress(pixelBuffer: CVPixelBuffer) -> UnsafeMutablePointer<Void>

/*!
    @function   CVPixelBufferGetBytesPerRow
    @abstract   Returns the rowBytes of the PixelBuffer.
    @param      pixelBuffer Target PixelBuffer.
    @result     Bytes per row of the image data.   For planar buffers this will return a rowBytes value such that bytesPerRow * height
                will cover the entire image including all planes.
*/
@available(OSX 10.4, *)
func CVPixelBufferGetBytesPerRow(pixelBuffer: CVPixelBuffer) -> Int

/*!
    @function   CVPixelBufferGetDataSize
    @abstract   Returns the data size for contigous planes of the PixelBuffer.
    @param      pixelBuffer Target PixelBuffer.
    @result     Data size used in CVPixelBufferCreateWithPlanarBytes.
*/
@available(OSX 10.4, *)
func CVPixelBufferGetDataSize(pixelBuffer: CVPixelBuffer) -> Int

/*!
    @function   CVPixelBufferIsPlanar
    @abstract   Returns if the PixelBuffer is planar.
    @param      pixelBuffer Target PixelBuffer.
    @result     True if the PixelBuffer was created using CVPixelBufferCreateWithPlanarBytes.
*/
@available(OSX 10.4, *)
func CVPixelBufferIsPlanar(pixelBuffer: CVPixelBuffer) -> Bool

/*!
    @function   CVPixelBufferGetPlaneCount
    @abstract   Returns number of planes of the PixelBuffer.
    @param      pixelBuffer Target PixelBuffer.
    @result     Number of planes.  Returns 0 for non-planar CVPixelBufferRefs.
*/
@available(OSX 10.4, *)
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
@available(OSX 10.4, *)
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
@available(OSX 10.4, *)
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
@available(OSX 10.4, *)
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
@available(OSX 10.4, *)
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
@available(OSX 10.4, *)
func CVPixelBufferGetExtendedPixels(pixelBuffer: CVPixelBuffer, _ extraColumnsOnLeft: UnsafeMutablePointer<Int>, _ extraColumnsOnRight: UnsafeMutablePointer<Int>, _ extraRowsOnTop: UnsafeMutablePointer<Int>, _ extraRowsOnBottom: UnsafeMutablePointer<Int>)

/*!
    @function   CVPixelBufferFillExtendedPixels
    @abstract   Fills the extended pixels of the PixelBuffer.   This function replicates edge pixels to fill the entire extended region of the image.
    @param      pixelBuffer Target PixelBuffer.
*/
@available(OSX 10.4, *)
func CVPixelBufferFillExtendedPixels(pixelBuffer: CVPixelBuffer) -> CVReturn
@available(OSX 10.6, *)
let kCVPixelBufferIOSurfaceOpenGLTextureCompatibilityKey: CFString
@available(OSX 10.6, *)
let kCVPixelBufferIOSurfaceOpenGLFBOCompatibilityKey: CFString
@available(OSX 10.6, *)
let kCVPixelBufferIOSurfaceCoreAnimationCompatibilityKey: CFString

/*!
	@function   CVPixelBufferGetIOSurface
	@abstract   Returns the IOSurface backing the pixel buffer, or NULL if it is not backed by an IOSurface.
	@param      pixelBuffer Target PixelBuffer.
*/
@available(OSX 10.6, *)
func CVPixelBufferGetIOSurface(pixelBuffer: CVPixelBuffer?) -> Unmanaged<IOSurface>?

/*!
    @function   CVPixelBufferCreateWithIOSurface
    @abstract   Call to create a single CVPixelBuffer for a passed-in IOSurface.
    @discussion The CVPixelBuffer will retain the IOSurface.
    	IMPORTANT NOTE: If you are using IOSurface to share CVPixelBuffers between processes
    	and those CVPixelBuffers are allocated via a CVPixelBufferPool, it is important
    	that the CVPixelBufferPool does not reuse CVPixelBuffers whose IOSurfaces are still
    	in use in other processes.  
    	CoreVideo and IOSurface will take care of this for if you use IOSurfaceCreateMachPort 
    	and IOSurfaceLookupFromMachPort, but NOT if you pass IOSurfaceIDs.
    @param      surface		            The IOSurface to wrap.
    @param      pixelBufferAttributes   A dictionary with additional attributes for a a pixel buffer. This parameter is optional. See PixelBufferAttributes for more details.
    @param      pixelBufferOut          The new pixel buffer will be returned here
    @result     returns kCVReturnSuccess on success.
*/
@available(OSX 10.6, *)
func CVPixelBufferCreateWithIOSurface(allocator: CFAllocator?, _ surface: IOSurface, _ pixelBufferAttributes: CFDictionary?, _ pixelBufferOut: UnsafeMutablePointer<Unmanaged<CVPixelBuffer>?>) -> CVReturn
typealias CVPixelBufferPoolRef = CVPixelBufferPool
@available(OSX 10.4, *)
let kCVPixelBufferPoolMinimumBufferCountKey: CFString
@available(OSX 10.4, *)
let kCVPixelBufferPoolMaximumBufferAgeKey: CFString
@available(OSX 10.4, *)
func CVPixelBufferPoolGetTypeID() -> CFTypeID

/*!
    @function   CVPixelBufferPoolCreate
    @abstract   Creates a new Pixel Buffer pool.
    @param      allocator The CFAllocatorRef to use for allocating this buffer pool.  May be NULL.
    @param      attributes   A CFDictionaryRef containing the attributes to be used for creating new PixelBuffers within the pool.
    @param      poolOut   The newly created pool will be placed here
    @result     Returns kCVReturnSuccess on success
*/
@available(OSX 10.4, *)
func CVPixelBufferPoolCreate(allocator: CFAllocator?, _ poolAttributes: CFDictionary?, _ pixelBufferAttributes: CFDictionary?, _ poolOut: UnsafeMutablePointer<CVPixelBufferPool?>) -> CVReturn

/*!
    @function   CVPixelBufferPoolGetAttributes
    @abstract   Returns the pool attributes dictionary for a CVPixelBufferPool
    @param      pool  The CVPixelBufferPoolRef to retrieve the attributes from
    @result     Returns the pool attributes dictionary, or NULL on failure.
*/
@available(OSX 10.4, *)
func CVPixelBufferPoolGetAttributes(pool: CVPixelBufferPool) -> Unmanaged<CFDictionary>?

/*!
    @function   CVPixelBufferPoolGetPixelBufferAttributes
    @abstract   Returns the attributes of pixel buffers that will be created from this pool.
    @discussion This function is provided for those cases where you may need to know some information about the buffers that
                will be created up front.
    @param      pool  The CVPixelBufferPoolRef to retrieve the attributes from
    @result     Returns the pixel buffer attributes dictionary, or NULL on failure.
*/
@available(OSX 10.4, *)
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
@available(OSX 10.4, *)
func CVPixelBufferPoolCreatePixelBuffer(allocator: CFAllocator?, _ pixelBufferPool: CVPixelBufferPool, _ pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> CVReturn
@available(OSX 10.7, *)
func CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(allocator: CFAllocator?, _ pixelBufferPool: CVPixelBufferPool, _ auxAttributes: CFDictionary?, _ pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> CVReturn
@available(OSX 10.7, *)
let kCVPixelBufferPoolAllocationThresholdKey: CFString
@available(OSX 10.7, *)
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
@available(OSX 10.4, *)
let kCVPixelFormatName: CFString
@available(OSX 10.4, *)
let kCVPixelFormatConstant: CFString
@available(OSX 10.4, *)
let kCVPixelFormatCodecType: CFString
@available(OSX 10.4, *)
let kCVPixelFormatFourCC: CFString
@available(OSX 10.7, *)
let kCVPixelFormatContainsAlpha: CFString
@available(OSX 10.10, *)
let kCVPixelFormatContainsYCbCr: CFString
@available(OSX 10.10, *)
let kCVPixelFormatContainsRGB: CFString
@available(OSX 10.10, *)
let kCVPixelFormatComponentRange: CFString
@available(OSX 10.10, *)
let kCVPixelFormatComponentRange_VideoRange: CFString
@available(OSX 10.10, *)
let kCVPixelFormatComponentRange_FullRange: CFString
@available(OSX 10.10, *)
let kCVPixelFormatComponentRange_WideRange: CFString
@available(OSX 10.4, *)
let kCVPixelFormatPlanes: CFString
@available(OSX 10.4, *)
let kCVPixelFormatBlockWidth: CFString
@available(OSX 10.4, *)
let kCVPixelFormatBlockHeight: CFString
@available(OSX 10.4, *)
let kCVPixelFormatBitsPerBlock: CFString
@available(OSX 10.4, *)
let kCVPixelFormatBlockHorizontalAlignment: CFString
@available(OSX 10.4, *)
let kCVPixelFormatBlockVerticalAlignment: CFString
@available(OSX 10.6, *)
let kCVPixelFormatBlackBlock: CFString
@available(OSX 10.4, *)
let kCVPixelFormatHorizontalSubsampling: CFString
@available(OSX 10.4, *)
let kCVPixelFormatVerticalSubsampling: CFString
@available(OSX 10.4, *)
let kCVPixelFormatOpenGLFormat: CFString
@available(OSX 10.4, *)
let kCVPixelFormatOpenGLType: CFString
@available(OSX 10.4, *)
let kCVPixelFormatOpenGLInternalFormat: CFString
@available(OSX 10.4, *)
let kCVPixelFormatCGBitmapInfo: CFString
@available(OSX 10.4, *)
let kCVPixelFormatQDCompatibility: CFString
@available(OSX 10.4, *)
let kCVPixelFormatCGBitmapContextCompatibility: CFString
@available(OSX 10.4, *)
let kCVPixelFormatCGImageCompatibility: CFString
@available(OSX 10.4, *)
let kCVPixelFormatOpenGLCompatibility: CFString
typealias CVFillExtendedPixelsCallBack = @convention(c) (CVPixelBuffer, UnsafeMutablePointer<Void>) -> DarwinBoolean
struct CVFillExtendedPixelsCallBackData {
  var version: CFIndex
  var fillCallBack: CVFillExtendedPixelsCallBack?
  var refCon: UnsafeMutablePointer<Void>
  init()
  init(version: CFIndex, fillCallBack: CVFillExtendedPixelsCallBack?, refCon: UnsafeMutablePointer<Void>)
}
@available(OSX 10.4, *)
let kCVPixelFormatFillExtendedPixelsCallback: CFString
@available(OSX 10.4, *)
func CVPixelFormatDescriptionCreateWithPixelFormatType(allocator: CFAllocator?, _ pixelFormat: OSType) -> Unmanaged<CFDictionary>?
@available(OSX 10.4, *)
func CVPixelFormatDescriptionArrayCreateWithAllPixelFormatTypes(allocator: CFAllocator?) -> Unmanaged<CFArray>?
@available(OSX 10.4, *)
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
