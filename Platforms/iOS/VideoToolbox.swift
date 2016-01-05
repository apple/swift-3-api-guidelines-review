

/*!
	@constant	kVTCompressionPropertyKey_NumberOfPendingFrames
	@abstract
		The number of pending frames in the compression session. 
	@discussion
		This number may decrease asynchronously.
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_NumberOfPendingFrames: CFString

/*!
	@constant	kVTCompressionPropertyKey_PixelBufferPoolIsShared
	@abstract
		Indicates whether the a common pixel buffer pool is shared between
		the video encoder and the session client. 
	@discussion
		This is false if separate pools are used because the video encoder's 
		and the client's pixel buffer attributes were incompatible.
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_PixelBufferPoolIsShared: CFString

/*!
	@constant	kVTCompressionPropertyKey_VideoEncoderPixelBufferAttributes
	@abstract
		The video encoder's pixel buffer attributes for the compression session. 
	@discussion
		You can use these to create a pixel buffer pool for source pixel buffers. 
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_VideoEncoderPixelBufferAttributes: CFString

/*!
	@constant	kVTCompressionPropertyKey_MaxKeyFrameInterval
	@abstract
		The maximum interval between key frames, also known as the key frame rate. 
	@discussion
		Key frames, also known as sync frames, reset inter-frame
		dependencies; decoding a key frame is sufficient to prepare a
		decoder for correctly decoding the difference frames that
		follow. 
		Video encoders are allowed to generate key frames more frequently if
		this would result in more efficient compression. 
		The default key frame interval is 0, which indicates that the
		video encoder should choose where to place all key frames. A key
		frame interval of 1 indicates that every frame must be a key
		frame, 2 indicates that at least every other frame must be a key
		frame, etc.
		See also kVTCompressionPropertyKey_AllowTemporalCompression.
		
		This key can be set in conjunction with 
		kVTCompressionPropertyKey_MaxKeyFrameIntervalDuration,
		and both limits will be enforced - requiring a keyframe every X
		frames or every Y seconds, whichever comes first.
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_MaxKeyFrameInterval: CFString

/*!
	@constant	kVTCompressionPropertyKey_MaxKeyFrameIntervalDuration
	@abstract
		The maximum duration from one key frame to the next in seconds. 
	@discussion
		Zero by default, which means no limit.  
		This property is particularly useful when the frame rate is variable.
		See kVTCompressionPropertyKey_MaxKeyFrameInterval for more discussion
		of key frames.
		
		This key can be set in conjunction with 
		kVTCompressionPropertyKey_MaxKeyFrameInterval,
		and both limits will be enforced - requiring a keyframe every X
		frames or every Y seconds, whichever comes first.
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_MaxKeyFrameIntervalDuration: CFString

/*!
	@constant	kVTCompressionPropertyKey_AllowTemporalCompression
	@abstract
		Enables temporal compression.
	@discussion
		True by default.  Set this to false to require key-frame-only compression.
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_AllowTemporalCompression: CFString

/*!
	@constant	kVTCompressionPropertyKey_AllowFrameReordering
	@abstract
		Enables frame reordering. 
	@discussion
		In order to encode B frames, a video encoder must reorder frames,
		which means that the order in which they will be emitted and
		stored (the decode order) is different from the order in which
		they were presented to the video encoder (the display order). 
		True by default.  Set this to false to prevent frame reordering.
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_AllowFrameReordering: CFString

/*!
	@constant	kVTCompressionPropertyKey_AverageBitRate
	@abstract
		The long-term desired average bit rate in bits per second. 
	@discussion
		This is not a hard limit; the bit rate may peak above this. 
		The default bit rate is zero, which indicates that the video encoder 
		should determine the size of compressed data. 
		Note that bit rate settings only have an effect when timing
		information is provided for source frames, and that some codecs do
		not support limiting to specified bit rates.
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_AverageBitRate: CFString

/*!
	@constant	kVTCompressionPropertyKey_DataRateLimits
	@abstract
		Zero, one or two hard limits on data rate.
	@discussion
		Each hard limit is described by a data size in bytes and a
		duration in seconds, and requires that the total size of
		compressed data for any contiguous segment of that duration (in
		decode time) must not exceed the data size. 
		By default, no data rate limits are set. 
		The property is a CFArray of an even number of CFNumbers,
		alternating between bytes and seconds.
		Note that data rate settings only have an effect when timing
		information is provided for source frames, and that some codecs do
		not support limiting to specified data rates.
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_DataRateLimits: CFString

/*!
	@constant	kVTCompressionPropertyKey_Quality
	@abstract
		The desired compression quality.
	@discussion
		Some encoders, such as JPEG, describe the compression level of each
		image with a quality value.  This value should be specified as a
		number in the range of 0.0 to 1.0, where low = 0.25, normal = 0.50,
		high = 0.75, and 1.0 implies lossless compression for encoders that
		support it.
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_Quality: CFString

/*!
	@constant	kVTCompressionPropertyKey_MoreFramesBeforeStart
	@abstract
		Indicates whether and how a compression session's frames will be
		concatenated with other compressed frames to form a longer series.
	@discussion
		True if frames compressed in a separate session will be
		concatenated before the beginning of this one.  False if this is a
		stand-alone session, or if this session will encode the first
		segment of a multi-segment compression. By default, false.
		
		This information enables video encoders to ensure that compressed
		segments can be concatenated smoothly -- for example, avoiding
		data rate spikes where segments are joined. 
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_MoreFramesBeforeStart: CFString

/*!
	@constant	kVTCompressionPropertyKey_MoreFramesAfterEnd
	@abstract
		Indicates whether and how a compression session's frames will be
		concatenated with other compressed frames to form a longer series.
	@discussion
		True if frames compressed in a separate session will be
		concatenated following the end of this one. False if this is a
		stand-alone session, or if this session will encode the last
		segment of a multi-segment compression. By default, false.
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_MoreFramesAfterEnd: CFString

/*!
	@constant	kVTCompressionPropertyKey_ProfileLevel
	@abstract
		Specifies the profile and level for the encoded bitstream.
	@discussion
		Available profiles and levels vary across formats and between video encoders.
		Video encoders should use standard keys where available, and follow standard patterns where not.
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_ProfileLevel: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_Baseline_1_3: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_Baseline_3_0: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_Baseline_3_1: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_Baseline_3_2: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_Baseline_4_0: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_Baseline_4_1: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_Baseline_4_2: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_Baseline_5_0: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_Baseline_5_1: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_Baseline_5_2: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_Baseline_AutoLevel: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_Main_3_0: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_Main_3_1: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_Main_3_2: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_Main_4_0: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_Main_4_1: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_Main_4_2: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_Main_5_0: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_Main_5_1: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_Main_5_2: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_Main_AutoLevel: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_Extended_5_0: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_Extended_AutoLevel: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_High_3_0: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_High_3_1: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_High_3_2: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_High_4_0: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_High_4_1: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_High_4_2: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_High_5_0: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_High_5_1: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_High_5_2: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H264_High_AutoLevel: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_MP4V_Simple_L0: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_MP4V_Simple_L1: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_MP4V_Simple_L2: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_MP4V_Simple_L3: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_MP4V_Main_L2: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_MP4V_Main_L3: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_MP4V_Main_L4: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_MP4V_AdvancedSimple_L0: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_MP4V_AdvancedSimple_L1: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_MP4V_AdvancedSimple_L2: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_MP4V_AdvancedSimple_L3: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_MP4V_AdvancedSimple_L4: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H263_Profile0_Level10: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H263_Profile0_Level45: CFString
@available(iOS 8.0, *)
let kVTProfileLevel_H263_Profile3_Level45: CFString

/*!
	 @constant	kVTCompressionPropertyKey_H264EntropyMode
	 @abstract
		The entropy encoding mode for H.264 compression.
	 @discussion
		If supported by an H.264 encoder, this property controls whether the encoder should use
		Context-based Adaptive Variable Length Coding (CAVLC) or Context-based Adaptive Binary Arithmetic Coding (CABAC).
		CABAC generally gives better compression at the expense of higher computational overhead.
		The default value is encoder-specific and may change depending on other encoder settings.
		Care should be taken when using this property -- changes may result in a configuration
		which is not compatible with a requested Profile and Level.  Results in this case are undefined,
		and could include encode errors or a non-compliant output stream.
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_H264EntropyMode: CFString
@available(iOS 8.0, *)
let kVTH264EntropyMode_CAVLC: CFString
@available(iOS 8.0, *)
let kVTH264EntropyMode_CABAC: CFString

/*!
	@constant	kVTCompressionPropertyKey_Depth
	@abstract
		The pixel depth of the encoded video.
	@discussion
		This property is only supported by video encoders for formats that are 
		tied to particular pixel formats (eg, 16-bit RGB, 24-bit RGB).
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_Depth: CFString

/*!
	@constant	kVTCompressionPropertyKey_MaxFrameDelayCount
	@abstract
		The maximum frame delay count is the maximum number of frames that
		a compressor is allowed to hold before it must output a compressed
		frame.
	@discussion
		It limits the number of frames that may be held in the
		"compression window". If the maximum frame delay count is M, then
		before the call to encode frame N returns, frame N-M must have
		been emitted. 
		The default is kVTUnlimitedFrameDelayCount, which sets no limit
		on the compression window.
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_MaxFrameDelayCount: CFString
var kVTUnlimitedFrameDelayCount: Int { get }

/*!
	@constant	kVTCompressionPropertyKey_MaxH264SliceBytes
	@abstract
		Specifies the maximum slice size for H.264 encoding
	@discussion
		If supported by an H.264 encoder, the value limits the size in bytes of 
		slices produced by the encoder, where possible.
		By default, no limit is specified.  A value of zero implies default behavior.
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_MaxH264SliceBytes: CFString

/*!
	@constant	kVTCompressionPropertyKey_RealTime
	@abstract
		Hints the video encoder that compression is, or is not, being performed in real time.
	@discussion
		For offline compression, clients may set this property to kCFBooleanFalse, which indicates that 
		it is OK for the video encoder to work slower than real time in order to produce a better result.
		For real-time compression, clients may set this property to kCFBooleanTrue to recommend that encoding stay timely.
		By default, this property is NULL, indicating unknown.  
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_RealTime: CFString

/*!
	@constant	kVTCompressionPropertyKey_SourceFrameCount
	@abstract
		Indicates the number of source frames, if known.
	@discussion
		This property allows a client to give the video encoder advance guidance as to how 
		many frames will be encoded.
		If nonzero, this should be the exact number of times that the client calls
		VTCompressionSessionEncodeFrame in each pass. 
		The default is 0, which indicates that the number of source frames
		is not known.
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_SourceFrameCount: CFString

/*!
	@constant	kVTCompressionPropertyKey_ExpectedFrameRate
	@abstract
		Indicates the expected frame rate, if known.
	@discussion
		The frame rate is measured in frames per second. 
		This is not used to control the frame rate; it is provided as a hint to the 
		video encoder so that it can set up internal configuration before compression begins. 
		The actual frame rate will depend on frame durations and may vary. 
		By default, this is zero, indicating "unknown".
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_ExpectedFrameRate: CFString

/*!
	@constant	kVTCompressionPropertyKey_ExpectedDuration
	@abstract
		Indicates the expected total duration for the compression session, if known.
	@discussion
		By default, this is zero, indicating "unknown".
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_ExpectedDuration: CFString

/*!
	@constant	kVTEncodeFrameOptionKey_ForceKeyFrame
	@abstract
		CFBoolean forcing the current frame to be a key frame
	@discussion
		This value is set in the frameProperties CFDictionary passed to 
		VTCompressionSessionEncodeFrame to force the current frame to be a 
		keyframe or not.  
		Note that it may not be possible for the encoder to accomodate all
		requests.
*/
@available(iOS 8.0, *)
let kVTEncodeFrameOptionKey_ForceKeyFrame: CFString

/*!
	@constant	kVTCompressionPropertyKey_CleanAperture
	@abstract
		Describes the clean aperture for encoded frames.
	@discussion
		Some video encoders may enforce specific clean apertures; 
		in those cases this property will be read-only (SetProperty will return kVTPropertyReadOnlyErr).
		The clean aperture will be set on the format description for output samples,
		and may affect source frame scaling.
		NULL is a valid value for this property, meaning that the clean aperture is the full width and height.
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_CleanAperture: CFString

/*!
	@constant	kVTCompressionPropertyKey_PixelAspectRatio
	@abstract
		Describes the pixel aspect ratio for encoded frames.
	@discussion
		Some video encoders may enforce specific pixel aspect ratios; 
		in those cases this property will be read-only (SetProperty will return kVTPropertyReadOnlyErr).
		The pixel aspect ratio will be set on the format description for output samples,
		and may affect source frame scaling.
		NULL is a valid value for this property, meaning square pixels (1:1).
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_PixelAspectRatio: CFString

/*!
	@constant	kVTCompressionPropertyKey_FieldCount
	@abstract
		Indicates whether the frames should be encoded progressive (1) or interlaced (2).
	@discussion
		The field count will be set on the format description for output samples,
		and may affect source frame scaling.
		NULL is a valid value for this property.
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_FieldCount: CFString

/*!
	@constant	kVTCompressionPropertyKey_FieldDetail
	@abstract
		Indicates field ordering for encoded interlaced frames.
	@discussion
		Some video encoders may enforce specific field ordering; 
		in those cases this property will be read-only (SetProperty will return kVTPropertyReadOnlyErr).
		The field detail will be set on the format description for output samples,
		and may affect source frame scaling.
		NULL is a valid value for this property.
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_FieldDetail: CFString

/*!
	@constant	kVTCompressionPropertyKey_AspectRatio16x9
	@abstract
		Indicates that the DV video stream should have the 16x9 flag set.
	@discussion
		This property is supported by the DV25/50 family of encoders.
		When false, the picture aspect ratio is 4:3.  
		When true, the picture aspect ratio is 16:9.
		Either way, a fixed PixelAspectRatio is used (the specific value depends on whether the format is NTSC or PAL).
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_AspectRatio16x9: CFString

/*!
	@constant	kVTCompressionPropertyKey_ProgressiveScan
	@abstract
		Indicates that the DV video stream should have the progressive flag set.
	@discussion
		This property is supported by the DV25/50 family of encoders.
		If false, content is encoded as interlaced.
		If true, content is encoded as progressive.
		The value of this property fixes the FieldCount and FieldDetail properties.
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_ProgressiveScan: CFString

/*!
	@constant	kVTCompressionPropertyKey_ColorPrimaries
	@abstract
		Indicates color primaries for compressed content.
	@discussion
		Some video encoders may enforce specific colorimetry; 
		in those cases this property will be read-only (SetProperty will return kVTPropertyReadOnlyErr).
		The value will be set on the format description for output sample buffers.
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_ColorPrimaries: CFString

/*!
	@constant	kVTCompressionPropertyKey_TransferFunction
	@abstract
		Indicates transfer function for compressed content.
	@discussion
		Some video encoders may enforce specific colorimetry; 
		in those cases this property will be read-only (SetProperty will return kVTPropertyReadOnlyErr).
		The value will be set on the format description for output sample buffers.
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_TransferFunction: CFString

/*!
	@constant	kVTCompressionPropertyKey_YCbCrMatrix
	@abstract
		Indicates YCbCr matrix for compressed content.
	@discussion
		Some video encoders may enforce specific colorimetry; 
		in those cases this property will be read-only (SetProperty will return kVTPropertyReadOnlyErr).
		The value will be set on the format description for output sample buffers.
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_YCbCrMatrix: CFString

/*!
	@constant	kVTCompressionPropertyKey_ICCProfile
	@abstract
		Indicates ICC profile for compressed content.
	@discussion
		Some video encoders may enforce specific colorimetry; 
		in those cases this property will be read-only (SetProperty will return kVTPropertyReadOnlyErr).
		If this property and any of the previous three are all set, they should be set to consistent values, 
		or undefined behavior may occur.
		The value will be set on the format description for output sample buffers.
		NULL can be a valid value for this property.
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_ICCProfile: CFString

/*!
	@constant	kVTCompressionPropertyKey_PixelTransferProperties
	@abstract
		Specifies properties to configure a VTPixelTransferSession used to transfer source frames
		from the client's image buffers to the video encoder's image buffers, if necessary.
	@discussion
		Setting this property alone does not necessarily guarantee that a VTPixelTransferSession will be created.
		See VTPixelTransferProperties.h.
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_PixelTransferProperties: CFString

/*!
	@const		kVTCompressionPropertyKey_MultiPassStorage
	@abstract	Enables multi-pass compression and provides storage for encoder-private data.
	@discussion
	Some video encoders support multi-pass encoding.  To determine whether a VTCompressionSession supports multi-pass encoding, you can inspect the dictionary returned by VTSessionCopySupportedPropertyDictionary to see if it contains kVTCompressionPropertyKey_MultiPassStorage.
	 
	To enable multi-pass encoding, set the kVTCompressionPropertyKey_MultiPassStorage property to a VTMultiPassStorage object, which you can create by calling VTMultiPassStorageCreate.  Then make one or more passes over the source frames.  Bracket each pass with a call to VTCompressionSessionBeginPass at the beginning and VTCompressionSessionEndPass at the end.
	 
	In the first pass of multi-pass encoding, call VTCompressionSessionEncodeFrame for every source frame (just as in single-pass encoding).  At the end of every pass, call VTCompressionSessionEndPass.  This may take some time as the video encoder determines whether it can improve the encoding by performing another pass.  If the user cancels encoding during this time, call VTCompressionSessionInvalidate to interrupt the processing.  VTCompressionSessionEndPass will indicate via the furtherPassesRequestedOut argument whether the video encoder would like to perform another pass.  There is no particular bound on the number of passes the video encoder may request, but the client is free to disregard this request and use the last-emitted set of frames.
	 
	If *furtherPassesRequestedOut is set to true and you want to perform another pass, call VTCompressionSessionGetTimeRangesForNextPass to determine the time ranges for the next pass.  Only the source frames within these time ranges need to be passed to VTCompressionSessionEncodeFrame; the video encoder is satisfied with the already-emitted compressed frames outside these ranges and they can be kept for the final output.
	 
	In second and successive passes, you must pass identical source frames, frame properties and timestamps to VTCompressionSessionEncodeFrame as in the first pass, with the exception that frames not in the requested time ranges should be skipped.
	 
	You can create and use a VTFrameSilo object to merge sequences of compressed frames across passes during multi-pass encoding.
*/
@available(iOS 8.0, *)
let kVTCompressionPropertyKey_MultiPassStorage: CFString

/*!
	@typedef	VTCompressionSessionRef
	@abstract	A reference to a Video Toolbox Compression Session.
	@discussion
		A compression session supports the compression of a sequence of video frames.
		The session reference is a reference-counted CF object.
		To create a compression session, call VTCompressionSessionCreate; 
		then you can optionally configure the session using VTSessionSetProperty;
		then to encode frames, call VTCompressionSessionEncodeFrame.
		To force completion of some or all pending frames, call VTCompressionSessionCompleteFrames.
		When you are done with the session, you should call VTCompressionSessionInvalidate
		to tear it down and CFRelease to release your object reference.
 */
typealias VTCompressionSessionRef = VTCompressionSession

/*!
	@typedef	VTCompressionSessionRef
	@abstract	A reference to a Video Toolbox Compression Session.
	@discussion
		A compression session supports the compression of a sequence of video frames.
		The session reference is a reference-counted CF object.
		To create a compression session, call VTCompressionSessionCreate; 
		then you can optionally configure the session using VTSessionSetProperty;
		then to encode frames, call VTCompressionSessionEncodeFrame.
		To force completion of some or all pending frames, call VTCompressionSessionCompleteFrames.
		When you are done with the session, you should call VTCompressionSessionInvalidate
		to tear it down and CFRelease to release your object reference.
 */
class VTCompressionSession {
}

/*!
	@typedef	VTCompressionOutputCallback
    @abstract   Prototype for callback invoked when frame compression is complete.
    @discussion 
		When you create a compression session, you pass in a callback function to be called 
		for compressed frames.  This function will be called in decode order (which is not
		necessarily the same as display order).
	@param	outputCallbackRefCon
		The callback's reference value.
	@param	sourceFrameRefCon
		The frame's reference value, copied from the sourceFrameRefCon argument to 
		VTCompressionSessionEncodeFrame.
	@param	status
		noErr if compression was successful; an error code if compression was not successful.
	@param	infoFlags
		Contains information about the encode operation.
		The kVTEncodeInfo_Asynchronous bit may be set if the encode ran asynchronously.
		The kVTEncodeInfo_FrameDropped bit may be set if the frame was dropped.
	@param	sampleBuffer
		Contains the compressed frame, if compression was successful and the frame was not dropped; 
		otherwise, NULL.
*/
typealias VTCompressionOutputCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, OSStatus, VTEncodeInfoFlags, CMSampleBuffer?) -> Void

/*!
	@constant	kVTVideoEncoderSpecification_EncoderID
	@abstract
		Specifies a particular video encoder by its ID string.
	@discussion
		To specify a particular video encoder when creating a compression session, pass an 
		encoderSpecification CFDictionary containing this key and the EncoderID as its value.
		The EncoderID CFString may be obtained from the kVTVideoEncoderList_EncoderID entry in
		the array returned by VTCopyVideoEncoderList.
*/
@available(iOS 8.0, *)
let kVTVideoEncoderSpecification_EncoderID: CFString

/*!
	@function	VTCompressionSessionCreate
	@abstract	Creates a session for compressing video frames.
    @discussion 
		Compressed frames will be emitted through calls to outputCallback.
	@param	allocator
		An allocator for the session.  Pass NULL to use the default allocator.
	@param	width
		The width of frames, in pixels.  
		If the video encoder cannot support the provided width and height it may change them.
	@param	height
		The height of frames in pixels.
	@param	cType
		The codec type.
	@param	encoderSpecification
		Specifies a particular video encoder that must be used.  
		Pass NULL to let the video toolbox choose a encoder.
	@param	sourceImageBufferAttributes
		Required attributes for source pixel buffers, used when creating a pixel buffer pool 
		for source frames.  If you do not want the Video Toolbox to create one for you, pass NULL.
		(Using pixel buffers not allocated by the Video Toolbox may increase the chance that
		it will be necessary to copy image data.)
	@param	compressedDataAllocator
		An allocator for the compressed data.  Pass NULL to use the default allocator.
	@param	outputCallback
		The callback to be called with compressed frames.
		This function may be called asynchronously, on a different thread from the one that calls VTCompressionSessionEncodeFrame.
		Pass NULL if and only if you will be calling VTCompressionSessionEncodeFrameWithOutputHandler for encoding frames.
	@param	outputCallbackRefCon
		Client-defined reference value for the output callback.
	@param	compressionSessionOut
		Points to a variable to receive the new compression session.
	
*/
@available(iOS 8.0, *)
func VTCompressionSessionCreate(allocator: CFAllocator?, _ width: Int32, _ height: Int32, _ codecType: CMVideoCodecType, _ encoderSpecification: CFDictionary?, _ sourceImageBufferAttributes: CFDictionary?, _ compressedDataAllocator: CFAllocator?, _ outputCallback: VTCompressionOutputCallback?, _ outputCallbackRefCon: UnsafeMutablePointer<Void>, _ compressionSessionOut: UnsafeMutablePointer<VTCompressionSession?>) -> OSStatus

/*!
	@function	VTCompressionSessionInvalidate
	@abstract	Tears down a compression session.
    @discussion 
    	When you are done with a compression session you created, call VTCompressionSessionInvalidate 
    	to tear it down and then CFRelease to release your object reference.
    	When a compression session's retain count reaches zero, it is automatically invalidated, but 
    	since sessions may be retained by multiple parties, it can be hard to predict when this will happen.
    	Calling VTCompressionSessionInvalidate ensures a deterministic, orderly teardown.
*/
@available(iOS 8.0, *)
func VTCompressionSessionInvalidate(session: VTCompressionSession)

/*!
	@function VTCompressionSessionGetTypeID
	@abstract Returns the CFTypeID for compression sessions.  
*/
@available(iOS 8.0, *)
func VTCompressionSessionGetTypeID() -> CFTypeID

/*!
	@function	VTCompressionSessionGetPixelBufferPool
	@abstract	Returns a pool that can provide ideal source pixel buffers for a compression session.
	@discussion
		The compression session creates this pixel buffer pool based on
		the compressor's pixel buffer attributes and any pixel buffer
		attributes passed in to VTCompressionSessionCreate.  If the
		source pixel buffer attributes and the compressor pixel buffer
		attributes cannot be reconciled, the pool is based on the source
		pixel buffer attributes and the Video Toolbox converts each CVImageBuffer
		internally.
		<BR>
		While clients can call VTCompressionSessionGetPixelBufferPool once
		and retain the resulting pool, the call is cheap enough that it's OK 
		to call it once per frame.  If a change of session properties causes 
		the compressor's pixel buffer attributes to change, it's possible that
		VTCompressionSessionGetPixelBufferPool might return a different pool.
*/
@available(iOS 8.0, *)
func VTCompressionSessionGetPixelBufferPool(session: VTCompressionSession) -> CVPixelBufferPool?

/*!
	@function	VTCompressionSessionPrepareToEncodeFrames
	@abstract
		You can optionally call this function to provide the encoder with an opportunity to perform
		any necessary resource allocation before it begins encoding frames.
	@discussion
		This optional call can be used to provide the encoder an opportunity to allocate
		any resources necessary before it begins encoding frames.  If this isn't called, any
		necessary resources will be allocated on the first VTCompressionSessionEncodeFrame call.
		Extra calls to this function will have no effect.
	@param	session
		The compression session.
*/
@available(iOS 8.0, *)
func VTCompressionSessionPrepareToEncodeFrames(session: VTCompressionSession) -> OSStatus

/*!
	@function	VTCompressionSessionEncodeFrame
	@abstract
		Call this function to present frames to the compression session.
		Encoded frames may or may not be output before the function returns.
	@discussion
		The client should not modify the pixel data after making this call.
		The session and/or encoder will retain the image buffer as long as necessary. 
	@param	session
		The compression session.
	@param	imageBuffer
		A CVImageBuffer containing a video frame to be compressed.  
		Must have a nonzero reference count.
	@param	presentationTimeStamp
		The presentation timestamp for this frame, to be attached to the sample buffer.
		Each presentation timestamp passed to a session must be greater than the previous one.
	@param	duration
		The presentation duration for this frame, to be attached to the sample buffer.  
		If you do not have duration information, pass kCMTimeInvalid.
	@param	frameProperties
		Contains key/value pairs specifying additional properties for encoding this frame.
		Note that some session properties may also be changed between frames.
		Such changes have effect on subsequently encoded frames.
	@param	sourceFrameRefCon
		Your reference value for the frame, which will be passed to the output callback function.
	@param	infoFlagsOut
		Points to a VTEncodeInfoFlags to receive information about the encode operation.
		The kVTEncodeInfo_Asynchronous bit may be set if the encode is (or was) running
		asynchronously.
		The kVTEncodeInfo_FrameDropped bit may be set if the frame was dropped (synchronously).
		Pass NULL if you do not want to receive this information.
*/
@available(iOS 8.0, *)
func VTCompressionSessionEncodeFrame(session: VTCompressionSession, _ imageBuffer: CVImageBuffer, _ presentationTimeStamp: CMTime, _ duration: CMTime, _ frameProperties: CFDictionary?, _ sourceFrameRefCon: UnsafeMutablePointer<Void>, _ infoFlagsOut: UnsafeMutablePointer<VTEncodeInfoFlags>) -> OSStatus

/*!
	@typedef	VTCompressionOutputHandler
	@abstract   Prototype for block invoked when frame compression is complete.
	@discussion
		When you encode a frame, you pass in a callback block to be called
		for that compressed frame.  This block will be called in decode order (which is not
		necessarily the same as display order).
	@param	status
		noErr if compression was successful; an error code if compression was not successful.
	@param	infoFlags
		Contains information about the encode operation.
		The kVTEncodeInfo_Asynchronous bit may be set if the encode ran asynchronously.
		The kVTEncodeInfo_FrameDropped bit may be set if the frame was dropped.
	@param	sampleBuffer
		Contains the compressed frame, if compression was successful and the frame was not dropped;
		otherwise, NULL.
 */
typealias VTCompressionOutputHandler = (OSStatus, VTEncodeInfoFlags, CMSampleBuffer?) -> Void

/*!
	@function	VTCompressionSessionEncodeFrameWithOutputHandler
	@abstract
		Call this function to present frames to the compression session.
		Encoded frames may or may not be output before the function returns.
	@discussion
		The client should not modify the pixel data after making this call.
		The session and/or encoder will retain the image buffer as long as necessary.
		Cannot be called with a session created with a VTCompressionOutputCallback/
	@param	session
		The compression session.
	@param	imageBuffer
		A CVImageBuffer containing a video frame to be compressed.
		Must have a nonzero reference count.
	@param	presentationTimeStamp
		The presentation timestamp for this frame, to be attached to the sample buffer.
		Each presentation timestamp passed to a session must be greater than the previous one.
	@param	duration
		The presentation duration for this frame, to be attached to the sample buffer.
		If you do not have duration information, pass kCMTimeInvalid.
	@param	frameProperties
		Contains key/value pairs specifying additional properties for encoding this frame.
		Note that some session properties may also be changed between frames.
		Such changes have effect on subsequently encoded frames.
	@param	infoFlagsOut
		Points to a VTEncodeInfoFlags to receive information about the encode operation.
		The kVTEncodeInfo_Asynchronous bit may be set if the encode is (or was) running
		asynchronously.
		The kVTEncodeInfo_FrameDropped bit may be set if the frame was dropped (synchronously).
		Pass NULL if you do not want to receive this information.
	@param	outputHandler
		The block to be called when encoding the frame is completed.
		This block may be called asynchronously, on a different thread from the one that calls VTCompressionSessionEncodeFrameWithOutputHandler.
 */
@available(iOS 9.0, *)
func VTCompressionSessionEncodeFrameWithOutputHandler(session: VTCompressionSession, _ imageBuffer: CVImageBuffer, _ presentationTimeStamp: CMTime, _ duration: CMTime, _ frameProperties: CFDictionary?, _ infoFlagsOut: UnsafeMutablePointer<VTEncodeInfoFlags>, _ outputHandler: VTCompressionOutputHandler) -> OSStatus

/*!
	@function VTCompressionSessionCompleteFrames
	@abstract Forces the compression session to complete encoding frames.
	@discussion
		If completeUntilPresentationTimeStamp is numeric, frames with presentation timestamps
		up to and including this timestamp will be emitted before the function returns.
		If completeUntilPresentationTimeStamp is non-numeric, all pending frames
		will be emitted before the function returns.
*/
@available(iOS 8.0, *)
func VTCompressionSessionCompleteFrames(session: VTCompressionSession, _ completeUntilPresentationTimeStamp: CMTime) -> OSStatus
struct VTCompressionSessionOptionFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var BeginFinalPass: VTCompressionSessionOptionFlags { get }
}

/*!
	@function	VTCompressionSessionBeginPass
	@abstract	Call to announce the start of a specific compression pass.
	@discussion
		During multi-pass encoding, this function must be called before VTCompressionSessionEncodeFrame.
		It is an error to call this function when multi-pass encoding has not been enabled by setting kVTCompressionPropertyKey_MultiPassStorage.
	@param	beginPassFlags
		Pass kVTCompressionSessionBeginFinalPass to inform the encoder that the pass must be the final pass.
*/
@available(iOS 8.0, *)
func VTCompressionSessionBeginPass(session: VTCompressionSession, _ beginPassFlags: VTCompressionSessionOptionFlags, _ reserved: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	@function	VTCompressionSessionEndPass
	@abstract	Call to announce the end of a pass.
	@discussion
		VTCompressionSessionEndPass can take a long time, since the video encoder may perform significant processing between passes.
		VTCompressionSessionEndPass will indicate via the furtherPassesRequestedOut argument whether the video encoder would like to perform another pass.  There is no particular bound on the number of passes the video encoder may request, but the client is free to disregard this request and use the last-emitted set of frames.
		It is an error to call this function when multi-pass encoding has not been enabled by setting kVTCompressionPropertyKey_MultiPassStorage.
	@param furtherPassesRequestedOut
		Points to a Boolean that will be set to true if the video encoder would like to perform another pass, false otherwise.
		You may pass NULL to indicate that the client is certain to use this as the final pass, in which case the video encoder can skip that evaluation step.
*/
@available(iOS 8.0, *)
func VTCompressionSessionEndPass(session: VTCompressionSession, _ furtherPassesRequestedOut: UnsafeMutablePointer<DarwinBoolean>, _ reserved: UnsafeMutablePointer<UInt32>) -> OSStatus

/*!
	 @function	VTCompressionSessionGetTimeRangesForNextPass
	 @abstract	Retrieves the time ranges for the next pass.
	 @discussion
		If VTCompressionSessionEndPass sets *furtherPassesRequestedOut to true, call VTCompressionSessionGetTimeRangesForNextPass to find out the time ranges for the next pass.  Source frames outside these time ranges should be skipped.
		Each time range is considered to include any frame at its start time and not to include any frame at its end time.
		It is an error to call this function when multi-pass encoding has not been enabled by setting kVTCompressionPropertyKey_MultiPassStorage, or when VTCompressionSessionEndPass did not set *furtherPassesRequestedOut to true.
	 @param timeRangeCountOut
		Points to a CMItemCount to receive the number of CMTimeRanges.
	 @param timeRangeArrayOut
		Points to a const CMTimeRange * to receive a pointer to a C array of CMTimeRanges.
		The storage for this array belongs to the VTCompressionSession and should not be modified.
		The pointer will be valid until the next call to VTCompressionSessionEndPass, or until the VTCompressionSession is invalidated or finalized.
*/
@available(iOS 8.0, *)
func VTCompressionSessionGetTimeRangesForNextPass(session: VTCompressionSession, _ timeRangeCountOut: UnsafeMutablePointer<CMItemCount>, _ timeRangeArrayOut: UnsafeMutablePointer<UnsafePointer<CMTimeRange>>) -> OSStatus

/*!
	@constant	kVTDecompressionPropertyKey_PixelBufferPool
	@abstract
		A pixel buffer pool for pixel buffers being output by the decompression session.
	@discussion
		This pixel buffer pool is always compatible with the client's pixel buffer attributes
		as specified when calling VTDecompressionSessionCreate.
*/
@available(iOS 8.0, *)
let kVTDecompressionPropertyKey_PixelBufferPool: CFString

/*!
	@constant	kVTDecompressionPropertyKey_PixelBufferPoolIsShared
	@abstract
		Indicates whether a common pixel buffer pool is shared between
		the video decoder and the session client. 
	@discussion
		This is false if separate pools are used because the pixel buffer attributes specified 
		by the video decoder and the client were incompatible.
*/
@available(iOS 8.0, *)
let kVTDecompressionPropertyKey_PixelBufferPoolIsShared: CFString

/*!
	@constant	kVTDecompressionPropertyKey_OutputPoolRequestedMinimumBufferCount
	@abstract
		Requests that the VTDecompressionSession use the value provided as a minimum buffer
		count for its output CVPixelBufferPool, not releasing buffers while the number in
		use is below this level.
	@discussion
		This property effectively requests that the kCVPixelBufferPoolMinimumBufferCountKey key
		be used for the creation of the output CVPixelBufferPool.
		
		For general playback cases, standard CVPixelBufferPool age-out behaviour should be 
		sufficient and this property should not be needed.  This property should only be used in 
		unusual playback scenarios where a peak pool level is known, and the potential 
		memory overhead is an acceptable tradeoff for avoiding possible buffer reallocation.
		
		Setting this property to NULL or passing in the value 0 will clear this setting and
		remove the minimum buffer count.
		
		Setting this property while a VTDecompressionSession is in use will result in the 
		creation of a new CVPixelBufferPool. This will cause new buffers to be allocated, and 
		existing buffers to be deallocated when they are released.
*/
@available(iOS 8.0, *)
let kVTDecompressionPropertyKey_OutputPoolRequestedMinimumBufferCount: CFString

/*!
	@constant	kVTDecompressionPropertyKey_NumberOfFramesBeingDecoded
	@abstract
		Returns the number of frames currently being decoded.
	@discussion
		This number may decrease asynchronously as frames are output.
*/
@available(iOS 8.0, *)
let kVTDecompressionPropertyKey_NumberOfFramesBeingDecoded: CFString

/*!
	@constant	kVTDecompressionPropertyKey_MinOutputPresentationTimeStampOfFramesBeingDecoded
	@abstract
		The minimum output presentation timestamp of the frames currently being decoded.
	@discussion
		This may change asynchronously as frames are output.
*/
@available(iOS 8.0, *)
let kVTDecompressionPropertyKey_MinOutputPresentationTimeStampOfFramesBeingDecoded: CFString

/*!
	@constant	kVTDecompressionPropertyKey_MaxOutputPresentationTimeStampOfFramesBeingDecoded
	@abstract
		The maximum output presentation timestamp of the frames currently being decoded.
	@discussion
		This may change asynchronously as frames are output.
*/
@available(iOS 8.0, *)
let kVTDecompressionPropertyKey_MaxOutputPresentationTimeStampOfFramesBeingDecoded: CFString

/*!
	@constant	kVTDecompressionPropertyKey_ContentHasInterframeDependencies
	@abstract
		Indicates whether the content being decoded has interframe dependencies, if the decoder knows.
	@discussion
		This is an optional property for video decoders to implement.
*/
@available(iOS 8.0, *)
let kVTDecompressionPropertyKey_ContentHasInterframeDependencies: CFString

/*!
	@constant	kVTDecompressionPropertyKey_RealTime
	@abstract
		Hints the video decoder that decompression is, or is not, being performed in real time.
	@discussion
		For non-realtime decompression, clients may set this property to kCFBooleanFalse, which indicates that
		it is OK to run this decode pipeline at a lower priority than is used for realtime decode.
		By default, the VideoToolbox will treat the VTDecompressionSession as though it is being used for
		realtime playback.  Setting the property to NULL is equivalent to setting it to kCFBooleanTrue.
*/
@available(iOS 8.0, *)
let kVTDecompressionPropertyKey_RealTime: CFString

/*!
	@constant	kVTDecompressionPropertyKey_ThreadCount
	@abstract
		Gets number of threads used by codec or suggests number of threads to use.
	@discussion
		This is an optional property for video decoders to implement.
*/
@available(iOS 8.0, *)
let kVTDecompressionPropertyKey_ThreadCount: CFString

/*!
	@constant	kVTDecompressionPropertyKey_FieldMode
	@abstract
		Requests special handling of interlaced content.  
	@discussion
		This is an optional property for video decoders to implement.
		Decoders should only accept the modes that they will implement.
*/
@available(iOS 8.0, *)
let kVTDecompressionPropertyKey_FieldMode: CFString
@available(iOS 8.0, *)
let kVTDecompressionProperty_FieldMode_BothFields: CFString
@available(iOS 8.0, *)
let kVTDecompressionProperty_FieldMode_TopFieldOnly: CFString
@available(iOS 8.0, *)
let kVTDecompressionProperty_FieldMode_BottomFieldOnly: CFString
@available(iOS 8.0, *)
let kVTDecompressionProperty_FieldMode_SingleField: CFString
@available(iOS 8.0, *)
let kVTDecompressionProperty_FieldMode_DeinterlaceFields: CFString

/*!
	@constant	kVTDecompressionPropertyKey_DeinterlaceMode
	@abstract
		Requests a specific deinterlacing technique.  
	@discussion
		This is an optional property for video decoders to implement.
		Decoders should only accept the modes that they will implement.
		This property is only applicable if kVTDecompressionPropertyKey_FieldMode 
		is set to kVTDecompressionProperty_FieldMode_DeinterlaceFields.
*/
@available(iOS 8.0, *)
let kVTDecompressionPropertyKey_DeinterlaceMode: CFString
@available(iOS 8.0, *)
let kVTDecompressionProperty_DeinterlaceMode_VerticalFilter: CFString
@available(iOS 8.0, *)
let kVTDecompressionProperty_DeinterlaceMode_Temporal: CFString

/*!
	@constant	kVTDecompressionPropertyKey_ReducedResolutionDecode
	@abstract
		Requests decoding at a smaller resolution than full-size.  
	@discussion
		This is an optional property for video decoders to implement.
		Decoders that only support a fixed set of resolutions should pick the smallest resolution 
		greater than or equal to the requested width x height.
*/
@available(iOS 8.0, *)
let kVTDecompressionPropertyKey_ReducedResolutionDecode: CFString
@available(iOS 8.0, *)
let kVTDecompressionResolutionKey_Width: CFString
@available(iOS 8.0, *)
let kVTDecompressionResolutionKey_Height: CFString

/*!
	@constant	kVTDecompressionPropertyKey_ReducedCoefficientDecode
	@abstract
		Requests approximation during decoding.  
	@discussion
		This is an optional property for video decoders to implement.
		Only decoders for which such approximations make sense should implement this property.
		The meaning of the number of coefficients will be decoder-specific.
*/
@available(iOS 8.0, *)
let kVTDecompressionPropertyKey_ReducedCoefficientDecode: CFString

/*!
	@constant	kVTDecompressionPropertyKey_ReducedFrameDelivery
	@abstract
		Requests frame dropping.
	@discussion
		This is an optional property for video decoders to implement.
		This number is a fraction between 0.0 and 1.0 that indicates what proportion of frames 
		should be delivered -- others may be dropped.  
		For example, 0.25 would indicate that only one frame in every 4 should be delivered.  
		This is a guideline; actual selection of frames is up to the decoder, which will know 
		which frames can be skipped without harm.
		If the decoder does not support this property directly, but reports that the content has 
		no interframe dependencies, the video toolbox may step in and perform simple frame dropping.
*/
@available(iOS 8.0, *)
let kVTDecompressionPropertyKey_ReducedFrameDelivery: CFString

/*!
	@constant	kVTDecompressionPropertyKey_OnlyTheseFrames
	@abstract
		Requests that frames be filtered by type.  
	@discussion
		This is an optional property for video decoders to implement.
		If kVTDecompressionPropertyKey_ReducedFrameDelivery is supported and used in conjunction with 
		this property, the ReducedFrameDelivery is the proportion of the frames selected by this property: 
		0.25 and IFrames would indicate that only one I frame in every four should be delivered.
*/
@available(iOS 8.0, *)
let kVTDecompressionPropertyKey_OnlyTheseFrames: CFString
@available(iOS 8.0, *)
let kVTDecompressionProperty_OnlyTheseFrames_AllFrames: CFString
@available(iOS 8.0, *)
let kVTDecompressionProperty_OnlyTheseFrames_NonDroppableFrames: CFString
@available(iOS 8.0, *)
let kVTDecompressionProperty_OnlyTheseFrames_IFrames: CFString
@available(iOS 8.0, *)
let kVTDecompressionProperty_OnlyTheseFrames_KeyFrames: CFString

/*!
	@constant	kVTDecompressionPropertyKey_SuggestedQualityOfServiceTiers
	@abstract
		Suggests how quality-of-service may be lowered in order to maintain realtime playback.
	@discussion
		This is an optional property for video decoders to implement.
		This property value is an array containing dictionaries of property key/value pairs.  
		The first dictionary in the array should contain the set of properties that restore the 
		default (full) quality of service; later dictionaries should contain property sets with 
		decreasing qualities of service.  Clients may work their way down these tiers until they are 
		able to keep up with the frame rate.
*/
@available(iOS 8.0, *)
let kVTDecompressionPropertyKey_SuggestedQualityOfServiceTiers: CFString

/*!
	@constant	kVTDecompressionPropertyKey_SupportedPixelFormatsOrderedByQuality
	@abstract
		Provides hints about quality tradeoffs between pixel formats.
	@discussion
		This is an optional property for video decoders to implement.
		This property value is an array containing CFNumbers holding CMPixelFormatType values,
		ordered by quality from best to worse.
*/
@available(iOS 8.0, *)
let kVTDecompressionPropertyKey_SupportedPixelFormatsOrderedByQuality: CFString

/*!
	@constant	kVTDecompressionPropertyKey_SupportedPixelFormatsOrderedByPerformance
	@abstract
		Provides hints about speed tradeoffs between pixel formats.
	@discussion
		This is an optional property for video decoders to implement.
		This property value is an array containing CFNumbers holding CMPixelFormatType values,
		ordered by speed from fast to slow.
*/
@available(iOS 8.0, *)
let kVTDecompressionPropertyKey_SupportedPixelFormatsOrderedByPerformance: CFString

/*!
	@constant	kVTDecompressionPropertyKey_PixelFormatsWithReducedResolutionSupport
	@abstract
		Indicates which pixel formats support reduced resolution decoding.
	@discussion
		This is an optional property for video decoders to implement.
		This property value is an array containing CFNumbers holding CMPixelFormatType values.
*/
@available(iOS 8.0, *)
let kVTDecompressionPropertyKey_PixelFormatsWithReducedResolutionSupport: CFString

/*!
	@constant	kVTDecompressionPropertyKey_PixelTransferProperties
	@abstract
		Requests particular pixel transfer features.  
	@discussion
		This property is implemented by the video toolbox.
		This property value is a CFDictionary containing properties from VTPixelTransferProperties.h.
*/
@available(iOS 8.0, *)
let kVTDecompressionPropertyKey_PixelTransferProperties: CFString

/*!
	@typedef	VTDecompressionSessionRef
	@abstract	A reference to a Video Toolbox Decompression Session.
	@discussion
		A decompression session supports the decompression of a sequence of video frames.
		The session reference is a reference-counted CF object.
		To create a decompression session, call VTDecompressionSessionCreate; 
		then you can optionally configure the session using VTSessionSetProperty;
		then to decode frames, call VTDecompressionSessionDecodeFrame.
		When you are done with the session, you should call VTDecompressionSessionInvalidate
		to tear it down and CFRelease to release your object reference.
 */
class VTDecompressionSession {
}

/*!
	@typedef	VTDecompressionSessionRef
	@abstract	A reference to a Video Toolbox Decompression Session.
	@discussion
		A decompression session supports the decompression of a sequence of video frames.
		The session reference is a reference-counted CF object.
		To create a decompression session, call VTDecompressionSessionCreate; 
		then you can optionally configure the session using VTSessionSetProperty;
		then to decode frames, call VTDecompressionSessionDecodeFrame.
		When you are done with the session, you should call VTDecompressionSessionInvalidate
		to tear it down and CFRelease to release your object reference.
 */
typealias VTDecompressionSessionRef = VTDecompressionSession

/*!
	@typedef	VTDecompressionOutputCallback
	@abstract	Prototype for callback invoked when frame decompression is complete.
	@discussion 
		When you create a decompression session, you pass in a callback function to be called 
		for decompressed frames.  This function will not necessarily be called in display order.
	@param	decompressionOutputRefCon
		The callback's reference value, copied from the decompressionOutputRefCon field of the
		VTDecompressionOutputCallbackRecord structure.
	@param	sourceFrameRefCon
		The frame's reference value, copied from the sourceFrameRefCon argument to 
		VTDecompressionSessionDecodeFrame.
	@param	status
		noErr if decompression was successful; an error code if decompression was not successful.
	@param	infoFlags
		Contains information about the decode operation.
		The kVTDecodeInfo_Asynchronous bit may be set if the decode ran asynchronously.
		The kVTDecodeInfo_FrameDropped bit may be set if the frame was dropped.
		If the kVTDecodeInfo_ImageBufferModifiable bit is set, it is safe for the client to modify the imageBuffer.
	@param	imageBuffer
		Contains the decompressed frame, if decompression was successful; otherwise, NULL.
		IMPORTANT: The video decompressor may still be referencing the imageBuffer returned in this
		callback if the kVTDecodeInfo_ImageBufferModifiable flag is not set.  Unless this flag
		is set, it is not safe to modify the returned imageBuffer.
	@param	presentationTimeStamp
		The frame's presentation timestamp, which will be determined by calling 
		CMSampleBufferGetOutputPresentationTimeStamp; kCMTimeInvalid if not available.
	@param	presentationDuration
		The frame's presentation duration, which will be determined by calling
		CMSampleBufferGetOutputDuration; kCMTimeInvalid if not available.
*/
typealias VTDecompressionOutputCallback = @convention(c) (UnsafeMutablePointer<Void>, UnsafeMutablePointer<Void>, OSStatus, VTDecodeInfoFlags, CVImageBuffer?, CMTime, CMTime) -> Void
struct VTDecompressionOutputCallbackRecord {
  var decompressionOutputCallback: VTDecompressionOutputCallback?
  var decompressionOutputRefCon: UnsafeMutablePointer<Void>
  init()
  init(decompressionOutputCallback: VTDecompressionOutputCallback?, decompressionOutputRefCon: UnsafeMutablePointer<Void>)
}

/*!
	@function	VTDecompressionSessionCreate
	@abstract	Creates a session for decompressing video frames.
    @discussion 
		Decompressed frames will be emitted through calls to outputCallback.
	@param	allocator
		An allocator for the session.  Pass NULL to use the default allocator.
	@param	videoFormatDescription
		Describes the source video frames.
	@param	videoDecoderSpecification
		Specifies a particular video decoder that must be used.  
		Pass NULL to let the video toolbox choose a decoder.
	@param	destinationImageBufferAttributes
		Describes requirements for emitted pixel buffers.
		Pass NULL to set no requirements.
	@param	outputCallback
		The callback to be called with decompressed frames.
		Pass NULL if and only if you will be calling VTDecompressionSessionDecodeFrameWithOutputHandler for decoding frames.
	@param	decompressionSessionOut
		Points to a variable to receive the new decompression session.
	
*/
@available(iOS 8.0, *)
func VTDecompressionSessionCreate(allocator: CFAllocator?, _ videoFormatDescription: CMVideoFormatDescription, _ videoDecoderSpecification: CFDictionary?, _ destinationImageBufferAttributes: CFDictionary?, _ outputCallback: UnsafePointer<VTDecompressionOutputCallbackRecord>, _ decompressionSessionOut: UnsafeMutablePointer<VTDecompressionSession?>) -> OSStatus

/*!
	@function	VTDecompressionSessionInvalidate
	@abstract	Tears down a decompression session.
    @discussion 
    	When you are done with a decompression session you created, call VTDecompressionSessionInvalidate 
    	to tear it down and then CFRelease to release your object reference.
    	When a decompression session's retain count reaches zero, it is automatically invalidated, but 
    	since sessions may be retained by multiple parties, it can be hard to predict when this will happen.
    	Calling VTDecompressionSessionInvalidate ensures a deterministic, orderly teardown.
*/
@available(iOS 8.0, *)
func VTDecompressionSessionInvalidate(session: VTDecompressionSession)

/*!
	@function VTDecompressionSessionGetTypeID
	@abstract Returns the CFTypeID for decompression sessions.  
*/
@available(iOS 8.0, *)
func VTDecompressionSessionGetTypeID() -> CFTypeID

/*!
	@function	VTDecompressionSessionDecodeFrame
	@abstract	Decompresses a video frame.
	@param	session
		The decompression session.
	@param	sampleBuffer
		A CMSampleBuffer containing one or more video frames.  
	@param	decodeFlags
		A bitfield of directives to the decompression session and decoder.
		The kVTDecodeFrame_EnableAsynchronousDecompression bit indicates whether the video decoder 
		may decompress the frame asynchronously.
		The kVTDecodeFrame_EnableTemporalProcessing bit indicates whether the decoder may delay calls to the output callback
		so as to enable processing in temporal (display) order.
		If both flags are clear, the decompression shall complete and your output callback function will be called 
		before VTDecompressionSessionDecodeFrame returns.
		If either flag is set, VTDecompressionSessionDecodeFrame may return before the output callback function is called.  
	@param	sourceFrameRefCon
		Your reference value for the frame.  
		Note that if sampleBuffer contains multiple frames, the output callback function will be called
		multiple times with this sourceFrameRefCon.
	@param	infoFlagsOut
		Points to a VTDecodeInfoFlags to receive information about the decode operation.
		The kVTDecodeInfo_Asynchronous bit may be set if the decode is (or was) running
		asynchronously.
		The kVTDecodeInfo_FrameDropped bit may be set if the frame was dropped (synchronously).
		Pass NULL if you do not want to receive this information.
*/
@available(iOS 8.0, *)
func VTDecompressionSessionDecodeFrame(session: VTDecompressionSession, _ sampleBuffer: CMSampleBuffer, _ decodeFlags: VTDecodeFrameFlags, _ sourceFrameRefCon: UnsafeMutablePointer<Void>, _ infoFlagsOut: UnsafeMutablePointer<VTDecodeInfoFlags>) -> OSStatus

/*!
	@typedef	VTDecompressionOutputHandler
	@abstract	Prototype for block invoked when frame decompression is complete.
	@discussion
		When you decode a frame, you pass in a callback block to be called
		for that decompressed frame.  This block will not necessarily be called in display order.
	@param	status
		noErr if decompression was successful; an error code if decompression was not successful.
	@param	infoFlags
		Contains information about the decode operation.
		The kVTDecodeInfo_Asynchronous bit may be set if the decode ran asynchronously.
		The kVTDecodeInfo_FrameDropped bit may be set if the frame was dropped.
		If the kVTDecodeInfo_ImageBufferModifiable bit is set, it is safe for the client to modify the imageBuffer.
	@param	imageBuffer
		Contains the decompressed frame, if decompression was successful; otherwise, NULL.
		IMPORTANT: The video decompressor may still be referencing the imageBuffer returned in this
		callback if the kVTDecodeInfo_ImageBufferModifiable flag is not set.  Unless this flag
		is set, it is not safe to modify the returned imageBuffer.
	@param	presentationTimeStamp
		The frame's presentation timestamp; kCMTimeInvalid if not available.
	@param	presentationDuration
		The frame's presentation duration; kCMTimeInvalid if not available.
 */
typealias VTDecompressionOutputHandler = (OSStatus, VTDecodeInfoFlags, CVImageBuffer?, CMTime, CMTime) -> Void

/*!
	@function	VTDecompressionSessionDecodeFrameWithOutputHandler
	@abstract	Decompresses a video frame.
	@discussion
		Cannot be called with a session created with a VTDecompressionOutputCallbackRecord.
	@param	session
		The decompression session.
	@param	sampleBuffer
		A CMSampleBuffer containing one or more video frames.
	@param	decodeFlags
		A bitfield of directives to the decompression session and decoder.
		The kVTDecodeFrame_EnableAsynchronousDecompression bit indicates whether the video decoder
		may decompress the frame asynchronously.
		The kVTDecodeFrame_EnableTemporalProcessing bit indicates whether the decoder may delay calls to the output callback
		so as to enable processing in temporal (display) order.
		If both flags are clear, the decompression shall complete and your output callback function will be called
		before VTDecompressionSessionDecodeFrame returns.
		If either flag is set, VTDecompressionSessionDecodeFrame may return before the output callback function is called.
	@param	infoFlagsOut
		Points to a VTDecodeInfoFlags to receive information about the decode operation.
		The kVTDecodeInfo_Asynchronous bit may be set if the decode is (or was) running
		asynchronously.
		The kVTDecodeInfo_FrameDropped bit may be set if the frame was dropped (synchronously).
		Pass NULL if you do not want to receive this information.
	@param	outputHandler
		The block to be called when decoding the frame is completed.
 */
@available(iOS 9.0, *)
func VTDecompressionSessionDecodeFrameWithOutputHandler(session: VTDecompressionSession, _ sampleBuffer: CMSampleBuffer, _ decodeFlags: VTDecodeFrameFlags, _ infoFlagsOut: UnsafeMutablePointer<VTDecodeInfoFlags>, _ outputHandler: VTDecompressionOutputHandler) -> OSStatus

/*!
	@function VTDecompressionSessionFinishDelayedFrames
	@abstract Directs the decompression session to emit all delayed frames.
	@discussion
		By default, the decompression session may not delay frames indefinitely; 
		frames may only be indefinitely delayed if the client opts in via
		kVTDecodeFrame_EnableTemporalProcessing.
		IMPORTANT NOTE: This function may return before all delayed frames are emitted. 
		To wait for them, call VTDecompressionSessionWaitForAsynchronousFrames instead.
*/
@available(iOS 8.0, *)
func VTDecompressionSessionFinishDelayedFrames(session: VTDecompressionSession) -> OSStatus

/*!
	@function VTDecompressionSessionCanAcceptFormatDescription
	@abstract Indicates whether the session can decode frames with the given format description.
	@discussion
		Some video decoders are able to accommodate minor changes in format without needing to be
		completely reset in a new session.  This function can be used to test whether a format change
		is sufficiently minor.
*/
@available(iOS 8.0, *)
func VTDecompressionSessionCanAcceptFormatDescription(session: VTDecompressionSession, _ newFormatDesc: CMFormatDescription) -> Bool

/*!
	@function VTDecompressionSessionWaitForAsynchronousFrames
	@abstract Waits for any and all outstanding asynchronous and delayed frames to complete, then returns.
	@discussion
		This function automatically calls VTDecompressionSessionFinishDelayedFrames, 
		so clients don't have to call both.  
*/
@available(iOS 8.0, *)
func VTDecompressionSessionWaitForAsynchronousFrames(session: VTDecompressionSession) -> OSStatus

/*!
	@function	VTDecompressionSessionCopyBlackPixelBuffer
	@abstract	Copies a black pixel buffer from the decompression session.
    @discussion 
		The pixel buffer is in the same format that the session is decompressing to.
	@param	session
		The decompression session.
	@param	pixelBufferOut
		Points to a variable to receive the copied pixel buffer.
	
*/
@available(iOS 8.0, *)
func VTDecompressionSessionCopyBlackPixelBuffer(session: VTDecompressionSession, _ pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> OSStatus
var kVTPropertyNotSupportedErr: OSStatus { get }
var kVTPropertyReadOnlyErr: OSStatus { get }
var kVTParameterErr: OSStatus { get }
var kVTInvalidSessionErr: OSStatus { get }
var kVTAllocationFailedErr: OSStatus { get }
var kVTPixelTransferNotSupportedErr: OSStatus { get }
var kVTCouldNotFindVideoDecoderErr: OSStatus { get }
var kVTCouldNotCreateInstanceErr: OSStatus { get }
var kVTCouldNotFindVideoEncoderErr: OSStatus { get }
var kVTVideoDecoderBadDataErr: OSStatus { get }
var kVTVideoDecoderUnsupportedDataFormatErr: OSStatus { get }
var kVTVideoDecoderMalfunctionErr: OSStatus { get }
var kVTVideoEncoderMalfunctionErr: OSStatus { get }
var kVTVideoDecoderNotAvailableNowErr: OSStatus { get }
var kVTImageRotationNotSupportedErr: OSStatus { get }
var kVTVideoEncoderNotAvailableNowErr: OSStatus { get }
var kVTFormatDescriptionChangeNotSupportedErr: OSStatus { get }
var kVTInsufficientSourceColorDataErr: OSStatus { get }
var kVTCouldNotCreateColorCorrectionDataErr: OSStatus { get }
var kVTColorSyncTransformConvertFailedErr: OSStatus { get }
var kVTVideoDecoderAuthorizationErr: OSStatus { get }
var kVTVideoEncoderAuthorizationErr: OSStatus { get }
var kVTColorCorrectionPixelTransferFailedErr: OSStatus { get }
var kVTMultiPassStorageIdentifierMismatchErr: OSStatus { get }
var kVTMultiPassStorageInvalidErr: OSStatus { get }
var kVTFrameSiloInvalidTimeStampErr: OSStatus { get }
var kVTFrameSiloInvalidTimeRangeErr: OSStatus { get }
var kVTCouldNotFindTemporalFilterErr: OSStatus { get }
var kVTPixelTransferNotPermittedErr: OSStatus { get }

/*!
	@enum		VTDecodeFrameFlags
	@abstract	Directives for the decompression session and the video decoder, passed into
				decodeFlags parameter of VTDecompressionSessionDecodeFrame.

	@constant	kVTDecodeFrame_EnableAsynchronousDecompression
		With the kVTDecodeFrame_EnableAsynchronousDecompression bit clear, the video decoder 
		is compelled to emit every frame before it returns.  With the bit set, the decoder may 
		process frames asynchronously, but it is not compelled to do so.  
	@constant	kVTDecodeFrame_DoNotOutputFrame
		A hint to the decompression session and video decoder that a CVImageBuffer should not
		be emitted for this frame.  NULL will be returned instead. 
	@constant	kVTDecodeFrame_1xRealTimePlayback
		A hint to the video decoder that it would be OK to use a low-power mode that can not decode faster than 1x realtime.
	@constant	kVTDecodeFrame_EnableTemporalProcessing
		With the kVTDecodeFrame_EnableTemporalProcessing bit clear, the video decoder should emit 
		every frame once that frame's decoding is done -- frames may not be delayed indefinitely.  With 
		the bit set, it is legal for the decoder to delay frames indefinitely -- at least 
		until VTDecompressionSessionFinishDelayedFrames or VTDecompressionSessionInvalidate is called.
*/
struct VTDecodeFrameFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var _EnableAsynchronousDecompression: VTDecodeFrameFlags { get }
  static var _DoNotOutputFrame: VTDecodeFrameFlags { get }
  static var _1xRealTimePlayback: VTDecodeFrameFlags { get }
  static var _EnableTemporalProcessing: VTDecodeFrameFlags { get }
}
struct VTDecodeInfoFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Asynchronous: VTDecodeInfoFlags { get }
  static var FrameDropped: VTDecodeInfoFlags { get }
  static var ImageBufferModifiable: VTDecodeInfoFlags { get }
}
struct VTEncodeInfoFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Asynchronous: VTEncodeInfoFlags { get }
  static var FrameDropped: VTEncodeInfoFlags { get }
}

/*!
	@typedef	VTFrameSilo
	@abstract	A VTFrameSilo stores a large number of sample buffers, as produced by a multi-pass compression session.
	@discussion
		The sample buffers are ordered by decode timestamp. 
		A VTFrameSilo starts out empty and is populated by calls to VTFrameSiloAddSampleBuffer to add sample buffers in ascending decode order.
		After the first full pass, additional passes may be performed to replace sample buffers.
		Each such pass must begin with a call to VTFrameSiloSetTimeRangesForNextPass, which takes a list of time ranges.
		Samples in these time ranges are deleted, and calls to VTFrameSiloAddSampleBuffer can then be made to provide replacements.
		Call VTFrameSiloCallFunctionForEachSampleBuffer or VTFrameSiloCallBlockForEachSampleBuffer to retrieve sample buffers.
		The VTFrameSilo may write sample buffers and data to the backing file between addition and retrieval; 
		do not expect to get identical object pointers back.
*/
class VTFrameSilo {
}

/*!
	@typedef	VTFrameSilo
	@abstract	A VTFrameSilo stores a large number of sample buffers, as produced by a multi-pass compression session.
	@discussion
		The sample buffers are ordered by decode timestamp. 
		A VTFrameSilo starts out empty and is populated by calls to VTFrameSiloAddSampleBuffer to add sample buffers in ascending decode order.
		After the first full pass, additional passes may be performed to replace sample buffers.
		Each such pass must begin with a call to VTFrameSiloSetTimeRangesForNextPass, which takes a list of time ranges.
		Samples in these time ranges are deleted, and calls to VTFrameSiloAddSampleBuffer can then be made to provide replacements.
		Call VTFrameSiloCallFunctionForEachSampleBuffer or VTFrameSiloCallBlockForEachSampleBuffer to retrieve sample buffers.
		The VTFrameSilo may write sample buffers and data to the backing file between addition and retrieval; 
		do not expect to get identical object pointers back.
*/
typealias VTFrameSiloRef = VTFrameSilo
@available(iOS 8.0, *)
func VTFrameSiloGetTypeID() -> CFTypeID

/*!
	@function	VTFrameSiloCreate
	@abstract	Creates a VTFrameSilo object using a temporary file.
	@discussion
		The returned VTFrameSilo object may be used to gather frames produced by multi-pass encoding.
	@param fileURL
		Specifies where to put the backing file for the VTFrameSilo object.
		If you pass NULL for fileURL, the video toolbox will pick a unique temporary file name.
	@param options
		Reserved, pass NULL.
	@param timeRange
		The valid time range for the frame silo. Must be valid for progress reporting.
	@param siloOut
		Points to a VTFrameSiloRef to receive the newly created object.
		Call CFRelease to release your retain on the created VTFrameSilo object when you are done with it.
*/
@available(iOS 8.0, *)
func VTFrameSiloCreate(allocator: CFAllocator?, _ fileURL: CFURL?, _ timeRange: CMTimeRange, _ options: CFDictionary?, _ siloOut: UnsafeMutablePointer<VTFrameSilo?>) -> OSStatus

/*!
	@function	VTFrameSiloAddSampleBuffer
	@abstract	Adds a sample buffer to a VTFrameSilo object.
	@discussion
		Within each pass, sample buffers must have strictly increasing decode timestamps.
		Passes after the first pass are begun with a call to VTFrameSiloSetTimeRangesForNextPass.
		After a call to VTFrameSiloSetTimeRangesForNextPass, sample buffer decode timestamps must also be within 
		the stated time ranges.
		Note that CMTimeRanges are considered to contain their start times but not their end times.
	@return
		Returns kVTFrameSiloInvalidTimeStampErr if an attempt is made to add a sample buffer with an inappropriate decode timestamp.
*/
@available(iOS 8.0, *)
func VTFrameSiloAddSampleBuffer(silo: VTFrameSilo, _ sampleBuffer: CMSampleBuffer) -> OSStatus

/*!
	@function	VTFrameSiloSetTimeRangesForNextPass
	@abstract	Begins a new pass of samples to be added to a VTFrameSilo object.
	@discussion
		Previously-added sample buffers with decode timestamps within the time ranges will be deleted from the VTFrameSilo.
		It is not necessary to call VTFrameSiloSetTimeRangesForNextPass before adding the first pass' sample buffers.
	@return
		Returns kVTFrameSiloInvalidTimeRangeErr if any time ranges are non-numeric, overlap or are not in ascending order.
*/
@available(iOS 8.0, *)
func VTFrameSiloSetTimeRangesForNextPass(silo: VTFrameSilo, _ timeRangeCount: CMItemCount, _ timeRangeArray: UnsafePointer<CMTimeRange>) -> OSStatus

/*!
	@function	VTFrameSiloGetProgressOfCurrentPass
	@abstract	Gets the progress of the current pass.
	@discussion
		Calculates the current progress based on the most recent sample buffer added and the current pass time ranges.
	@return
		Returns kVTFrameSiloInvalidTimeRangeErr if any time ranges are non-numeric, overlap or are not in ascending order.
*/
@available(iOS 8.0, *)
func VTFrameSiloGetProgressOfCurrentPass(silo: VTFrameSilo, _ progressOut: UnsafeMutablePointer<Float32>) -> OSStatus

/*!
	@function	VTFrameSiloCallFunctionForEachSampleBuffer
	@abstract	Retrieves sample buffers from a VTFrameSilo object.
	@discussion
		You call this function to retrieve sample buffers at the end of a multi-pass compression session.
	@param timeRange
		The decode time range of sample buffers to retrieve.
		Pass kCMTimeRangeInvalid to retrieve all sample buffers from the VTFrameSilo.
	@param callback
		A function to be called, in decode order, with each sample buffer that was added.
		To abort iteration early, return a nonzero status.
		The VTFrameSilo may write sample buffers and data to the backing file between addition and retrieval; 
		do not expect to get identical object pointers back.
	@return
		Returns kVTFrameSiloInvalidTimeRangeErr if any time ranges are non-numeric, overlap or are not in ascending order.
		Returns any nonzero status returned by the callback function.
*/
@available(iOS 8.0, *)
func VTFrameSiloCallFunctionForEachSampleBuffer(silo: VTFrameSilo, _ timeRange: CMTimeRange, _ callbackInfo: UnsafeMutablePointer<Void>, _ callback: @convention(c) (UnsafeMutablePointer<Void>, CMSampleBuffer) -> OSStatus) -> OSStatus

/*!
	@function	VTFrameSiloCallBlockForEachSampleBuffer
	@abstract	Retrieves sample buffers from a VTFrameSilo object.
	@discussion
		You call this function to retrieve sample buffers at the end of a multi-pass compression session.
	@param timeRange
		The decode time range of sample buffers to retrieve.
		Pass kCMTimeRangeInvalid to retrieve all sample buffers from the VTFrameSilo.
	@param handler
		A block to be called, in decode order, with each sample buffer that was added.
		To abort iteration early, return a nonzero status.
		The VTFrameSilo may write sample buffers and data to the backing file between addition and retrieval; 
		do not expect to get identical object pointers back.
	@return
		Returns kVTFrameSiloInvalidTimeRangeErr if any time ranges are non-numeric, overlap or are not in ascending order.
		Returns any nonzero status returned by the handler block.
*/
@available(iOS 8.0, *)
func VTFrameSiloCallBlockForEachSampleBuffer(silo: VTFrameSilo, _ timeRange: CMTimeRange, _ handler: (CMSampleBuffer) -> OSStatus) -> OSStatus

/*!
	@typedef	VTMultiPassStorageRef
	@abstract	A mechanism for storing information for each frame of a multi-pass compression session.
	@discussion
		VTMultiPassStorageRef is a CF type, so call CFRelease and CFRetain to manage objects of this type.
		The data stored in the VTMultiPassStorage is private to the video encoder.
*/
class VTMultiPassStorage {
}

/*!
	@typedef	VTMultiPassStorageRef
	@abstract	A mechanism for storing information for each frame of a multi-pass compression session.
	@discussion
		VTMultiPassStorageRef is a CF type, so call CFRelease and CFRetain to manage objects of this type.
		The data stored in the VTMultiPassStorage is private to the video encoder.
*/
typealias VTMultiPassStorageRef = VTMultiPassStorage
@available(iOS 8.0, *)
func VTMultiPassStorageGetTypeID() -> CFTypeID

/*!
	@function	VTMultiPassStorageCreate
	@abstract	Creates a VTMultiPassStorage object using a temporary file.
	@discussion
		The returned VTMultiPassStorage object may be used to perform multi-pass encoding; see kVTCompressionPropertyKey_MultiPassStorage.
		Call CFRelease to release your retain on the created VTMultiPassStorage object when you are done with it.
	@param fileURL
		Specifies where to put the backing file for the VTMultiPassStorage object.
		If you pass NULL for fileURL, the video toolbox will pick a unique temporary file name.
	@param timeRange
		Gives a hint to the multi pass storage about valid time stamps for data.
	@param options
		If the file did not exist when the storage was created, the file will be deleted when the VTMultiPassStorage object is finalized, unless you set the kVTMultiPassStorageCreationOption_DoNotDelete option to kCFBooleanTrue in the options dictionary.
*/
@available(iOS 8.0, *)
func VTMultiPassStorageCreate(allocator: CFAllocator?, _ fileURL: CFURL?, _ timeRange: CMTimeRange, _ options: CFDictionary?, _ multiPassStorageOut: UnsafeMutablePointer<VTMultiPassStorage?>) -> OSStatus
let kVTMultiPassStorageCreationOption_DoNotDelete: CFString

/*!
	@function	VTMultiPassStorageClose
	@abstract	Ensures that any pending data is written to the multipass storage file and closes the file.
	@discussion
		After this function is called, all methods on the multipass storage object will fail.
		It is still necessary to release the object by calling CFRelease.
*/
@available(iOS 8.0, *)
func VTMultiPassStorageClose(multiPassStorage: VTMultiPassStorage) -> OSStatus

/*!
	@typedef	VTSessionRef
	@abstract	A reference to either a Video Toolbox Decompression Session, 
				Compression Session or Pixel Transfer Session.
 */
typealias VTSession = CFTypeRef

/*!
	@typedef	VTSessionRef
	@abstract	A reference to either a Video Toolbox Decompression Session, 
				Compression Session or Pixel Transfer Session.
 */
typealias VTSessionRef = VTSession

/*!
	@function	VTSessionCopySupportedPropertyDictionary
	@abstract	Returns a dictionary enumerating all the supported properties of a video toolbox session.  
	@discussion	
		The keys of the returned dictionary are the supported property keys.
		The values are themselves dictionaries, each containing the following optional fields:
		<OL>
		<LI> the type of value, (kVTPropertyTypeKey)
		<LI> the read/write status of the property (kVTPropertyReadWriteStatusKey),
		<LI> whether the property is suitable for serialization (kVTPropertyShouldBeSerializedKey),
		<LI> a range or list of the supported values, if appropriate, and
		<LI> developer-level documentation for the property (kVTPropertyDocumentationKey).
		</OL>
		The caller must release the returned dictionary.
*/
@available(iOS 8.0, *)
func VTSessionCopySupportedPropertyDictionary(session: VTSession, _ supportedPropertyDictionaryOut: UnsafeMutablePointer<CFDictionary?>) -> OSStatus
@available(iOS 8.0, *)
let kVTPropertyTypeKey: CFString
@available(iOS 8.0, *)
let kVTPropertyType_Enumeration: CFString
@available(iOS 8.0, *)
let kVTPropertyType_Boolean: CFString
@available(iOS 8.0, *)
let kVTPropertyType_Number: CFString
@available(iOS 8.0, *)
let kVTPropertyReadWriteStatusKey: CFString
@available(iOS 8.0, *)
let kVTPropertyReadWriteStatus_ReadOnly: CFString
@available(iOS 8.0, *)
let kVTPropertyReadWriteStatus_ReadWrite: CFString
@available(iOS 8.0, *)
let kVTPropertyShouldBeSerializedKey: CFString
@available(iOS 8.0, *)
let kVTPropertySupportedValueMinimumKey: CFString
@available(iOS 8.0, *)
let kVTPropertySupportedValueMaximumKey: CFString
@available(iOS 8.0, *)
let kVTPropertySupportedValueListKey: CFString
@available(iOS 8.0, *)
let kVTPropertyDocumentationKey: CFString

/*!
	@function	VTSessionSetProperty
	@abstract	Sets a property on a video toolbox session.
	@discussion
		Setting a property value to NULL restores the default value.
*/
@available(iOS 8.0, *)
func VTSessionSetProperty(session: VTSession, _ propertyKey: CFString, _ propertyValue: AnyObject) -> OSStatus

/*!
	@function	VTSessionCopyProperty
	@abstract	Retrieves a property on a video toolbox session.  
	@discussion	
		The caller must release the retrieved property value.
		<BR>
		Note: for most types of property, the returned values should be considered immutable.
		In particular, for CFPropertyList types, sharing of mutable property value 
		objects between the client, session and codec should be avoided.
		However, some properties will be used for exchanging service objects that are inherently 
		mutable (eg, CVPixelBufferPool).
	@param	propertyKey
		The key for the property to retrieve.
	@param	allocator
		An allocator suitable for use when copying property values.
	@param propertyValueOut
		Points to a variable to receive the property value, which must be a CF-registered type --
		the caller may call CFGetTypeID() on it to identify which specific type.
		The caller must release the this property value.
	@result
		noErr if successful; kVTPropertyNotSupportedErr for unrecognized or unsupported properties.
*/
@available(iOS 8.0, *)
func VTSessionCopyProperty(session: VTSession, _ propertyKey: CFString, _ allocator: CFAllocator?, _ propertyValueOut: UnsafeMutablePointer<Void>) -> OSStatus

/*!
	@function	VTSessionSetProperties
	@abstract	Sets multiple properties at once.
	@discussion
		Sets the properties specified by keys in propertyDictionary to the corresponding values.
*/
@available(iOS 8.0, *)
func VTSessionSetProperties(session: VTSession, _ propertyDictionary: CFDictionary) -> OSStatus

/*!
	@function	VTSessionCopySerializableProperties
	@abstract	Retrieves the set of serializable property keys and their current values.
	@discussion	
		The serializable properties are those which can be saved and applied to a different session.
		The caller must release the returned dictionary.
*/
@available(iOS 8.0, *)
func VTSessionCopySerializableProperties(session: VTSession, _ allocator: CFAllocator?, _ dictionaryOut: UnsafeMutablePointer<CFDictionary?>) -> OSStatus

/*!
	@function VTCreateCGImageFromCVPixelBuffer
	@abstract Creates a CGImage using the provided CVPixelBuffer
	@param	pixelBuffer
		The pixelBuffer to be used as the image data source for the CGImage.
	@param	options
		no options currently.  pass NULL.
	@param	imageOut
		pointer to an address to receive the newly created CGImage.
	@discussion
		This routine creates a CGImage representation of the image data contained in
		the provided CVPixelBuffer.
		The source CVPixelBuffer may be retained for the lifetime of the CGImage.  Changes
		to the CVPixelBuffer after making this call (other than releasing it) will have 
		undefined results.
		Not all CVPixelBuffer pixel formats will support conversion into a CGImage compatible
		pixel format.
*/
@available(iOS 9.0, *)
func VTCreateCGImageFromCVPixelBuffer(pixelBuffer: CVPixelBuffer, _ options: CFDictionary?, _ imageOut: UnsafeMutablePointer<CGImage?>) -> OSStatus

/*!
	@function	VTCopyVideoEncoderList
	@abstract	Builds a list of available video encoders.
	@discussion
		The caller must CFRelease the returned list.
*/
@available(iOS 8.0, *)
func VTCopyVideoEncoderList(options: CFDictionary?, _ listOfVideoEncodersOut: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(iOS 8.0, *)
let kVTVideoEncoderList_CodecType: CFString
@available(iOS 8.0, *)
let kVTVideoEncoderList_EncoderID: CFString
@available(iOS 8.0, *)
let kVTVideoEncoderList_CodecName: CFString
@available(iOS 8.0, *)
let kVTVideoEncoderList_EncoderName: CFString
@available(iOS 8.0, *)
let kVTVideoEncoderList_DisplayName: CFString
