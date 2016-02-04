
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
