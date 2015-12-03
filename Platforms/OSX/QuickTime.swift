
struct MatrixRecord {
  var matrix: ((Fixed, Fixed, Fixed), (Fixed, Fixed, Fixed), (Fixed, Fixed, Fixed))
  init()
  init(matrix: ((Fixed, Fixed, Fixed), (Fixed, Fixed, Fixed), (Fixed, Fixed, Fixed)))
}
typealias MatrixRecordPtr = UnsafeMutablePointer<MatrixRecord>
var kRawCodecType: Int { get }
var kCinepakCodecType: Int { get }
var kGraphicsCodecType: Int { get }
var kAnimationCodecType: Int { get }
var kVideoCodecType: Int { get }
var kComponentVideoCodecType: Int { get }
var kJPEGCodecType: Int { get }
var kMotionJPEGACodecType: Int { get }
var kMotionJPEGBCodecType: Int { get }
var kSGICodecType: Int { get }
var kPlanarRGBCodecType: Int { get }
var kMacPaintCodecType: Int { get }
var kGIFCodecType: Int { get }
var kPhotoCDCodecType: Int { get }
var kQuickDrawGXCodecType: Int { get }
var kAVRJPEGCodecType: Int { get }
var kOpenDMLJPEGCodecType: Int { get }
var kBMPCodecType: Int { get }
var kWindowsRawCodecType: Int { get }
var kVectorCodecType: Int { get }
var kQuickDrawCodecType: Int { get }
var kWaterRippleCodecType: Int { get }
var kFireCodecType: Int { get }
var kCloudCodecType: Int { get }
var kH261CodecType: Int { get }
var kH263CodecType: Int { get }
var kDVCNTSCCodecType: Int { get }
var kDVCPALCodecType: Int { get }
var kDVCProPALCodecType: Int { get }
var kDVCPro50NTSCCodecType: Int { get }
var kDVCPro50PALCodecType: Int { get }
var kDVCPROHD720p60CodecType: Int { get }
var kDVCPROHD720p50CodecType: Int { get }
var kDVCPROHD720pCodecType: Int { get }
var kDVCPROHD1080i60CodecType: Int { get }
var kDVCPROHD1080i50CodecType: Int { get }
var kDVCPROHD1080p30CodecType: Int { get }
var kDVCPROHD1080p25CodecType: Int { get }
var kBaseCodecType: Int { get }
var kFLCCodecType: Int { get }
var kTargaCodecType: Int { get }
var kPNGCodecType: Int { get }
var kTIFFCodecType: Int { get }
var kComponentVideoSigned: Int { get }
var kComponentVideoUnsigned: Int { get }
var kCMYKCodecType: Int { get }
var kMicrosoftVideo1CodecType: Int { get }
var kSorensonCodecType: Int { get }
var kSorenson3CodecType: Int { get }
var kIndeo4CodecType: Int { get }
var kMPEG4VisualCodecType: Int { get }
var k64ARGBCodecType: Int { get }
var k48RGBCodecType: Int { get }
var k32AlphaGrayCodecType: Int { get }
var k16GrayCodecType: Int { get }
var kMpegYUV420CodecType: Int { get }
var kYUV420CodecType: Int { get }
var kSorensonYUV9CodecType: Int { get }
var k422YpCbCr8CodecType: Int { get }
var k444YpCbCr8CodecType: Int { get }
var k4444YpCbCrA8CodecType: Int { get }
var k422YpCbCr16CodecType: Int { get }
var k422YpCbCr10CodecType: Int { get }
var k444YpCbCr10CodecType: Int { get }
var k4444YpCbCrA8RCodecType: Int { get }
var kJPEG2000CodecType: Int { get }
var kPixletCodecType: Int { get }
var kH264CodecType: Int { get }
typealias CodecType = OSType
typealias CodecFlags = UInt16
typealias CodecQ = UInt32
struct ImageDescription {
  var idSize: Int32
  var cType: CodecType
  var resvd1: Int32
  var resvd2: Int16
  var dataRefIndex: Int16
  var version: Int16
  var revisionLevel: Int16
  var vendor: Int32
  var temporalQuality: CodecQ
  var spatialQuality: CodecQ
  var width: Int16
  var height: Int16
  var hRes: Fixed
  var vRes: Fixed
  var dataSize: Int32
  var frameCount: Int16
  var name: Str31
  var depth: Int16
  var clutID: Int16
  init()
  init(idSize: Int32, cType: CodecType, resvd1: Int32, resvd2: Int16, dataRefIndex: Int16, version: Int16, revisionLevel: Int16, vendor: Int32, temporalQuality: CodecQ, spatialQuality: CodecQ, width: Int16, height: Int16, hRes: Fixed, vRes: Fixed, dataSize: Int32, frameCount: Int16, name: Str31, depth: Int16, clutID: Int16)
}
typealias ImageDescriptionPtr = UnsafeMutablePointer<ImageDescription>
typealias ImageDescriptionHandle = UnsafeMutablePointer<ImageDescriptionPtr>
typealias MediaSampleFlags = UInt32
var MovieFileType: Int { get }
var MovieScrapType: Int { get }
var MovieResourceType: Int { get }
var MovieForwardPointerResourceType: Int { get }
var MovieBackwardPointerResourceType: Int { get }
var MovieResourceAtomType: Int { get }
var MovieDataAtomType: Int { get }
var FreeAtomType: Int { get }
var SkipAtomType: Int { get }
var WideAtomPlaceholderType: Int { get }
var MediaHandlerType: Int { get }
var DataHandlerType: Int { get }
var VideoMediaType: Int { get }
var SoundMediaType: Int { get }
var TextMediaType: Int { get }
var BaseMediaType: Int { get }
var MPEGMediaType: Int { get }
var MusicMediaType: Int { get }
var TimeCodeMediaType: Int { get }
var SpriteMediaType: Int { get }
var FlashMediaType: Int { get }
var MovieMediaType: Int { get }
var TweenMediaType: Int { get }
var ThreeDeeMediaType: Int { get }
var SkinMediaType: Int { get }
var HandleDataHandlerSubType: Int { get }
var PointerDataHandlerSubType: Int { get }
var NullDataHandlerSubType: Int { get }
var ResourceDataHandlerSubType: Int { get }
var URLDataHandlerSubType: Int { get }
var AliasDataHandlerSubType: Int { get }
var WiredActionHandlerType: Int { get }
var kQTQuartzComposerMediaType: Int { get }
var TimeCode64MediaType: Int { get }
var VisualMediaCharacteristic: Int { get }
var AudioMediaCharacteristic: Int { get }
var kCharacteristicCanSendVideo: Int { get }
var kCharacteristicProvidesActions: Int { get }
var kCharacteristicNonLinear: Int { get }
var kCharacteristicCanStep: Int { get }
var kCharacteristicHasNoDuration: Int { get }
var kCharacteristicHasSkinData: Int { get }
var kCharacteristicProvidesKeyFocus: Int { get }
var kCharacteristicSupportsDisplayOffsets: Int { get }
var kUserDataMovieControllerType: Int { get }
var kUserDataName: Int { get }
var kUserDataTextAlbum: Int { get }
var kUserDataTextArtist: Int { get }
var kUserDataTextAuthor: Int { get }
var kUserDataTextChapter: Int { get }
var kUserDataTextComment: Int { get }
var kUserDataTextComposer: Int { get }
var kUserDataTextCopyright: Int { get }
var kUserDataTextCreationDate: Int { get }
var kUserDataTextDescription: Int { get }
var kUserDataTextDirector: Int { get }
var kUserDataTextDisclaimer: Int { get }
var kUserDataTextEncodedBy: Int { get }
var kUserDataTextFullName: Int { get }
var kUserDataTextGenre: Int { get }
var kUserDataTextHostComputer: Int { get }
var kUserDataTextInformation: Int { get }
var kUserDataTextKeywords: Int { get }
var kUserDataTextMake: Int { get }
var kUserDataTextModel: Int { get }
var kUserDataTextOriginalArtist: Int { get }
var kUserDataTextOriginalFormat: Int { get }
var kUserDataTextOriginalSource: Int { get }
var kUserDataTextPerformers: Int { get }
var kUserDataTextProducer: Int { get }
var kUserDataTextPublisher: Int { get }
var kUserDataTextProduct: Int { get }
var kUserDataTextSoftware: Int { get }
var kUserDataTextSpecialPlaybackRequirements: Int { get }
var kUserDataTextTrack: Int { get }
var kUserDataTextWarning: Int { get }
var kUserDataTextWriter: Int { get }
var kUserDataTextURLLink: Int { get }
var kUserDataTextEditDate1: Int { get }
var kUserDataAnimatedGIFLoopCount: Int { get }
var kQTAnimatedGIFLoopCountInfinite: Int { get }
var kUserDataAnimatedGIFBufferingSize: Int { get }
var kUserDataUnicodeBit: Int { get }
var DoTheRightThing: Int { get }
struct SampleDescription {
  var descSize: Int32
  var dataFormat: Int32
  var resvd1: Int32
  var resvd2: Int16
  var dataRefIndex: Int16
  init()
  init(descSize: Int32, dataFormat: Int32, resvd1: Int32, resvd2: Int16, dataRefIndex: Int16)
}
typealias SampleDescriptionPtr = UnsafeMutablePointer<SampleDescription>
typealias SampleDescriptionHandle = UnsafeMutablePointer<SampleDescriptionPtr>

/*************************
 * SoundDescription
 *************************/
struct SoundDescription {
  var descSize: Int32
  var dataFormat: Int32
  var resvd1: Int32
  var resvd2: Int16
  var dataRefIndex: Int16
  var version: Int16
  var revlevel: Int16
  var vendor: Int32
  var numChannels: Int16
  var sampleSize: Int16
  var compressionID: Int16
  var packetSize: Int16
  var sampleRate: UnsignedFixed
  init()
  init(descSize: Int32, dataFormat: Int32, resvd1: Int32, resvd2: Int16, dataRefIndex: Int16, version: Int16, revlevel: Int16, vendor: Int32, numChannels: Int16, sampleSize: Int16, compressionID: Int16, packetSize: Int16, sampleRate: UnsignedFixed)
}
typealias SoundDescriptionPtr = UnsafeMutablePointer<SoundDescription>
typealias SoundDescriptionHandle = UnsafeMutablePointer<SoundDescriptionPtr>
struct SoundDescriptionV1 {
  var desc: SoundDescription
  var samplesPerPacket: UInt32
  var bytesPerPacket: UInt32
  var bytesPerFrame: UInt32
  var bytesPerSample: UInt32
  init()
  init(desc: SoundDescription, samplesPerPacket: UInt32, bytesPerPacket: UInt32, bytesPerFrame: UInt32, bytesPerSample: UInt32)
}
typealias SoundDescriptionV1Ptr = UnsafeMutablePointer<SoundDescriptionV1>
typealias SoundDescriptionV1Handle = UnsafeMutablePointer<SoundDescriptionV1Ptr>
struct SoundDescriptionV2 {
  var descSize: Int32
  var dataFormat: OSType
  var resvd1: Int32
  var resvd2: Int16
  var dataRefIndex: Int16
  var version: Int16
  var revlevel: Int16
  var vendor: Int32
  var always3: Int16
  var always16: Int16
  var alwaysMinus2: Int16
  var always0: Int16
  var always65536: UInt32
  var sizeOfStructOnly: UInt32
  var audioSampleRate: Float64
  var numAudioChannels: UInt32
  var always7F000000: Int32
  var constBitsPerChannel: UInt32
  var formatSpecificFlags: UInt32
  var constBytesPerAudioPacket: UInt32
  var constLPCMFramesPerAudioPacket: UInt32
  init()
  init(descSize: Int32, dataFormat: OSType, resvd1: Int32, resvd2: Int16, dataRefIndex: Int16, version: Int16, revlevel: Int16, vendor: Int32, always3: Int16, always16: Int16, alwaysMinus2: Int16, always0: Int16, always65536: UInt32, sizeOfStructOnly: UInt32, audioSampleRate: Float64, numAudioChannels: UInt32, always7F000000: Int32, constBitsPerChannel: UInt32, formatSpecificFlags: UInt32, constBytesPerAudioPacket: UInt32, constLPCMFramesPerAudioPacket: UInt32)
}
typealias SoundDescriptionV2Ptr = UnsafeMutablePointer<SoundDescriptionV2>
typealias SoundDescriptionV2Handle = UnsafeMutablePointer<SoundDescriptionV2Ptr>
var kTx3gSampleType: Int { get }
var kTx3gFontTableAtomType: Int { get }
var kTx3gBlinkAtomType: Int { get }
struct Tx3gRGBAColor {
  var red: UInt8
  var green: UInt8
  var blue: UInt8
  var transparency: UInt8
  init()
  init(red: UInt8, green: UInt8, blue: UInt8, transparency: UInt8)
}
struct Tx3gStyleRecord {
  var startChar: UInt16
  var endChar: UInt16
  var fontID: UInt16
  var fontFace: UInt8
  var fontSize: UInt8
  var fontColor: Tx3gRGBAColor
  init()
  init(startChar: UInt16, endChar: UInt16, fontID: UInt16, fontFace: UInt8, fontSize: UInt8, fontColor: Tx3gRGBAColor)
}
typealias Tx3gStylePtr = UnsafeMutablePointer<Tx3gStyleRecord>
typealias Tx3gStyleHandle = UnsafeMutablePointer<Tx3gStylePtr>
struct Tx3gStyleTableRecord {
  var count: UInt16
  var table: (Tx3gStyleRecord)
  init()
  init(count: UInt16, table: (Tx3gStyleRecord))
}
typealias Tx3gStyleTablePtr = UnsafeMutablePointer<Tx3gStyleTableRecord>
typealias Tx3gStyleTableHandle = UnsafeMutablePointer<Tx3gStyleTablePtr>
struct Tx3gFontRecord {
  var fontID: UInt16
  var nameLength: UInt8
  var name: (UInt8)
  init()
  init(fontID: UInt16, nameLength: UInt8, name: (UInt8))
}
typealias Tx3gFontRecordPtr = UnsafeMutablePointer<Tx3gFontRecord>
struct Tx3gFontTableRecord {
  var entryCount: UInt16
  var fontEntries: (Tx3gFontRecord)
  init()
  init(entryCount: UInt16, fontEntries: (Tx3gFontRecord))
}
typealias Tx3gFontTablePtr = UnsafeMutablePointer<Tx3gFontTableRecord>
typealias Tx3gFontTableHandle = UnsafeMutablePointer<Tx3gFontTablePtr>
struct Tx3gDescription {
  var descSize: Int32
  var dataFormat: Int32
  var resvd1: Int32
  var resvd2: Int16
  var dataRefIndex: Int16
  var displayFlags: UInt32
  var horizontalJustification: Int8
  var verticalJustification: Int8
  var backgroundColor: Tx3gRGBAColor
  var defaultTextBox: Rect
  var defaultStyle: Tx3gStyleRecord
  init()
  init(descSize: Int32, dataFormat: Int32, resvd1: Int32, resvd2: Int16, dataRefIndex: Int16, displayFlags: UInt32, horizontalJustification: Int8, verticalJustification: Int8, backgroundColor: Tx3gRGBAColor, defaultTextBox: Rect, defaultStyle: Tx3gStyleRecord)
}
typealias Tx3gDescriptionPtr = UnsafeMutablePointer<Tx3gDescription>
typealias Tx3gDescriptionHandle = UnsafeMutablePointer<Tx3gDescriptionPtr>
struct QTRGBColor {
  var red: UInt16
  var green: UInt16
  var blue: UInt16
  init()
  init(red: UInt16, green: UInt16, blue: UInt16)
}
struct TextDescription {
  var descSize: Int32
  var dataFormat: Int32
  var resvd1: Int32
  var resvd2: Int16
  var dataRefIndex: Int16
  var displayFlags: Int32
  var textJustification: Int32
  var bgColor: QTRGBColor
  var defaultTextBox: Rect
  var defaultStyle: ScrpSTElement
  var defaultFontName: (Int8)
  init()
  init(descSize: Int32, dataFormat: Int32, resvd1: Int32, resvd2: Int16, dataRefIndex: Int16, displayFlags: Int32, textJustification: Int32, bgColor: QTRGBColor, defaultTextBox: Rect, defaultStyle: ScrpSTElement, defaultFontName: (Int8))
}
typealias TextDescriptionPtr = UnsafeMutablePointer<TextDescription>
typealias TextDescriptionHandle = UnsafeMutablePointer<TextDescriptionPtr>
var mediaSampleNotSync: Int { get }
var mediaSampleShadowSync: Int { get }
var mediaSampleDroppable: Int { get }
var mediaSamplePartialSync: Int { get }
var mediaSampleHasRedundantCoding: Int { get }
var mediaSampleHasNoRedundantCoding: Int { get }
var mediaSampleIsDependedOnByOthers: Int { get }
var mediaSampleIsNotDependedOnByOthers: Int { get }
var mediaSampleDependsOnOthers: Int { get }
var mediaSampleDoesNotDependOnOthers: Int { get }
var mediaSampleEarlierDisplayTimesAllowed: Int { get }
var kMovieVersion: Int { get }

/****************************************
*
*   General Types -
*       These types are used in more than one of the
*       directory types.
*
****************************************/
struct MoviesUserData {
  var size: Int32
  var udType: Int32
  var data: (Int8)
  init()
  init(size: Int32, udType: Int32, data: (Int8))
}
struct UserDataAtom {
  var size: Int32
  var atomType: Int32
  var userData: (MoviesUserData)
  init()
  init(size: Int32, atomType: Int32, userData: (MoviesUserData))
}

/****************************************
*
*   MediaDirectory information -
*       The MediaDirectory is tightly coupled to the data.
*
****************************************/
struct SampleDescriptionAtom {
  var size: Int32
  var atomType: Int32
  var flags: Int32
  var numEntries: Int32
  var sampleDescTable: (SampleDescription)
  init()
  init(size: Int32, atomType: Int32, flags: Int32, numEntries: Int32, sampleDescTable: (SampleDescription))
}
struct TimeToSampleNum {
  var sampleCount: Int32
  var sampleDuration: TimeValue
  init()
  init(sampleCount: Int32, sampleDuration: TimeValue)
}
struct TimeToSampleNumAtom {
  var size: Int32
  var atomType: Int32
  var flags: Int32
  var numEntries: Int32
  var timeToSampleNumTable: (TimeToSampleNum)
  init()
  init(size: Int32, atomType: Int32, flags: Int32, numEntries: Int32, timeToSampleNumTable: (TimeToSampleNum))
}
struct SyncSampleAtom {
  var size: Int32
  var atomType: Int32
  var flags: Int32
  var numEntries: Int32
  var syncSampleTable: (Int32)
  init()
  init(size: Int32, atomType: Int32, flags: Int32, numEntries: Int32, syncSampleTable: (Int32))
}
struct SampleToChunk {
  var firstChunk: Int32
  var samplesPerChunk: Int32
  var sampleDescriptionID: Int32
  init()
  init(firstChunk: Int32, samplesPerChunk: Int32, sampleDescriptionID: Int32)
}
struct SampleToChunkAtom {
  var size: Int32
  var atomType: Int32
  var flags: Int32
  var numEntries: Int32
  var sampleToChunkTable: (SampleToChunk)
  init()
  init(size: Int32, atomType: Int32, flags: Int32, numEntries: Int32, sampleToChunkTable: (SampleToChunk))
}
struct ChunkOffsetAtom {
  var size: Int32
  var atomType: Int32
  var flags: Int32
  var numEntries: Int32
  var chunkOffsetTable: (Int32)
  init()
  init(size: Int32, atomType: Int32, flags: Int32, numEntries: Int32, chunkOffsetTable: (Int32))
}
struct SampleSizeAtom {
  var size: Int32
  var atomType: Int32
  var flags: Int32
  var sampleSize: Int32
  var numEntries: Int32
  var sampleSizeTable: (Int32)
  init()
  init(size: Int32, atomType: Int32, flags: Int32, sampleSize: Int32, numEntries: Int32, sampleSizeTable: (Int32))
}
struct ShadowSync {
  var fdSampleNum: Int32
  var syncSampleNum: Int32
  init()
  init(fdSampleNum: Int32, syncSampleNum: Int32)
}
struct ShadowSyncAtom {
  var size: Int32
  var atomType: Int32
  var flags: Int32
  var numEntries: Int32
  var shadowSyncTable: (ShadowSync)
  init()
  init(size: Int32, atomType: Int32, flags: Int32, numEntries: Int32, shadowSyncTable: (ShadowSync))
}
struct CompositionOffsetEntry {
  var sampleCount: Int32
  var displayOffset: TimeValue
  init()
  init(sampleCount: Int32, displayOffset: TimeValue)
}
struct CompositionOffsetAtom {
  var size: Int32
  var atomType: Int32
  var flags: Int32
  var numEntries: Int32
  var compositionOffsetTable: (CompositionOffsetEntry)
  init()
  init(size: Int32, atomType: Int32, flags: Int32, numEntries: Int32, compositionOffsetTable: (CompositionOffsetEntry))
}
struct SampleDependencyAtom {
  var size: Int32
  var atomType: Int32
  var flags: Int32
  var sampleDependencyTable: (UInt8)
  init()
  init(size: Int32, atomType: Int32, flags: Int32, sampleDependencyTable: (UInt8))
}
var kQTSampleDependency_EarlierDisplayTimesAllowed: Int { get }
var kQTSampleDependency_DoesNotDependOnOthers_Corrected: Int { get }
var kQTSampleDependency_DependsOnOthers_Corrected: Int { get }
var kQTSampleDependency_IsNotDependedOnByOthers_Corrected: Int { get }
var kQTSampleDependency_IsDependedOnByOthers_Corrected: Int { get }
var kQTSampleDependency_HasNoRedundantCoding_Corrected: Int { get }
var kQTSampleDependency_HasRedundantCoding_Corrected: Int { get }
struct CompositionShiftLeastGreatestAtom {
  var size: Int32
  var atomType: Int32
  var flags: Int32
  var compositionOffsetToDTDDeltaShift: Int32
  var leastDecodeToDisplayDelta: Int32
  var greatestDecodeToDisplayDelta: Int32
  var displayStartTime: Int32
  var displayEndTime: Int32
  init()
  init(size: Int32, atomType: Int32, flags: Int32, compositionOffsetToDTDDeltaShift: Int32, leastDecodeToDisplayDelta: Int32, greatestDecodeToDisplayDelta: Int32, displayStartTime: Int32, displayEndTime: Int32)
}
struct PartialSyncSampleAtom {
  var size: Int32
  var atomType: Int32
  var flags: Int32
  var numEntries: Int32
  var partialSyncSampleTable: (UInt32)
  init()
  init(size: Int32, atomType: Int32, flags: Int32, numEntries: Int32, partialSyncSampleTable: (UInt32))
}
struct SampleTableAtom {
  var size: Int32
  var atomType: Int32
  var sampleDescription: SampleDescriptionAtom
  var timeToSampleNum: TimeToSampleNumAtom
  var sampleToChunk: SampleToChunkAtom
  var syncSample: SyncSampleAtom
  var sampleSize: SampleSizeAtom
  var chunkOffset: ChunkOffsetAtom
  var shadowSync: ShadowSyncAtom
  init()
  init(size: Int32, atomType: Int32, sampleDescription: SampleDescriptionAtom, timeToSampleNum: TimeToSampleNumAtom, sampleToChunk: SampleToChunkAtom, syncSample: SyncSampleAtom, sampleSize: SampleSizeAtom, chunkOffset: ChunkOffsetAtom, shadowSync: ShadowSyncAtom)
}
struct PublicHandlerInfo {
  var flags: Int32
  var componentType: Int32
  var componentSubType: Int32
  var componentManufacturer: Int32
  var componentFlags: Int32
  var componentFlagsMask: Int32
  var componentName: (Int8)
  init()
  init(flags: Int32, componentType: Int32, componentSubType: Int32, componentManufacturer: Int32, componentFlags: Int32, componentFlagsMask: Int32, componentName: (Int8))
}
struct HandlerAtom {
  var size: Int32
  var atomType: Int32
  var hInfo: PublicHandlerInfo
  init()
  init(size: Int32, atomType: Int32, hInfo: PublicHandlerInfo)
}
typealias DataRefAtom = Int32
struct DataInfoAtom {
  var size: Int32
  var atomType: Int32
  var dataRef: DataRefAtom
  init()
  init(size: Int32, atomType: Int32, dataRef: DataRefAtom)
}
struct RgnAtom {
  var size: Int32
  var atomType: Int32
  var rgnSize: Int16
  var rgnBBox: Rect
  var data: (Int8)
  init()
  init(size: Int32, atomType: Int32, rgnSize: Int16, rgnBBox: Rect, data: (Int8))
}
struct MatteCompressedAtom {
  var size: Int32
  var atomType: Int32
  var flags: Int32
  var matteImageDescription: ImageDescription
  var matteData: (Int8)
  init()
  init(size: Int32, atomType: Int32, flags: Int32, matteImageDescription: ImageDescription, matteData: (Int8))
}
struct MatteAtom {
  var size: Int32
  var atomType: Int32
  var aCompressedMatte: MatteCompressedAtom
  init()
  init(size: Int32, atomType: Int32, aCompressedMatte: MatteCompressedAtom)
}
struct ClippingAtom {
  var size: Int32
  var atomType: Int32
  var aRgnClip: RgnAtom
  init()
  init(size: Int32, atomType: Int32, aRgnClip: RgnAtom)
}

/***********************
* Media Info Example Structures
***********************/
struct VideoMediaInfoHeader {
  var flags: Int32
  var graphicsMode: Int16
  var opColorRed: Int16
  var opColorGreen: Int16
  var opColorBlue: Int16
  init()
  init(flags: Int32, graphicsMode: Int16, opColorRed: Int16, opColorGreen: Int16, opColorBlue: Int16)
}
struct VideoMediaInfoHeaderAtom {
  var size: Int32
  var atomType: Int32
  var vmiHeader: VideoMediaInfoHeader
  init()
  init(size: Int32, atomType: Int32, vmiHeader: VideoMediaInfoHeader)
}
struct VideoMediaInfo {
  var size: Int32
  var atomType: Int32
  var header: VideoMediaInfoHeaderAtom
  var dataHandler: HandlerAtom
  var dataInfo: DataInfoAtom
  var sampleTable: SampleTableAtom
  init()
  init(size: Int32, atomType: Int32, header: VideoMediaInfoHeaderAtom, dataHandler: HandlerAtom, dataInfo: DataInfoAtom, sampleTable: SampleTableAtom)
}
struct SoundMediaInfoHeader {
  var flags: Int32
  var balance: Int16
  var rsrvd: Int16
  init()
  init(flags: Int32, balance: Int16, rsrvd: Int16)
}
struct SoundMediaInfoHeaderAtom {
  var size: Int32
  var atomType: Int32
  var smiHeader: SoundMediaInfoHeader
  init()
  init(size: Int32, atomType: Int32, smiHeader: SoundMediaInfoHeader)
}
struct SoundMediaInfo {
  var size: Int32
  var atomType: Int32
  var header: SoundMediaInfoHeaderAtom
  var dataHandler: HandlerAtom
  var dataReference: DataRefAtom
  var sampleTable: SampleTableAtom
  init()
  init(size: Int32, atomType: Int32, header: SoundMediaInfoHeaderAtom, dataHandler: HandlerAtom, dataReference: DataRefAtom, sampleTable: SampleTableAtom)
}
struct MediaInfo {
  var size: Int32
  var atomType: Int32
  init()
  init(size: Int32, atomType: Int32)
}

/***********************
* Media Directory Structures
***********************/
struct MediaHeader {
  var flags: Int32
  var creationTime: Int32
  var modificationTime: Int32
  var timeScale: TimeValue
  var duration: TimeValue
  var language: Int16
  var quality: Int16
  init()
  init(flags: Int32, creationTime: Int32, modificationTime: Int32, timeScale: TimeValue, duration: TimeValue, language: Int16, quality: Int16)
}
struct MediaHeaderAtom {
  var size: Int32
  var atomType: Int32
  var header: MediaHeader
  init()
  init(size: Int32, atomType: Int32, header: MediaHeader)
}
struct MediaDirectory {
  var size: Int32
  var atomType: Int32
  var mediaHeader: MediaHeaderAtom
  var mediaHandler: HandlerAtom
  var mediaInfo: MediaInfo
  init()
  init(size: Int32, atomType: Int32, mediaHeader: MediaHeaderAtom, mediaHandler: HandlerAtom, mediaInfo: MediaInfo)
}
var TrackEnable: Int { get }
var TrackInMovie: Int { get }
var TrackInPreview: Int { get }
var TrackInPoster: Int { get }
struct TrackHeader {
  var flags: Int32
  var creationTime: Int32
  var modificationTime: Int32
  var trackID: Int32
  var reserved1: Int32
  var duration: TimeValue
  var reserved2: Int32
  var reserved3: Int32
  var layer: Int16
  var alternateGroup: Int16
  var volume: Int16
  var reserved4: Int16
  var matrix: MatrixRecord
  var trackWidth: Fixed
  var trackHeight: Fixed
  init()
  init(flags: Int32, creationTime: Int32, modificationTime: Int32, trackID: Int32, reserved1: Int32, duration: TimeValue, reserved2: Int32, reserved3: Int32, layer: Int16, alternateGroup: Int16, volume: Int16, reserved4: Int16, matrix: MatrixRecord, trackWidth: Fixed, trackHeight: Fixed)
}
struct TrackHeaderAtom {
  var size: Int32
  var atomType: Int32
  var header: TrackHeader
  init()
  init(size: Int32, atomType: Int32, header: TrackHeader)
}
struct EditListType {
  var trackDuration: TimeValue
  var mediaTime: TimeValue
  var mediaRate: Fixed
  init()
  init(trackDuration: TimeValue, mediaTime: TimeValue, mediaRate: Fixed)
}
struct EditListAtom {
  var size: Int32
  var atomType: Int32
  var flags: Int32
  var numEntries: Int32
  var editListTable: (EditListType)
  init()
  init(size: Int32, atomType: Int32, flags: Int32, numEntries: Int32, editListTable: (EditListType))
}
struct EditsAtom {
  var size: Int32
  var atomType: Int32
  var editList: EditListAtom
  init()
  init(size: Int32, atomType: Int32, editList: EditListAtom)
}
struct TrackLoadSettings {
  var preloadStartTime: TimeValue
  var preloadDuration: TimeValue
  var preloadFlags: Int32
  var defaultHints: Int32
  init()
  init(preloadStartTime: TimeValue, preloadDuration: TimeValue, preloadFlags: Int32, defaultHints: Int32)
}
struct TrackLoadSettingsAtom {
  var size: Int32
  var atomType: Int32
  var settings: TrackLoadSettings
  init()
  init(size: Int32, atomType: Int32, settings: TrackLoadSettings)
}
struct TrackCleanApertureDimensions {
  var flags: Int32
  var cleanApertureDimensions: FixedPoint
  init()
  init(flags: Int32, cleanApertureDimensions: FixedPoint)
}
struct TrackCleanApertureDimensionsAtom {
  var size: Int32
  var atomType: Int32
  var cleanApertureDimensions: TrackCleanApertureDimensions
  init()
  init(size: Int32, atomType: Int32, cleanApertureDimensions: TrackCleanApertureDimensions)
}
struct TrackProductionApertureDimensions {
  var flags: Int32
  var productionApertureDimensions: FixedPoint
  init()
  init(flags: Int32, productionApertureDimensions: FixedPoint)
}
struct TrackProductionApertureDimensionsAtom {
  var size: Int32
  var atomType: Int32
  var productionApertureDimensions: TrackProductionApertureDimensions
  init()
  init(size: Int32, atomType: Int32, productionApertureDimensions: TrackProductionApertureDimensions)
}
struct TrackEncodedPixelsDimensions {
  var flags: Int32
  var encodedPixelsDimensions: FixedPoint
  init()
  init(flags: Int32, encodedPixelsDimensions: FixedPoint)
}
struct TrackEncodedPixelsDimensionsAtom {
  var size: Int32
  var atomType: Int32
  var encodedPixelsDimensions: TrackEncodedPixelsDimensions
  init()
  init(size: Int32, atomType: Int32, encodedPixelsDimensions: TrackEncodedPixelsDimensions)
}
struct TrackDirectory {
  var size: Int32
  var atomType: Int32
  var trackHeader: TrackHeaderAtom
  var trackClip: ClippingAtom
  var edits: EditsAtom
  var media: MediaDirectory
  var userData: UserDataAtom
  init()
  init(size: Int32, atomType: Int32, trackHeader: TrackHeaderAtom, trackClip: ClippingAtom, edits: EditsAtom, media: MediaDirectory, userData: UserDataAtom)
}

/****************************************
*
*   MovieDirectory -
*       The MovieDirectory is the top level structure which
*       holds the TrackInstance describing where the
*       TrackDirectories are.
*
****************************************/
struct MovieHeader {
  var flags: Int32
  var creationTime: Int32
  var modificationTime: Int32
  var timeScale: TimeValue
  var duration: TimeValue
  var preferredRate: Fixed
  var preferredVolume: Int16
  var reserved1: Int16
  var preferredLong1: Int32
  var preferredLong2: Int32
  var matrix: MatrixRecord
  var previewTime: TimeValue
  var previewDuration: TimeValue
  var posterTime: TimeValue
  var selectionTime: TimeValue
  var selectionDuration: TimeValue
  var currentTime: TimeValue
  var nextTrackID: Int32
  init()
  init(flags: Int32, creationTime: Int32, modificationTime: Int32, timeScale: TimeValue, duration: TimeValue, preferredRate: Fixed, preferredVolume: Int16, reserved1: Int16, preferredLong1: Int32, preferredLong2: Int32, matrix: MatrixRecord, previewTime: TimeValue, previewDuration: TimeValue, posterTime: TimeValue, selectionTime: TimeValue, selectionDuration: TimeValue, currentTime: TimeValue, nextTrackID: Int32)
}
struct MovieHeaderAtom {
  var size: Int32
  var atomType: Int32
  var header: MovieHeader
  init()
  init(size: Int32, atomType: Int32, header: MovieHeader)
}
struct TrackDirectoryEntry {
  var trackDirectory: TrackDirectory
  init()
  init(trackDirectory: TrackDirectory)
}
struct MovieDirectory {
  var size: Int32
  var atomType: Int32
  var header: MovieHeaderAtom
  var movieClip: ClippingAtom
  var track: (TrackDirectoryEntry)
  var userData: UserDataAtom
  init()
  init(size: Int32, atomType: Int32, header: MovieHeaderAtom, movieClip: ClippingAtom, track: (TrackDirectoryEntry), userData: UserDataAtom)
}
var QT_MOVIE_TYPE: Int { get }
var QT_TRACK_TYPE: Int { get }
var QT_MEDIA_TYPE: Int { get }
var QT_VIDEO_TYPE: Int { get }
var QT_SOUND_TYPE: Int { get }
var MOVIE_TYPE: Int { get }
var TRACK_TYPE: Int { get }
var VIDEO_TYPE: Int { get }
var SOUND_TYPE: Int { get }
var MEDIA_TYPE: Int { get }
var MovieAID: Int { get }
var MovieHeaderAID: Int { get }
var ClipAID: Int { get }
var RgnClipAID: Int { get }
var MatteAID: Int { get }
var MatteCompAID: Int { get }
var TrackAID: Int { get }
var UserDataAID: Int { get }
var TrackHeaderAID: Int { get }
var EditsAID: Int { get }
var EditListAID: Int { get }
var MediaAID: Int { get }
var MediaHeaderAID: Int { get }
var MediaInfoAID: Int { get }
var VideoMediaInfoHeaderAID: Int { get }
var SoundMediaInfoHeaderAID: Int { get }
var GenericMediaInfoHeaderAID: Int { get }
var GenericMediaInfoAID: Int { get }
var DataInfoAID: Int { get }
var DataRefAID: Int { get }
var SampleTableAID: Int { get }
var STSampleDescAID: Int { get }
var STTimeToSampAID: Int { get }
var STSyncSampleAID: Int { get }
var STSampleToChunkAID: Int { get }
var STShadowSyncAID: Int { get }
var HandlerAID: Int { get }
var STSampleSizeAID: Int { get }
var STChunkOffsetAID: Int { get }
var STChunkOffset64AID: Int { get }
var STSampleIDAID: Int { get }
var STCompositionOffsetAID: Int { get }
var STSampleDependencyAID: Int { get }
var STCompositionShiftLeastGreatestAID: Int { get }
var STPartialSyncSampleAID: Int { get }
var DataRefContainerAID: Int { get }
var TrackReferenceAID: Int { get }
var ColorTableAID: Int { get }
var LoadSettingsAID: Int { get }
var PropertyAtomAID: Int { get }
var InputMapAID: Int { get }
var MovieBufferHintsAID: Int { get }
var MovieDataRefAliasAID: Int { get }
var SoundLocalizationAID: Int { get }
var CompressedMovieAID: Int { get }
var CompressedMovieDataAID: Int { get }
var DataCompressionAtomAID: Int { get }
var ReferenceMovieRecordAID: Int { get }
var ReferenceMovieDescriptorAID: Int { get }
var ReferenceMovieDataRefAID: Int { get }
var ReferenceMovieVersionCheckAID: Int { get }
var ReferenceMovieDataRateAID: Int { get }
var ReferenceMovieComponentCheckAID: Int { get }
var ReferenceMovieQualityAID: Int { get }
var ReferenceMovieLanguageAID: Int { get }
var ReferenceMovieCPURatingAID: Int { get }
var ReferenceMovieAlternateGroupAID: Int { get }
var ReferenceMovieNetworkStatusAID: Int { get }
var CloneMediaAID: Int { get }
var FileTypeAID: Int { get }
var SecureContentInfoAID: Int { get }
var SecureContentSchemeTypeAID: Int { get }
var SecureContentSchemeInfoAID: Int { get }
var TrackApertureModeDimensionsAID: Int { get }
var TrackCleanApertureDimensionsAID: Int { get }
var TrackProductionApertureDimensionsAID: Int { get }
var TrackEncodedPixelsDimensionsAID: Int { get }
struct TextBoxAtom {
  var size: Int32
  var atomType: Int32
  var textBox: Rect
  init()
  init(size: Int32, atomType: Int32, textBox: Rect)
}
struct HiliteAtom {
  var size: Int32
  var atomType: Int32
  var selStart: Int32
  var selEnd: Int32
  init()
  init(size: Int32, atomType: Int32, selStart: Int32, selEnd: Int32)
}
struct KaraokeRec {
  var timeVal: TimeValue
  var beginHilite: Int16
  var endHilite: Int16
  init()
  init(timeVal: TimeValue, beginHilite: Int16, endHilite: Int16)
}
struct KaraokeAtom {
  var numEntries: Int32
  var karaokeEntries: (KaraokeRec)
  init()
  init(numEntries: Int32, karaokeEntries: (KaraokeRec))
}
var kDataRefIsSelfContained: Int { get }
struct ReferenceMovieDataRefRecord {
  var flags: Int32
  var dataRefType: OSType
  var dataRefSize: Int32
  var dataRef: (Int8)
  init()
  init(flags: Int32, dataRefType: OSType, dataRefSize: Int32, dataRef: (Int8))
}
var kVersionCheckMin: Int { get }
var kVersionCheckMask: Int { get }
struct QTAltVersionCheckRecord {
  var flags: Int32
  var gestaltTag: OSType
  var val1: UInt32
  var val2: UInt32
  var checkType: Int16
  init()
  init(flags: Int32, gestaltTag: OSType, val1: UInt32, val2: UInt32, checkType: Int16)
}
var kDataRate144ModemRate: Int { get }
var kDataRate288ModemRate: Int { get }
var kDataRateISDNRate: Int { get }
var kDataRateDualISDNRate: Int { get }
var kDataRate256kbpsRate: Int { get }
var kDataRate384kbpsRate: Int { get }
var kDataRate512kbpsRate: Int { get }
var kDataRate768kbpsRate: Int { get }
var kDataRate1MbpsRate: Int { get }
var kDataRateT1Rate: Int { get }
var kDataRateInfiniteRate: Int { get }
var kDataRateDefaultIfNotSet: Int { get }
struct QTAltDataRateRecord {
  var flags: Int32
  var dataRate: Int32
  init()
  init(flags: Int32, dataRate: Int32)
}
struct QTAltComponentCheckRecord {
  var flags: Int32
  var cd: ComponentDescription
  var minVersion: UInt32
  init()
  init(flags: Int32, cd: ComponentDescription, minVersion: UInt32)
}
struct QTAltLanguageRecord {
  var flags: Int32
  var language: Int16
  init()
  init(flags: Int32, language: Int16)
}
var kQTCPUSpeed1Rating: Int { get }
var kQTCPUSpeed2Rating: Int { get }
var kQTCPUSpeed3Rating: Int { get }
var kQTCPUSpeed4Rating: Int { get }
var kQTCPUSpeed5Rating: Int { get }
struct QTAltCPURatingRecord {
  var flags: UInt32
  var speed: UInt16
  init()
  init(flags: UInt32, speed: UInt16)
}
struct ReferenceMovieNetworkStatusRecord {
  var flags: UInt32
  var valueCount: UInt32
  var netStatusValues: (Int32)
  init()
  init(flags: UInt32, valueCount: UInt32, netStatusValues: (Int32))
}
struct CloneRecord {
  var flags: Int32
  var masterTrackID: Int32
  init()
  init(flags: Int32, masterTrackID: Int32)
}
struct CloneAtom {
  var size: Int32
  var atomType: Int32
  var cloneInfo: CloneRecord
  init()
  init(size: Int32, atomType: Int32, cloneInfo: CloneRecord)
}
struct FileTypeAtom {
  var size: Int32
  var atomType: Int32
  var majorBrand: Int32
  var minorVersion: Int32
  var compatibleBrands: (Int32, Int32, Int32, Int32)
  init()
  init(size: Int32, atomType: Int32, majorBrand: Int32, minorVersion: Int32, compatibleBrands: (Int32, Int32, Int32, Int32))
}
var kQTFileTypeBrandQuickTimeMovie: Int { get }
var kQTFileTypeBrandISOFile: Int { get }
var kQTFileTypeBrandMPEG4v1: Int { get }
var kQTFileTypeBrandMPEG4v2: Int { get }
struct SecureContentInfoAtom {
  var size: Int32
  var atomType: Int32
  init()
  init(size: Int32, atomType: Int32)
}
struct SecureContentSchemeTypeAtom {
  var size: Int32
  var atomType: Int32
  var flags: Int32
  var schemeType: Int32
  var schemeVersion: UInt32
  init()
  init(size: Int32, atomType: Int32, flags: Int32, schemeType: Int32, schemeVersion: UInt32)
}
struct SecureContentSchemeInfoAtom {
  var size: Int32
  var atomType: Int32
  init()
  init(size: Int32, atomType: Int32)
}
struct TimeCodeDef {
  var flags: Int32
  var fTimeScale: TimeScale
  var frameDuration: TimeValue
  var numFrames: UInt8
  var padding: UInt8
  init()
  init(flags: Int32, fTimeScale: TimeScale, frameDuration: TimeValue, numFrames: UInt8, padding: UInt8)
}
struct TimeCodeDescription {
  var descSize: Int32
  var dataFormat: Int32
  var resvd1: Int32
  var resvd2: Int16
  var dataRefIndex: Int16
  var flags: Int32
  var timeCodeDef: TimeCodeDef
  var srcRef: (Int32)
  init()
  init(descSize: Int32, dataFormat: Int32, resvd1: Int32, resvd2: Int16, dataRefIndex: Int16, flags: Int32, timeCodeDef: TimeCodeDef, srcRef: (Int32))
}
typealias TimeCodeDescriptionPtr = UnsafeMutablePointer<TimeCodeDescription>
typealias TimeCodeDescriptionHandle = UnsafeMutablePointer<TimeCodeDescriptionPtr>
struct QTVRSampleDescription {
  var descSize: UInt32
  var descType: UInt32
  var reserved1: UInt32
  var reserved2: UInt16
  var dataRefIndex: UInt16
  var data: UInt32
  init()
  init(descSize: UInt32, descType: UInt32, reserved1: UInt32, reserved2: UInt16, dataRefIndex: UInt16, data: UInt32)
}
typealias QTVRSampleDescriptionPtr = UnsafeMutablePointer<QTVRSampleDescription>
typealias QTVRSampleDescriptionHandle = UnsafeMutablePointer<QTVRSampleDescriptionPtr>
