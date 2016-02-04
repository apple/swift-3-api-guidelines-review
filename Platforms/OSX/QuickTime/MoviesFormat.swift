
var kMovieVersion: Int { get }
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
