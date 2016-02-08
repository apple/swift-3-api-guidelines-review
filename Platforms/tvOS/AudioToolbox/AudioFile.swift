
typealias AudioFileTypeID = UInt32
var kAudioFileAIFFType: AudioFileTypeID { get }
var kAudioFileAIFCType: AudioFileTypeID { get }
var kAudioFileWAVEType: AudioFileTypeID { get }
var kAudioFileSoundDesigner2Type: AudioFileTypeID { get }
var kAudioFileNextType: AudioFileTypeID { get }
var kAudioFileMP3Type: AudioFileTypeID { get }
var kAudioFileMP2Type: AudioFileTypeID { get }
var kAudioFileMP1Type: AudioFileTypeID { get }
var kAudioFileAC3Type: AudioFileTypeID { get }
var kAudioFileAAC_ADTSType: AudioFileTypeID { get }
var kAudioFileMPEG4Type: AudioFileTypeID { get }
var kAudioFileM4AType: AudioFileTypeID { get }
var kAudioFileM4BType: AudioFileTypeID { get }
var kAudioFileCAFType: AudioFileTypeID { get }
var kAudioFile3GPType: AudioFileTypeID { get }
var kAudioFile3GP2Type: AudioFileTypeID { get }
var kAudioFileAMRType: AudioFileTypeID { get }
var kAudioFileUnspecifiedError: OSStatus { get }
var kAudioFileUnsupportedFileTypeError: OSStatus { get }
var kAudioFileUnsupportedDataFormatError: OSStatus { get }
var kAudioFileUnsupportedPropertyError: OSStatus { get }
var kAudioFileBadPropertySizeError: OSStatus { get }
var kAudioFilePermissionsError: OSStatus { get }
var kAudioFileNotOptimizedError: OSStatus { get }
var kAudioFileInvalidChunkError: OSStatus { get }
var kAudioFileDoesNotAllow64BitDataSizeError: OSStatus { get }
var kAudioFileInvalidPacketOffsetError: OSStatus { get }
var kAudioFileInvalidFileError: OSStatus { get }
var kAudioFileOperationNotSupportedError: OSStatus { get }
var kAudioFileNotOpenError: OSStatus { get }
var kAudioFileEndOfFileError: OSStatus { get }
var kAudioFilePositionError: OSStatus { get }
var kAudioFileFileNotFoundError: OSStatus { get }
struct AudioFileFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var eraseFile: AudioFileFlags { get }
  static var dontPageAlignAudioData: AudioFileFlags { get }
}
enum AudioFilePermissions : Int8 {
  init?(rawValue: Int8)
  var rawValue: Int8 { get }
  case readPermission
  case writePermission
  case readWritePermission
}
typealias AudioFileID = COpaquePointer
typealias AudioFilePropertyID = UInt32
var kAudioFileLoopDirection_NoLooping: UInt32 { get }
var kAudioFileLoopDirection_Forward: UInt32 { get }
var kAudioFileLoopDirection_ForwardAndBackward: UInt32 { get }
var kAudioFileLoopDirection_Backward: UInt32 { get }
struct AudioFile_SMPTE_Time {
  var mHours: Int8
  var mMinutes: UInt8
  var mSeconds: UInt8
  var mFrames: UInt8
  var mSubFrameSampleOffset: UInt32
  init()
  init(mHours: Int8, mMinutes: UInt8, mSeconds: UInt8, mFrames: UInt8, mSubFrameSampleOffset: UInt32)
}
var kAudioFileMarkerType_Generic: UInt32 { get }
struct AudioFileMarker {
  var mFramePosition: Float64
  var mName: Unmanaged<CFString>?
  var mMarkerID: Int32
  var mSMPTETime: AudioFile_SMPTE_Time
  var mType: UInt32
  var mReserved: UInt16
  var mChannel: UInt16
  init()
  init(mFramePosition: Float64, mName: Unmanaged<CFString>?, mMarkerID: Int32, mSMPTETime: AudioFile_SMPTE_Time, mType: UInt32, mReserved: UInt16, mChannel: UInt16)
}
struct AudioFileMarkerList {
  var mSMPTE_TimeType: UInt32
  var mNumberMarkers: UInt32
  var mMarkers: (AudioFileMarker)
  init()
  init(mSMPTE_TimeType: UInt32, mNumberMarkers: UInt32, mMarkers: (AudioFileMarker))
}
func NumBytesToNumAudioFileMarkers(inNumBytes: Int) -> Int
func NumAudioFileMarkersToNumBytes(inNumMarkers: Int) -> Int
struct AudioFileRegionFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var loopEnable: AudioFileRegionFlags { get }
  static var playForward: AudioFileRegionFlags { get }
  static var playBackward: AudioFileRegionFlags { get }
}
struct AudioFileRegion {
  var mRegionID: UInt32
  var mName: Unmanaged<CFString>
  var mFlags: AudioFileRegionFlags
  var mNumberMarkers: UInt32
  var mMarkers: (AudioFileMarker)
}
struct AudioFileRegionList {
  var mSMPTE_TimeType: UInt32
  var mNumberRegions: UInt32
  var mRegions: (AudioFileRegion)
  init()
  init(mSMPTE_TimeType: UInt32, mNumberRegions: UInt32, mRegions: (AudioFileRegion))
}
func NextAudioFileRegion(inAFRegionPtr: UnsafePointer<AudioFileRegion>) -> UnsafeMutablePointer<AudioFileRegion>
struct AudioFramePacketTranslation {
  var mFrame: Int64
  var mPacket: Int64
  var mFrameOffsetInPacket: UInt32
  init()
  init(mFrame: Int64, mPacket: Int64, mFrameOffsetInPacket: UInt32)
}
struct AudioBytePacketTranslationFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var bytePacketTranslationFlag_IsEstimate: AudioBytePacketTranslationFlags { get }
}
struct AudioBytePacketTranslation {
  var mByte: Int64
  var mPacket: Int64
  var mByteOffsetInPacket: UInt32
  var mFlags: AudioBytePacketTranslationFlags
  init()
  init(mByte: Int64, mPacket: Int64, mByteOffsetInPacket: UInt32, mFlags: AudioBytePacketTranslationFlags)
}
struct AudioFilePacketTableInfo {
  var mNumberValidFrames: Int64
  var mPrimingFrames: Int32
  var mRemainderFrames: Int32
  init()
  init(mNumberValidFrames: Int64, mPrimingFrames: Int32, mRemainderFrames: Int32)
}
var kAFInfoDictionary_Artist: String { get }
var kAFInfoDictionary_Album: String { get }
var kAFInfoDictionary_Tempo: String { get }
var kAFInfoDictionary_KeySignature: String { get }
var kAFInfoDictionary_TimeSignature: String { get }
var kAFInfoDictionary_TrackNumber: String { get }
var kAFInfoDictionary_Year: String { get }
var kAFInfoDictionary_Composer: String { get }
var kAFInfoDictionary_Lyricist: String { get }
var kAFInfoDictionary_Genre: String { get }
var kAFInfoDictionary_Title: String { get }
var kAFInfoDictionary_RecordedDate: String { get }
var kAFInfoDictionary_Comments: String { get }
var kAFInfoDictionary_Copyright: String { get }
var kAFInfoDictionary_SourceEncoder: String { get }
var kAFInfoDictionary_EncodingApplication: String { get }
var kAFInfoDictionary_NominalBitRate: String { get }
var kAFInfoDictionary_ChannelLayout: String { get }
var kAFInfoDictionary_ApproximateDurationInSeconds: String { get }
var kAFInfoDictionary_SourceBitDepth: String { get }
var kAFInfoDictionary_ISRC: String { get }
var kAFInfoDictionary_SubTitle: String { get }
@available(tvOS 2.0, *)
func AudioFileCreateWithURL(inFileRef: CFURL, _ inFileType: AudioFileTypeID, _ inFormat: UnsafePointer<AudioStreamBasicDescription>, _ inFlags: AudioFileFlags, _ outAudioFile: UnsafeMutablePointer<AudioFileID>) -> OSStatus
@available(tvOS 2.0, *)
func AudioFileOpenURL(inFileRef: CFURL, _ inPermissions: AudioFilePermissions, _ inFileTypeHint: AudioFileTypeID, _ outAudioFile: UnsafeMutablePointer<AudioFileID>) -> OSStatus
typealias AudioFile_ReadProc = @convention(c) (UnsafeMutablePointer<Void>, Int64, UInt32, UnsafeMutablePointer<Void>, UnsafeMutablePointer<UInt32>) -> OSStatus
typealias AudioFile_WriteProc = @convention(c) (UnsafeMutablePointer<Void>, Int64, UInt32, UnsafePointer<Void>, UnsafeMutablePointer<UInt32>) -> OSStatus
typealias AudioFile_GetSizeProc = @convention(c) (UnsafeMutablePointer<Void>) -> Int64
typealias AudioFile_SetSizeProc = @convention(c) (UnsafeMutablePointer<Void>, Int64) -> OSStatus
@available(tvOS 2.0, *)
func AudioFileInitializeWithCallbacks(inClientData: UnsafeMutablePointer<Void>, _ inReadFunc: AudioFile_ReadProc, _ inWriteFunc: AudioFile_WriteProc, _ inGetSizeFunc: AudioFile_GetSizeProc, _ inSetSizeFunc: AudioFile_SetSizeProc, _ inFileType: AudioFileTypeID, _ inFormat: UnsafePointer<AudioStreamBasicDescription>, _ inFlags: AudioFileFlags, _ outAudioFile: UnsafeMutablePointer<AudioFileID>) -> OSStatus
@available(tvOS 2.0, *)
func AudioFileOpenWithCallbacks(inClientData: UnsafeMutablePointer<Void>, _ inReadFunc: AudioFile_ReadProc, _ inWriteFunc: AudioFile_WriteProc?, _ inGetSizeFunc: AudioFile_GetSizeProc, _ inSetSizeFunc: AudioFile_SetSizeProc?, _ inFileTypeHint: AudioFileTypeID, _ outAudioFile: UnsafeMutablePointer<AudioFileID>) -> OSStatus
@available(tvOS 2.0, *)
func AudioFileClose(inAudioFile: AudioFileID) -> OSStatus
@available(tvOS 2.0, *)
func AudioFileOptimize(inAudioFile: AudioFileID) -> OSStatus
@available(tvOS 2.0, *)
func AudioFileReadBytes(inAudioFile: AudioFileID, _ inUseCache: Bool, _ inStartingByte: Int64, _ ioNumBytes: UnsafeMutablePointer<UInt32>, _ outBuffer: UnsafeMutablePointer<Void>) -> OSStatus
@available(tvOS 2.0, *)
func AudioFileWriteBytes(inAudioFile: AudioFileID, _ inUseCache: Bool, _ inStartingByte: Int64, _ ioNumBytes: UnsafeMutablePointer<UInt32>, _ inBuffer: UnsafePointer<Void>) -> OSStatus
@available(tvOS 2.2, *)
func AudioFileReadPacketData(inAudioFile: AudioFileID, _ inUseCache: Bool, _ ioNumBytes: UnsafeMutablePointer<UInt32>, _ outPacketDescriptions: UnsafeMutablePointer<AudioStreamPacketDescription>, _ inStartingPacket: Int64, _ ioNumPackets: UnsafeMutablePointer<UInt32>, _ outBuffer: UnsafeMutablePointer<Void>) -> OSStatus
@available(tvOS, introduced=2.0, deprecated=8.0)
func AudioFileReadPackets(inAudioFile: AudioFileID, _ inUseCache: Bool, _ outNumBytes: UnsafeMutablePointer<UInt32>, _ outPacketDescriptions: UnsafeMutablePointer<AudioStreamPacketDescription>, _ inStartingPacket: Int64, _ ioNumPackets: UnsafeMutablePointer<UInt32>, _ outBuffer: UnsafeMutablePointer<Void>) -> OSStatus
@available(tvOS 2.0, *)
func AudioFileWritePackets(inAudioFile: AudioFileID, _ inUseCache: Bool, _ inNumBytes: UInt32, _ inPacketDescriptions: UnsafePointer<AudioStreamPacketDescription>, _ inStartingPacket: Int64, _ ioNumPackets: UnsafeMutablePointer<UInt32>, _ inBuffer: UnsafePointer<Void>) -> OSStatus
@available(tvOS 2.0, *)
func AudioFileCountUserData(inAudioFile: AudioFileID, _ inUserDataID: UInt32, _ outNumberItems: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(tvOS 2.0, *)
func AudioFileGetUserDataSize(inAudioFile: AudioFileID, _ inUserDataID: UInt32, _ inIndex: UInt32, _ outUserDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(tvOS 2.0, *)
func AudioFileGetUserData(inAudioFile: AudioFileID, _ inUserDataID: UInt32, _ inIndex: UInt32, _ ioUserDataSize: UnsafeMutablePointer<UInt32>, _ outUserData: UnsafeMutablePointer<Void>) -> OSStatus
@available(tvOS 2.0, *)
func AudioFileSetUserData(inAudioFile: AudioFileID, _ inUserDataID: UInt32, _ inIndex: UInt32, _ inUserDataSize: UInt32, _ inUserData: UnsafePointer<Void>) -> OSStatus
@available(tvOS 2.0, *)
func AudioFileRemoveUserData(inAudioFile: AudioFileID, _ inUserDataID: UInt32, _ inIndex: UInt32) -> OSStatus
var kAudioFilePropertyFileFormat: AudioFilePropertyID { get }
var kAudioFilePropertyDataFormat: AudioFilePropertyID { get }
var kAudioFilePropertyIsOptimized: AudioFilePropertyID { get }
var kAudioFilePropertyMagicCookieData: AudioFilePropertyID { get }
var kAudioFilePropertyAudioDataByteCount: AudioFilePropertyID { get }
var kAudioFilePropertyAudioDataPacketCount: AudioFilePropertyID { get }
var kAudioFilePropertyMaximumPacketSize: AudioFilePropertyID { get }
var kAudioFilePropertyDataOffset: AudioFilePropertyID { get }
var kAudioFilePropertyChannelLayout: AudioFilePropertyID { get }
var kAudioFilePropertyDeferSizeUpdates: AudioFilePropertyID { get }
var kAudioFilePropertyDataFormatName: AudioFilePropertyID { get }
var kAudioFilePropertyMarkerList: AudioFilePropertyID { get }
var kAudioFilePropertyRegionList: AudioFilePropertyID { get }
var kAudioFilePropertyPacketToFrame: AudioFilePropertyID { get }
var kAudioFilePropertyFrameToPacket: AudioFilePropertyID { get }
var kAudioFilePropertyPacketToByte: AudioFilePropertyID { get }
var kAudioFilePropertyByteToPacket: AudioFilePropertyID { get }
var kAudioFilePropertyChunkIDs: AudioFilePropertyID { get }
var kAudioFilePropertyInfoDictionary: AudioFilePropertyID { get }
var kAudioFilePropertyPacketTableInfo: AudioFilePropertyID { get }
var kAudioFilePropertyFormatList: AudioFilePropertyID { get }
var kAudioFilePropertyPacketSizeUpperBound: AudioFilePropertyID { get }
var kAudioFilePropertyReserveDuration: AudioFilePropertyID { get }
var kAudioFilePropertyEstimatedDuration: AudioFilePropertyID { get }
var kAudioFilePropertyBitRate: AudioFilePropertyID { get }
var kAudioFilePropertyID3Tag: AudioFilePropertyID { get }
var kAudioFilePropertySourceBitDepth: AudioFilePropertyID { get }
var kAudioFilePropertyAlbumArtwork: AudioFilePropertyID { get }
var kAudioFilePropertyAudioTrackCount: AudioFilePropertyID { get }
var kAudioFilePropertyUseAudioTrack: AudioFilePropertyID { get }
@available(tvOS 2.0, *)
func AudioFileGetPropertyInfo(inAudioFile: AudioFileID, _ inPropertyID: AudioFilePropertyID, _ outDataSize: UnsafeMutablePointer<UInt32>, _ isWritable: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(tvOS 2.0, *)
func AudioFileGetProperty(inAudioFile: AudioFileID, _ inPropertyID: AudioFilePropertyID, _ ioDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutablePointer<Void>) -> OSStatus
@available(tvOS 2.0, *)
func AudioFileSetProperty(inAudioFile: AudioFileID, _ inPropertyID: AudioFilePropertyID, _ inDataSize: UInt32, _ inPropertyData: UnsafePointer<Void>) -> OSStatus
var kAudioFileGlobalInfo_ReadableTypes: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_WritableTypes: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_FileTypeName: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_AvailableStreamDescriptionsForFormat: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_AvailableFormatIDs: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_AllExtensions: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_AllHFSTypeCodes: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_AllUTIs: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_AllMIMETypes: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_ExtensionsForType: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_HFSTypeCodesForType: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_UTIsForType: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_MIMETypesForType: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_TypesForMIMEType: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_TypesForUTI: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_TypesForHFSTypeCode: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_TypesForExtension: AudioFilePropertyID { get }
struct AudioFileTypeAndFormatID {
  var mFileType: AudioFileTypeID
  var mFormatID: UInt32
  init()
  init(mFileType: AudioFileTypeID, mFormatID: UInt32)
}
@available(tvOS 2.0, *)
func AudioFileGetGlobalInfoSize(inPropertyID: AudioFilePropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafeMutablePointer<Void>, _ outDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(tvOS 2.0, *)
func AudioFileGetGlobalInfo(inPropertyID: AudioFilePropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafeMutablePointer<Void>, _ ioDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutablePointer<Void>) -> OSStatus
