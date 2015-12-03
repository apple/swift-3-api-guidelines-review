
var COREAUDIOTYPES_VERSION: Int32 { get }
var CA_PREFER_FIXED_POINT: Int32 { get }
var kAudio_UnimplementedError: OSStatus { get }
var kAudio_FileNotFoundError: OSStatus { get }
var kAudio_FilePermissionError: OSStatus { get }
var kAudio_TooManyFilesOpenError: OSStatus { get }
var kAudio_BadFilePathError: OSStatus { get }
var kAudio_ParamError: OSStatus { get }
var kAudio_MemFullError: OSStatus { get }

/*!
    @struct         AudioValueRange
    @abstract       This structure holds a pair of numbers that represent a continuous range of
                    values.
    @field          mMinimum
                        The minimum value.
    @field          mMaximum
                        The maximum value.
*/
struct AudioValueRange {
  var mMinimum: Float64
  var mMaximum: Float64
  init()
  init(mMinimum: Float64, mMaximum: Float64)
}

/*!
    @struct         AudioValueTranslation
    @abstract       This stucture holds the buffers necessary for translation operations.
    @field          mInputData
                        The buffer containing the data to be translated.
    @field          mInputDataSize
                        The number of bytes in the buffer pointed at by mInputData.
    @field          mOutputData
                        The buffer to hold the result of the translation.
    @field          mOutputDataSize
                        The number of bytes in the buffer pointed at by mOutputData.
*/
struct AudioValueTranslation {
  var mInputData: UnsafeMutablePointer<Void>
  var mInputDataSize: UInt32
  var mOutputData: UnsafeMutablePointer<Void>
  var mOutputDataSize: UInt32
}

/*!
    @struct         AudioBuffer
    @abstract       A structure to hold a buffer of audio data.
    @field          mNumberChannels
                        The number of interleaved channels in the buffer.
    @field          mDataByteSize
                        The number of bytes in the buffer pointed at by mData.
    @field          mData
                        A pointer to the buffer of audio data.
*/
struct AudioBuffer {
  var mNumberChannels: UInt32
  var mDataByteSize: UInt32
  var mData: UnsafeMutablePointer<Void>
  init()
  init(mNumberChannels: UInt32, mDataByteSize: UInt32, mData: UnsafeMutablePointer<Void>)
}

extension AudioBuffer {
  /// Initialize an `AudioBuffer` from an
  /// `UnsafeMutableBufferPointer<Element>`.
  init<Element>(_ typedBuffer: UnsafeMutableBufferPointer<Element>, numberOfChannels: Int)
}

/*!
    @struct         AudioBufferList
    @abstract       A variable length array of AudioBuffer structures.
    @field          mNumberBuffers
                        The number of AudioBuffers in the mBuffers array.
    @field          mBuffers
                        A variable length array of AudioBuffers.
*/
struct AudioBufferList {
  var mNumberBuffers: UInt32
  var mBuffers: (AudioBuffer)
  init()
  init(mNumberBuffers: UInt32, mBuffers: (AudioBuffer))
}

extension AudioBufferList {
  /// - Returns: the size in bytes of an `AudioBufferList` that can hold up to
  ///   `maximumBuffers` `AudioBuffer`s.
  static func sizeInBytes(maximumBuffers maximumBuffers: Int) -> Int
  /// Allocate an `AudioBufferList` with a capacity for the specified number of
  /// `AudioBuffer`s.
  ///
  /// The `count` property of the new `AudioBufferList` is initialized to
  /// `maximumBuffers`.
  ///
  /// The memory should be freed with `free()`.
  static func allocate(maximumBuffers maximumBuffers: Int) -> UnsafeMutableAudioBufferListPointer
}
@available(*, deprecated, message="The concept of canonical formats is deprecated")
typealias AudioSampleType = Int16
@available(*, deprecated, message="The concept of canonical formats is deprecated")
typealias AudioUnitSampleType = Int32
var kAudioUnitSampleFractionBits: Int32 { get }

/*!
    @typedef        AudioFormatID
    @abstract       A four char code indicating the general kind of data in the stream.
*/
typealias AudioFormatID = UInt32

/*!
    @typedef        AudioFormatFlags
    @abstract       Flags that are specific to each format.
*/
typealias AudioFormatFlags = UInt32

/*!
    @struct         AudioStreamBasicDescription
    @abstract       This structure encapsulates all the information for describing the basic
                    format properties of a stream of audio data.
    @discussion     This structure is sufficient to describe any constant bit rate format that  has
                    channels that are the same size. Extensions are required for variable bit rate
                    data and for constant bit rate data where the channels have unequal sizes.
                    However, where applicable, the appropriate fields will be filled out correctly
                    for these kinds of formats (the extra data is provided via separate properties).
                    In all fields, a value of 0 indicates that the field is either unknown, not
                    applicable or otherwise is inapproprate for the format and should be ignored.
                    Note that 0 is still a valid value for most formats in the mFormatFlags field.

                    In audio data a frame is one sample across all channels. In non-interleaved
                    audio, the per frame fields identify one channel. In interleaved audio, the per
                    frame fields identify the set of n channels. In uncompressed audio, a Packet is
                    one frame, (mFramesPerPacket == 1). In compressed audio, a Packet is an
                    indivisible chunk of compressed data, for example an AAC packet will contain
                    1024 sample frames.
 
    @field          mSampleRate
                        The number of sample frames per second of the data in the stream.
    @field          mFormatID
                        The AudioFormatID indicating the general kind of data in the stream.
    @field          mFormatFlags
                        The AudioFormatFlags for the format indicated by mFormatID.
    @field          mBytesPerPacket
                        The number of bytes in a packet of data.
    @field          mFramesPerPacket
                        The number of sample frames in each packet of data.
    @field          mBytesPerFrame
                        The number of bytes in a single sample frame of data.
    @field          mChannelsPerFrame
                        The number of channels in each frame of data.
    @field          mBitsPerChannel
                        The number of bits of sample data for each channel in a frame of data.
    @field          mReserved
                        Pads the structure out to force an even 8 byte alignment.
*/
struct AudioStreamBasicDescription {
  var mSampleRate: Float64
  var mFormatID: AudioFormatID
  var mFormatFlags: AudioFormatFlags
  var mBytesPerPacket: UInt32
  var mFramesPerPacket: UInt32
  var mBytesPerFrame: UInt32
  var mChannelsPerFrame: UInt32
  var mBitsPerChannel: UInt32
  var mReserved: UInt32
  init()
  init(mSampleRate: Float64, mFormatID: AudioFormatID, mFormatFlags: AudioFormatFlags, mBytesPerPacket: UInt32, mFramesPerPacket: UInt32, mBytesPerFrame: UInt32, mChannelsPerFrame: UInt32, mBitsPerChannel: UInt32, mReserved: UInt32)
}

/*!
    @enum           AudioStreamBasicDescription Constants
    @constant       kAudioStreamAnyRate
                        The format can use any sample rate. Note that this constant can only appear
                        in listings of supported formats. It will never appear in a current format.
*/
let kAudioStreamAnyRate: Float64
var kAudioFormatLinearPCM: AudioFormatID { get }
var kAudioFormatAC3: AudioFormatID { get }
var kAudioFormat60958AC3: AudioFormatID { get }
var kAudioFormatAppleIMA4: AudioFormatID { get }
var kAudioFormatMPEG4AAC: AudioFormatID { get }
var kAudioFormatMPEG4CELP: AudioFormatID { get }
var kAudioFormatMPEG4HVXC: AudioFormatID { get }
var kAudioFormatMPEG4TwinVQ: AudioFormatID { get }
var kAudioFormatMACE3: AudioFormatID { get }
var kAudioFormatMACE6: AudioFormatID { get }
var kAudioFormatULaw: AudioFormatID { get }
var kAudioFormatALaw: AudioFormatID { get }
var kAudioFormatQDesign: AudioFormatID { get }
var kAudioFormatQDesign2: AudioFormatID { get }
var kAudioFormatQUALCOMM: AudioFormatID { get }
var kAudioFormatMPEGLayer1: AudioFormatID { get }
var kAudioFormatMPEGLayer2: AudioFormatID { get }
var kAudioFormatMPEGLayer3: AudioFormatID { get }
var kAudioFormatTimeCode: AudioFormatID { get }
var kAudioFormatMIDIStream: AudioFormatID { get }
var kAudioFormatParameterValueStream: AudioFormatID { get }
var kAudioFormatAppleLossless: AudioFormatID { get }
var kAudioFormatMPEG4AAC_HE: AudioFormatID { get }
var kAudioFormatMPEG4AAC_LD: AudioFormatID { get }
var kAudioFormatMPEG4AAC_ELD: AudioFormatID { get }
var kAudioFormatMPEG4AAC_ELD_SBR: AudioFormatID { get }
var kAudioFormatMPEG4AAC_ELD_V2: AudioFormatID { get }
var kAudioFormatMPEG4AAC_HE_V2: AudioFormatID { get }
var kAudioFormatMPEG4AAC_Spatial: AudioFormatID { get }
var kAudioFormatAMR: AudioFormatID { get }
var kAudioFormatAMR_WB: AudioFormatID { get }
var kAudioFormatAudible: AudioFormatID { get }
var kAudioFormatiLBC: AudioFormatID { get }
var kAudioFormatDVIIntelIMA: AudioFormatID { get }
var kAudioFormatMicrosoftGSM: AudioFormatID { get }
var kAudioFormatAES3: AudioFormatID { get }
var kAudioFormatEnhancedAC3: AudioFormatID { get }
var kAudioFormatFlagIsFloat: AudioFormatFlags { get }
var kAudioFormatFlagIsBigEndian: AudioFormatFlags { get }
var kAudioFormatFlagIsSignedInteger: AudioFormatFlags { get }
var kAudioFormatFlagIsPacked: AudioFormatFlags { get }
var kAudioFormatFlagIsAlignedHigh: AudioFormatFlags { get }
var kAudioFormatFlagIsNonInterleaved: AudioFormatFlags { get }
var kAudioFormatFlagIsNonMixable: AudioFormatFlags { get }
var kAudioFormatFlagsAreAllClear: AudioFormatFlags { get }
var kLinearPCMFormatFlagIsFloat: AudioFormatFlags { get }
var kLinearPCMFormatFlagIsBigEndian: AudioFormatFlags { get }
var kLinearPCMFormatFlagIsSignedInteger: AudioFormatFlags { get }
var kLinearPCMFormatFlagIsPacked: AudioFormatFlags { get }
var kLinearPCMFormatFlagIsAlignedHigh: AudioFormatFlags { get }
var kLinearPCMFormatFlagIsNonInterleaved: AudioFormatFlags { get }
var kLinearPCMFormatFlagIsNonMixable: AudioFormatFlags { get }
var kLinearPCMFormatFlagsSampleFractionShift: AudioFormatFlags { get }
var kLinearPCMFormatFlagsSampleFractionMask: AudioFormatFlags { get }
var kLinearPCMFormatFlagsAreAllClear: AudioFormatFlags { get }
var kAppleLosslessFormatFlag_16BitSourceData: AudioFormatFlags { get }
var kAppleLosslessFormatFlag_20BitSourceData: AudioFormatFlags { get }
var kAppleLosslessFormatFlag_24BitSourceData: AudioFormatFlags { get }
var kAppleLosslessFormatFlag_32BitSourceData: AudioFormatFlags { get }
var kAudioFormatFlagsNativeEndian: AudioFormatFlags { get }
@available(*, deprecated, message="The concept of canonical formats is deprecated")
var kAudioFormatFlagsCanonical: AudioFormatFlags { get }
@available(*, deprecated, message="The concept of canonical formats is deprecated")
var kAudioFormatFlagsAudioUnitCanonical: AudioFormatFlags { get }
var kAudioFormatFlagsNativeFloatPacked: AudioFormatFlags { get }

/*!
    @struct         AudioStreamPacketDescription
    @abstract       This structure describes the packet layout of a buffer of data where the size of
                    each packet may not be the same or where there is extraneous data between
                    packets.
    @field          mStartOffset
                        The number of bytes from the start of the buffer to the beginning of the
                        packet.
    @field          mVariableFramesInPacket
                        The number of sample frames of data in the packet. For formats with a
                        constant number of frames per packet, this field is set to 0.
    @field          mDataByteSize
                        The number of bytes in the packet.
*/
struct AudioStreamPacketDescription {
  var mStartOffset: Int64
  var mVariableFramesInPacket: UInt32
  var mDataByteSize: UInt32
  init()
  init(mStartOffset: Int64, mVariableFramesInPacket: UInt32, mDataByteSize: UInt32)
}

/*!
    @enum           SMPTE Time Types
    @abstract       Constants that describe the type of SMPTE time.
    @constant       kSMPTETimeType24
                        24 Frame
    @constant       kSMPTETimeType25
                        25 Frame
    @constant       kSMPTETimeType30Drop
                        30 Drop Frame
    @constant       kSMPTETimeType30
                        30 Frame
    @constant       kSMPTETimeType2997
                        29.97 Frame
    @constant       kSMPTETimeType2997Drop
                        29.97 Drop Frame
    @constant       kSMPTETimeType60
                        60 Frame
    @constant       kSMPTETimeType5994
                        59.94 Frame
    @constant       kSMPTETimeType60Drop
                        60 Drop Frame
    @constant       kSMPTETimeType5994Drop
                        59.94 Drop Frame
    @constant       kSMPTETimeType50
                        50 Frame
    @constant       kSMPTETimeType2398
                        23.98 Frame
*/
enum SMPTETimeType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Type24
  case Type25
  case Type30Drop
  case Type30
  case Type2997
  case Type2997Drop
  case Type60
  case Type5994
  case Type60Drop
  case Type5994Drop
  case Type50
  case Type2398
}

/*!
    @enum           SMPTE State Flags
    @abstract       Flags that describe the SMPTE time state.
    @constant       kSMPTETimeValid
                        The full time is valid.
    @constant       kSMPTETimeRunning
                        Time is running.
*/
struct SMPTETimeFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Unknown: SMPTETimeFlags { get }
  static var Valid: SMPTETimeFlags { get }
  static var Running: SMPTETimeFlags { get }
}

/*!
    @struct         SMPTETime
    @abstract       A structure for holding a SMPTE time.
    @field          mSubframes
                        The number of subframes in the full message.
    @field          mSubframeDivisor
                        The number of subframes per frame (typically 80).
    @field          mCounter
                        The total number of messages received.
    @field          mType
                        The kind of SMPTE time using the SMPTE time type constants.
    @field          mFlags
                        A set of flags that indicate the SMPTE state.
    @field          mHours
                        The number of hours in the full message.
    @field          mMinutes
                        The number of minutes in the full message.
    @field          mSeconds
                        The number of seconds in the full message.
    @field          mFrames
                        The number of frames in the full message.
*/
struct SMPTETime {
  var mSubframes: Int16
  var mSubframeDivisor: Int16
  var mCounter: UInt32
  var mType: SMPTETimeType
  var mFlags: SMPTETimeFlags
  var mHours: Int16
  var mMinutes: Int16
  var mSeconds: Int16
  var mFrames: Int16
  init()
  init(mSubframes: Int16, mSubframeDivisor: Int16, mCounter: UInt32, mType: SMPTETimeType, mFlags: SMPTETimeFlags, mHours: Int16, mMinutes: Int16, mSeconds: Int16, mFrames: Int16)
}

/*!
    @enum           AudioTimeStamp Flags
    @abstract       The flags that indicate which fields in an AudioTimeStamp structure are valid.
    @constant       kAudioTimeStampSampleTimeValid
                        The sample frame time is valid.
    @constant       kAudioTimeStampHostTimeValid
                        The host time is valid.
    @constant       kAudioTimeStampRateScalarValid
                        The rate scalar is valid.
    @constant       kAudioTimeStampWordClockTimeValid
                        The word clock time is valid.
    @constant       kAudioTimeStampSMPTETimeValid
                        The SMPTE time is valid.
    @constant       kAudioTimeStampSampleHostTimeValid
                        The sample frame time and the host time are valid.
*/
struct AudioTimeStampFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var NothingValid: AudioTimeStampFlags { get }
  static var SampleTimeValid: AudioTimeStampFlags { get }
  static var HostTimeValid: AudioTimeStampFlags { get }
  static var RateScalarValid: AudioTimeStampFlags { get }
  static var WordClockTimeValid: AudioTimeStampFlags { get }
  static var SMPTETimeValid: AudioTimeStampFlags { get }
  static var SampleHostTimeValid: AudioTimeStampFlags { get }
}

/*!
    @struct         AudioTimeStamp
    @abstract       A structure that holds different representations of the same point in time.
    @field          mSampleTime
                        The absolute sample frame time.
    @field          mHostTime
                        The host machine's time base, mach_absolute_time.
    @field          mRateScalar
                        The ratio of actual host ticks per sample frame to the nominal host ticks
                        per sample frame.
    @field          mWordClockTime
                        The word clock time.
    @field          mSMPTETime
                        The SMPTE time.
    @field          mFlags
                        A set of flags indicating which representations of the time are valid.
    @field          mReserved
                        Pads the structure out to force an even 8 byte alignment.
*/
struct AudioTimeStamp {
  var mSampleTime: Float64
  var mHostTime: UInt64
  var mRateScalar: Float64
  var mWordClockTime: UInt64
  var mSMPTETime: SMPTETime
  var mFlags: AudioTimeStampFlags
  var mReserved: UInt32
  init()
  init(mSampleTime: Float64, mHostTime: UInt64, mRateScalar: Float64, mWordClockTime: UInt64, mSMPTETime: SMPTETime, mFlags: AudioTimeStampFlags, mReserved: UInt32)
}

/*!
    @struct         AudioClassDescription
    @abstract       This structure is used to describe codecs installed on the system.
    @field          mType
                        The four char code codec type.
    @field          mSubType
                        The four char code codec subtype.
    @field          mManufacturer
                        The four char code codec manufacturer.
*/
struct AudioClassDescription {
  var mType: OSType
  var mSubType: OSType
  var mManufacturer: OSType
  init()
  init(mType: OSType, mSubType: OSType, mManufacturer: OSType)
}

/*!
    @typedef        AudioChannelLabel
    @abstract       A tag identifying how the channel is to be used.
*/
typealias AudioChannelLabel = UInt32

/*!
    @typedef        AudioChannelLayoutTag
    @abstract       A tag identifying a particular pre-defined channel layout.
*/
typealias AudioChannelLayoutTag = UInt32
var kAudioChannelLabel_Unknown: AudioChannelLabel { get }
var kAudioChannelLabel_Unused: AudioChannelLabel { get }
var kAudioChannelLabel_UseCoordinates: AudioChannelLabel { get }
var kAudioChannelLabel_Left: AudioChannelLabel { get }
var kAudioChannelLabel_Right: AudioChannelLabel { get }
var kAudioChannelLabel_Center: AudioChannelLabel { get }
var kAudioChannelLabel_LFEScreen: AudioChannelLabel { get }
var kAudioChannelLabel_LeftSurround: AudioChannelLabel { get }
var kAudioChannelLabel_RightSurround: AudioChannelLabel { get }
var kAudioChannelLabel_LeftCenter: AudioChannelLabel { get }
var kAudioChannelLabel_RightCenter: AudioChannelLabel { get }
var kAudioChannelLabel_CenterSurround: AudioChannelLabel { get }
var kAudioChannelLabel_LeftSurroundDirect: AudioChannelLabel { get }
var kAudioChannelLabel_RightSurroundDirect: AudioChannelLabel { get }
var kAudioChannelLabel_TopCenterSurround: AudioChannelLabel { get }
var kAudioChannelLabel_VerticalHeightLeft: AudioChannelLabel { get }
var kAudioChannelLabel_VerticalHeightCenter: AudioChannelLabel { get }
var kAudioChannelLabel_VerticalHeightRight: AudioChannelLabel { get }
var kAudioChannelLabel_TopBackLeft: AudioChannelLabel { get }
var kAudioChannelLabel_TopBackCenter: AudioChannelLabel { get }
var kAudioChannelLabel_TopBackRight: AudioChannelLabel { get }
var kAudioChannelLabel_RearSurroundLeft: AudioChannelLabel { get }
var kAudioChannelLabel_RearSurroundRight: AudioChannelLabel { get }
var kAudioChannelLabel_LeftWide: AudioChannelLabel { get }
var kAudioChannelLabel_RightWide: AudioChannelLabel { get }
var kAudioChannelLabel_LFE2: AudioChannelLabel { get }
var kAudioChannelLabel_LeftTotal: AudioChannelLabel { get }
var kAudioChannelLabel_RightTotal: AudioChannelLabel { get }
var kAudioChannelLabel_HearingImpaired: AudioChannelLabel { get }
var kAudioChannelLabel_Narration: AudioChannelLabel { get }
var kAudioChannelLabel_Mono: AudioChannelLabel { get }
var kAudioChannelLabel_DialogCentricMix: AudioChannelLabel { get }
var kAudioChannelLabel_CenterSurroundDirect: AudioChannelLabel { get }
var kAudioChannelLabel_Haptic: AudioChannelLabel { get }
var kAudioChannelLabel_Ambisonic_W: AudioChannelLabel { get }
var kAudioChannelLabel_Ambisonic_X: AudioChannelLabel { get }
var kAudioChannelLabel_Ambisonic_Y: AudioChannelLabel { get }
var kAudioChannelLabel_Ambisonic_Z: AudioChannelLabel { get }
var kAudioChannelLabel_MS_Mid: AudioChannelLabel { get }
var kAudioChannelLabel_MS_Side: AudioChannelLabel { get }
var kAudioChannelLabel_XY_X: AudioChannelLabel { get }
var kAudioChannelLabel_XY_Y: AudioChannelLabel { get }
var kAudioChannelLabel_HeadphonesLeft: AudioChannelLabel { get }
var kAudioChannelLabel_HeadphonesRight: AudioChannelLabel { get }
var kAudioChannelLabel_ClickTrack: AudioChannelLabel { get }
var kAudioChannelLabel_ForeignLanguage: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_0: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_1: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_2: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_3: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_4: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_5: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_6: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_7: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_8: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_9: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_10: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_11: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_12: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_13: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_14: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_15: AudioChannelLabel { get }
var kAudioChannelLabel_Discrete_65535: AudioChannelLabel { get }

/*!
    @enum           Channel Bitmap Constants
    @abstract       These constants are for use in the mChannelBitmap field of an
                    AudioChannelLayout structure.
*/
struct AudioChannelBitmap : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Bit_Left: AudioChannelBitmap { get }
  static var Bit_Right: AudioChannelBitmap { get }
  static var Bit_Center: AudioChannelBitmap { get }
  static var Bit_LFEScreen: AudioChannelBitmap { get }
  static var Bit_LeftSurround: AudioChannelBitmap { get }
  static var Bit_RightSurround: AudioChannelBitmap { get }
  static var Bit_LeftCenter: AudioChannelBitmap { get }
  static var Bit_RightCenter: AudioChannelBitmap { get }
  static var Bit_CenterSurround: AudioChannelBitmap { get }
  static var Bit_LeftSurroundDirect: AudioChannelBitmap { get }
  static var Bit_RightSurroundDirect: AudioChannelBitmap { get }
  static var Bit_TopCenterSurround: AudioChannelBitmap { get }
  static var Bit_VerticalHeightLeft: AudioChannelBitmap { get }
  static var Bit_VerticalHeightCenter: AudioChannelBitmap { get }
  static var Bit_VerticalHeightRight: AudioChannelBitmap { get }
  static var Bit_TopBackLeft: AudioChannelBitmap { get }
  static var Bit_TopBackCenter: AudioChannelBitmap { get }
  static var Bit_TopBackRight: AudioChannelBitmap { get }
}

/*!
    @enum           Channel Coordinate Flags
    @abstract       These constants are used in the mChannelFlags field of an
                    AudioChannelDescription structure.
    @constant       kAudioChannelFlags_RectangularCoordinates
                        The channel is specified by the cartesioan coordinates of the speaker
                        position. This flag is mutally exclusive with
                        kAudioChannelFlags_SphericalCoordinates.
    @constant       kAudioChannelFlags_SphericalCoordinates
                        The channel is specified by the spherical coordinates of the speaker
                        position. This flag is mutally exclusive with
                        kAudioChannelFlags_RectangularCoordinates.
    @constant       kAudioChannelFlags_Meters
                        Set to indicate the units are in meters, clear to indicate the units are
                        relative to the unit cube or unit sphere.
*/
struct AudioChannelFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var AllOff: AudioChannelFlags { get }
  static var RectangularCoordinates: AudioChannelFlags { get }
  static var SphericalCoordinates: AudioChannelFlags { get }
  static var Meters: AudioChannelFlags { get }
}

/*!
    @enum           Channel Coordinate Index Constants
    @abstract       Constants for indexing the mCoordinates array in an AudioChannelDescription
                    structure.
    @constant       kAudioChannelCoordinates_LeftRight
                        For rectangulare coordinates, negative is left and positive is right.
    @constant       kAudioChannelCoordinates_BackFront
                        For rectangulare coordinates, negative is back and positive is front.
    @constant       kAudioChannelCoordinates_DownUp
                        For rectangulare coordinates, negative is below ground level, 0 is ground
                        level, and positive is above ground level.
    @constant       kAudioChannelCoordinates_Azimuth
                        For spherical coordinates, 0 is front center, positive is right, negative is
                        left. This is measured in degrees.
    @constant       kAudioChannelCoordinates_Elevation
                        For spherical coordinates, +90 is zenith, 0 is horizontal, -90 is nadir.
                        This is measured in degrees.
    @constant       kAudioChannelCoordinates_Distance
                        For spherical coordinates, the units are described by flags.
*/
enum AudioChannelCoordinateIndex : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Coordinates_LeftRight
  case Coordinates_BackFront
  case Coordinates_DownUp
  static var Coordinates_Azimuth: AudioChannelCoordinateIndex { get }
  static var Coordinates_Elevation: AudioChannelCoordinateIndex { get }
  static var Coordinates_Distance: AudioChannelCoordinateIndex { get }
}
var kAudioChannelLayoutTag_UseChannelDescriptions: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_UseChannelBitmap: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Mono: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Stereo: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_StereoHeadphones: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MatrixStereo: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MidSide: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_XY: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Binaural: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Ambisonic_B_Format: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Quadraphonic: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Pentagonal: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Hexagonal: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Octagonal: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Cube: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_1_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_2_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_3_0_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_3_0_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_4_0_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_4_0_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_5_0_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_5_0_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_5_0_C: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_5_0_D: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_5_1_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_5_1_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_5_1_C: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_5_1_D: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_6_1_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_7_1_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_7_1_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_MPEG_7_1_C: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Emagic_Default_7_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_SMPTE_DTV: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_ITU_1_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_ITU_2_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_ITU_2_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_ITU_2_2: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_ITU_3_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_ITU_3_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_ITU_3_2: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_ITU_3_2_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_ITU_3_4_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_2: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_3: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_4: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_5: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_6: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_7: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_8: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_9: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_10: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_11: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_12: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_13: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_14: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_15: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_16: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_17: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_18: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_19: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DVD_20: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_4: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_5: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_6: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_8: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_5_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_6_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_7_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_7_0_Front: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_5_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_6_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_7_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AudioUnit_7_1_Front: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_3_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_Quadraphonic: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_4_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_5_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_5_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_6_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_6_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_7_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_7_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_7_1_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_7_1_C: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AAC_Octagonal: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_TMH_10_2_std: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_TMH_10_2_full: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AC3_1_0_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AC3_3_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AC3_3_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AC3_3_0_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AC3_2_1_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_AC3_3_1_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC_6_0_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC_7_0_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_6_1_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_6_1_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_6_1_C: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_7_1_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_7_1_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_7_1_C: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_7_1_D: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_7_1_E: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_7_1_F: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_7_1_G: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_EAC3_7_1_H: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_3_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_4_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_6_0_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_6_0_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_6_0_C: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_6_1_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_6_1_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_6_1_C: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_7_0: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_7_1: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_8_0_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_8_0_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_8_1_A: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_8_1_B: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DTS_6_1_D: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_DiscreteInOrder: AudioChannelLayoutTag { get }
var kAudioChannelLayoutTag_Unknown: AudioChannelLayoutTag { get }

/*!
    @struct         AudioChannelDescription
    @abstract       This structure describes a single channel.
    @field          mChannelLabel
                        The AudioChannelLabel that describes the channel.
    @field          mChannelFlags
                        Flags that control the interpretation of mCoordinates.
    @field          mCoordinates
                        An ordered triple that specifies a precise speaker location.
*/
struct AudioChannelDescription {
  var mChannelLabel: AudioChannelLabel
  var mChannelFlags: AudioChannelFlags
  var mCoordinates: (Float32, Float32, Float32)
  init()
  init(mChannelLabel: AudioChannelLabel, mChannelFlags: AudioChannelFlags, mCoordinates: (Float32, Float32, Float32))
}

/*!
    @struct         AudioChannelLayout
    @abstract       This structure is used to specify channel layouts in files and hardware.
    @field          mChannelLayoutTag
                        The AudioChannelLayoutTag that indicates the layout.
    @field          mChannelBitmap
                        If mChannelLayoutTag is set to kAudioChannelLayoutTag_UseChannelBitmap, this
                        field is the channel usage bitmap.
    @field          mNumberChannelDescriptions
                        The number of items in the mChannelDescriptions array.
    @field          mChannelDescriptions
                        A variable length array of AudioChannelDescriptions that describe the
                        layout.
*/
struct AudioChannelLayout {
  var mChannelLayoutTag: AudioChannelLayoutTag
  var mChannelBitmap: AudioChannelBitmap
  var mNumberChannelDescriptions: UInt32
  var mChannelDescriptions: (AudioChannelDescription)
  init()
  init(mChannelLayoutTag: AudioChannelLayoutTag, mChannelBitmap: AudioChannelBitmap, mNumberChannelDescriptions: UInt32, mChannelDescriptions: (AudioChannelDescription))
}
func AudioChannelLayoutTag_GetNumberOfChannels(inLayoutTag: AudioChannelLayoutTag) -> UInt32

/*! @enum           MPEG-4 Audio Object IDs
    @deprecated     in version 10.5

    @abstract       Constants that describe the various kinds of MPEG-4 audio data.
    @discussion     These constants are used in the flags field of an AudioStreamBasicDescription
                    that describes an MPEG-4 audio stream.
*/
enum MPEG4ObjectID : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AAC_Main
  case AAC_LC
  case AAC_SSR
  case AAC_LTP
  case AAC_SBR
  case AAC_Scalable
  case TwinVQ
  case CELP
  case HVXC
}
