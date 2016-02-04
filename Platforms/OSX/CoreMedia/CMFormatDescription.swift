
var kCMFormatDescriptionError_InvalidParameter: OSStatus { get }
var kCMFormatDescriptionError_AllocationFailed: OSStatus { get }
var kCMFormatDescriptionError_ValueNotAvailable: OSStatus { get }
class CMFormatDescription {
}
@available(*, deprecated, renamed="CMFormatDescription")
typealias CMFormatDescriptionRef = CMFormatDescription
typealias CMMediaType = FourCharCode
var kCMMediaType_Video: CMMediaType { get }
var kCMMediaType_Audio: CMMediaType { get }
var kCMMediaType_Muxed: CMMediaType { get }
var kCMMediaType_Text: CMMediaType { get }
var kCMMediaType_ClosedCaption: CMMediaType { get }
var kCMMediaType_Subtitle: CMMediaType { get }
var kCMMediaType_TimeCode: CMMediaType { get }
var kCMMediaType_Metadata: CMMediaType { get }
@available(OSX 10.7, *)
func CMFormatDescriptionCreate(allocator: CFAllocator?, _ mediaType: CMMediaType, _ mediaSubtype: FourCharCode, _ extensions: CFDictionary?, _ descOut: UnsafeMutablePointer<CMFormatDescription?>) -> OSStatus
@available(OSX 10.7, *)
func CMFormatDescriptionGetTypeID() -> CFTypeID
@available(OSX 10.7, *)
func CMFormatDescriptionEqual(desc1: CMFormatDescription?, _ desc2: CMFormatDescription?) -> Bool
@available(OSX 10.7, *)
func CMFormatDescriptionEqualIgnoringExtensionKeys(desc1: CMFormatDescription?, _ desc2: CMFormatDescription?, _ formatDescriptionExtensionKeysToIgnore: CFTypeRef?, _ sampleDescriptionExtensionAtomKeysToIgnore: CFTypeRef?) -> Bool
@available(OSX 10.7, *)
func CMFormatDescriptionGetMediaType(desc: CMFormatDescription) -> CMMediaType
@available(OSX 10.7, *)
func CMFormatDescriptionGetMediaSubType(desc: CMFormatDescription) -> FourCharCode
@available(OSX 10.7, *)
func CMFormatDescriptionGetExtensions(desc: CMFormatDescription) -> CFDictionary?
@available(OSX 10.7, *)
let kCMFormatDescriptionExtension_OriginalCompressionSettings: CFString
@available(OSX 10.7, *)
let kCMFormatDescriptionExtension_SampleDescriptionExtensionAtoms: CFString
@available(OSX 10.7, *)
let kCMFormatDescriptionExtension_VerbatimSampleDescription: CFString
@available(OSX 10.7, *)
let kCMFormatDescriptionExtension_VerbatimISOSampleEntry: CFString
@available(OSX 10.7, *)
func CMFormatDescriptionGetExtension(desc: CMFormatDescription, _ extensionKey: CFString) -> CFPropertyList?
typealias CMAudioCodecType = FourCharCode
var kCMAudioCodecType_AAC_LCProtected: CMAudioCodecType { get }
var kCMAudioCodecType_AAC_AudibleProtected: CMAudioCodecType { get }
@available(*, deprecated, renamed="CMAudioFormatDescription")
typealias CMAudioFormatDescriptionRef = CMAudioFormatDescription
typealias CMAudioFormatDescription = CMFormatDescription
@available(OSX 10.7, *)
func CMAudioFormatDescriptionCreate(allocator: CFAllocator?, _ asbd: UnsafePointer<AudioStreamBasicDescription>, _ layoutSize: Int, _ layout: UnsafePointer<AudioChannelLayout>, _ magicCookieSize: Int, _ magicCookie: UnsafePointer<Void>, _ extensions: CFDictionary?, _ outDesc: UnsafeMutablePointer<CMAudioFormatDescription?>) -> OSStatus
@available(OSX 10.7, *)
func CMAudioFormatDescriptionGetStreamBasicDescription(desc: CMAudioFormatDescription) -> UnsafePointer<AudioStreamBasicDescription>
@available(OSX 10.7, *)
func CMAudioFormatDescriptionGetMagicCookie(desc: CMAudioFormatDescription, _ cookieSizeOut: UnsafeMutablePointer<Int>) -> UnsafePointer<Void>
@available(OSX 10.7, *)
func CMAudioFormatDescriptionGetChannelLayout(desc: CMAudioFormatDescription, _ layoutSize: UnsafeMutablePointer<Int>) -> UnsafePointer<AudioChannelLayout>
@available(OSX 10.7, *)
func CMAudioFormatDescriptionGetFormatList(desc: CMAudioFormatDescription, _ formatListSize: UnsafeMutablePointer<Int>) -> UnsafePointer<AudioFormatListItem>
@available(OSX 10.7, *)
func CMAudioFormatDescriptionGetRichestDecodableFormat(desc: CMAudioFormatDescription) -> UnsafePointer<AudioFormatListItem>
@available(OSX 10.7, *)
func CMAudioFormatDescriptionGetMostCompatibleFormat(desc: CMAudioFormatDescription) -> UnsafePointer<AudioFormatListItem>
@available(OSX 10.7, *)
func CMAudioFormatDescriptionCreateSummary(allocator: CFAllocator?, _ formatDescriptionArray: CFArray, _ flags: UInt32, _ summaryFormatDescriptionOut: UnsafeMutablePointer<CMAudioFormatDescription?>) -> OSStatus
typealias CMAudioFormatDescriptionMask = UInt32
var kCMAudioFormatDescriptionMask_StreamBasicDescription: CMAudioFormatDescriptionMask { get }
var kCMAudioFormatDescriptionMask_MagicCookie: CMAudioFormatDescriptionMask { get }
var kCMAudioFormatDescriptionMask_ChannelLayout: CMAudioFormatDescriptionMask { get }
var kCMAudioFormatDescriptionMask_Extensions: CMAudioFormatDescriptionMask { get }
var kCMAudioFormatDescriptionMask_All: CMAudioFormatDescriptionMask { get }
@available(OSX 10.7, *)
func CMAudioFormatDescriptionEqual(desc1: CMAudioFormatDescription, _ desc2: CMAudioFormatDescription, _ equalityMask: CMAudioFormatDescriptionMask, _ equalityMaskOut: UnsafeMutablePointer<CMAudioFormatDescriptionMask>) -> Bool
@available(*, deprecated, renamed="CMVideoFormatDescription")
typealias CMVideoFormatDescriptionRef = CMVideoFormatDescription
typealias CMVideoFormatDescription = CMFormatDescription
typealias CMPixelFormatType = FourCharCode
var kCMPixelFormat_32ARGB: CMPixelFormatType { get }
var kCMPixelFormat_32BGRA: CMPixelFormatType { get }
var kCMPixelFormat_24RGB: CMPixelFormatType { get }
var kCMPixelFormat_16BE555: CMPixelFormatType { get }
var kCMPixelFormat_16BE565: CMPixelFormatType { get }
var kCMPixelFormat_16LE555: CMPixelFormatType { get }
var kCMPixelFormat_16LE565: CMPixelFormatType { get }
var kCMPixelFormat_16LE5551: CMPixelFormatType { get }
var kCMPixelFormat_422YpCbCr8: CMPixelFormatType { get }
var kCMPixelFormat_422YpCbCr8_yuvs: CMPixelFormatType { get }
var kCMPixelFormat_444YpCbCr8: CMPixelFormatType { get }
var kCMPixelFormat_4444YpCbCrA8: CMPixelFormatType { get }
var kCMPixelFormat_422YpCbCr16: CMPixelFormatType { get }
var kCMPixelFormat_422YpCbCr10: CMPixelFormatType { get }
var kCMPixelFormat_444YpCbCr10: CMPixelFormatType { get }
var kCMPixelFormat_8IndexedGray_WhiteIsZero: CMPixelFormatType { get }
typealias CMVideoCodecType = FourCharCode
var kCMVideoCodecType_422YpCbCr8: CMVideoCodecType { get }
var kCMVideoCodecType_Animation: CMVideoCodecType { get }
var kCMVideoCodecType_Cinepak: CMVideoCodecType { get }
var kCMVideoCodecType_JPEG: CMVideoCodecType { get }
var kCMVideoCodecType_JPEG_OpenDML: CMVideoCodecType { get }
var kCMVideoCodecType_SorensonVideo: CMVideoCodecType { get }
var kCMVideoCodecType_SorensonVideo3: CMVideoCodecType { get }
var kCMVideoCodecType_H263: CMVideoCodecType { get }
var kCMVideoCodecType_H264: CMVideoCodecType { get }
var kCMVideoCodecType_HEVC: CMVideoCodecType { get }
var kCMVideoCodecType_MPEG4Video: CMVideoCodecType { get }
var kCMVideoCodecType_MPEG2Video: CMVideoCodecType { get }
var kCMVideoCodecType_MPEG1Video: CMVideoCodecType { get }
var kCMVideoCodecType_DVCNTSC: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPAL: CMVideoCodecType { get }
var kCMVideoCodecType_DVCProPAL: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPro50NTSC: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPro50PAL: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPROHD720p60: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPROHD720p50: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPROHD1080i60: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPROHD1080i50: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPROHD1080p30: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPROHD1080p25: CMVideoCodecType { get }
var kCMVideoCodecType_AppleProRes4444: CMVideoCodecType { get }
var kCMVideoCodecType_AppleProRes422HQ: CMVideoCodecType { get }
var kCMVideoCodecType_AppleProRes422: CMVideoCodecType { get }
var kCMVideoCodecType_AppleProRes422LT: CMVideoCodecType { get }
var kCMVideoCodecType_AppleProRes422Proxy: CMVideoCodecType { get }
struct CMVideoDimensions {
  var width: Int32
  var height: Int32
  init()
  init(width: Int32, height: Int32)
}
@available(OSX 10.7, *)
let kCMFormatDescriptionExtension_FormatName: CFString
@available(OSX 10.7, *)
let kCMFormatDescriptionExtension_Depth: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionExtension_CleanAperture: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionKey_CleanApertureWidth: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionKey_CleanApertureHeight: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionKey_CleanApertureHorizontalOffset: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionKey_CleanApertureVerticalOffset: CFString
@available(OSX 10.7, *)
let kCMFormatDescriptionKey_CleanApertureWidthRational: CFString
@available(OSX 10.7, *)
let kCMFormatDescriptionKey_CleanApertureHeightRational: CFString
@available(OSX 10.7, *)
let kCMFormatDescriptionKey_CleanApertureHorizontalOffsetRational: CFString
@available(OSX 10.7, *)
let kCMFormatDescriptionKey_CleanApertureVerticalOffsetRational: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionExtension_FieldCount: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionExtension_FieldDetail: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionFieldDetail_TemporalTopFirst: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionFieldDetail_TemporalBottomFirst: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionFieldDetail_SpatialFirstLineEarly: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionFieldDetail_SpatialFirstLineLate: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionExtension_PixelAspectRatio: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionKey_PixelAspectRatioHorizontalSpacing: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionKey_PixelAspectRatioVerticalSpacing: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionExtension_ColorPrimaries: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionColorPrimaries_ITU_R_709_2: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionColorPrimaries_EBU_3213: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionColorPrimaries_SMPTE_C: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionColorPrimaries_DCI_P3: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionColorPrimaries_P3_D65: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionColorPrimaries_ITU_R_2020: CFString
@available(OSX 10.8, *)
let kCMFormatDescriptionColorPrimaries_P22: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionExtension_TransferFunction: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionTransferFunction_ITU_R_709_2: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionTransferFunction_SMPTE_240M_1995: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionTransferFunction_UseGamma: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionTransferFunction_ITU_R_2020: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionExtension_GammaLevel: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionExtension_YCbCrMatrix: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionYCbCrMatrix_ITU_R_709_2: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionYCbCrMatrix_ITU_R_601_4: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionYCbCrMatrix_SMPTE_240M_1995: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionYCbCrMatrix_ITU_R_2020: CFString
@available(OSX 10.7, *)
let kCMFormatDescriptionExtension_FullRangeVideo: CFString
@available(OSX 10.7, *)
let kCMFormatDescriptionExtension_ICCProfile: CFString
@available(OSX 10.7, *)
let kCMFormatDescriptionExtension_BytesPerRow: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionExtension_ChromaLocationTopField: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionExtension_ChromaLocationBottomField: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionChromaLocation_Left: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionChromaLocation_Center: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionChromaLocation_TopLeft: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionChromaLocation_Top: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionChromaLocation_BottomLeft: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionChromaLocation_Bottom: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionChromaLocation_DV420: CFString
@available(OSX 10.7, *)
let kCMFormatDescriptionConformsToMPEG2VideoProfile: CFString
var kCMMPEG2VideoProfile_HDV_720p30: Int32 { get }
var kCMMPEG2VideoProfile_HDV_1080i60: Int32 { get }
var kCMMPEG2VideoProfile_HDV_1080i50: Int32 { get }
var kCMMPEG2VideoProfile_HDV_720p24: Int32 { get }
var kCMMPEG2VideoProfile_HDV_720p25: Int32 { get }
var kCMMPEG2VideoProfile_HDV_1080p24: Int32 { get }
var kCMMPEG2VideoProfile_HDV_1080p25: Int32 { get }
var kCMMPEG2VideoProfile_HDV_1080p30: Int32 { get }
var kCMMPEG2VideoProfile_HDV_720p60: Int32 { get }
var kCMMPEG2VideoProfile_HDV_720p50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD_1080i60_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD_1080i50_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD_1080p24_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD_1080p25_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD_1080p30_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_720p24_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_720p25_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_720p30_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_720p50_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_720p60_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_1080i60_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_1080i50_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_1080p24_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_1080p25_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_1080p30_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_720p50_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_720p60_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_1080i60_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_1080i50_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_1080p24_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_1080p25_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_1080p30_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD_540p: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_540p: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_720p24_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_720p25_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_720p30_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XF: Int32 { get }
@available(OSX 10.7, *)
let kCMFormatDescriptionExtension_TemporalQuality: CFString
@available(OSX 10.7, *)
let kCMFormatDescriptionExtension_SpatialQuality: CFString
@available(OSX 10.11, *)
let kCMFormatDescriptionExtension_VerbatimImageDescription: CFString
@available(OSX 10.7, *)
let kCMFormatDescriptionExtension_Version: CFString
@available(OSX 10.7, *)
let kCMFormatDescriptionExtension_RevisionLevel: CFString
@available(OSX 10.7, *)
let kCMFormatDescriptionExtension_Vendor: CFString
@available(OSX 10.7, *)
let kCMFormatDescriptionVendor_Apple: CFString
@available(OSX 10.7, *)
func CMVideoFormatDescriptionCreate(allocator: CFAllocator?, _ codecType: CMVideoCodecType, _ width: Int32, _ height: Int32, _ extensions: CFDictionary?, _ outDesc: UnsafeMutablePointer<CMVideoFormatDescription?>) -> OSStatus
@available(OSX 10.7, *)
func CMVideoFormatDescriptionCreateForImageBuffer(allocator: CFAllocator?, _ imageBuffer: CVImageBuffer, _ outDesc: UnsafeMutablePointer<CMVideoFormatDescription?>) -> OSStatus
@available(OSX 10.9, *)
func CMVideoFormatDescriptionCreateFromH264ParameterSets(allocator: CFAllocator?, _ parameterSetCount: Int, _ parameterSetPointers: UnsafePointer<UnsafePointer<UInt8>>, _ parameterSetSizes: UnsafePointer<Int>, _ NALUnitHeaderLength: Int32, _ formatDescriptionOut: UnsafeMutablePointer<CMFormatDescription?>) -> OSStatus
@available(OSX 10.9, *)
func CMVideoFormatDescriptionGetH264ParameterSetAtIndex(videoDesc: CMFormatDescription, _ parameterSetIndex: Int, _ parameterSetPointerOut: UnsafeMutablePointer<UnsafePointer<UInt8>>, _ parameterSetSizeOut: UnsafeMutablePointer<Int>, _ parameterSetCountOut: UnsafeMutablePointer<Int>, _ NALUnitHeaderLengthOut: UnsafeMutablePointer<Int32>) -> OSStatus
@available(OSX 10.7, *)
func CMVideoFormatDescriptionGetDimensions(videoDesc: CMVideoFormatDescription) -> CMVideoDimensions
@available(OSX 10.7, *)
func CMVideoFormatDescriptionGetPresentationDimensions(videoDesc: CMVideoFormatDescription, _ usePixelAspectRatio: Bool, _ useCleanAperture: Bool) -> CGSize
@available(OSX 10.7, *)
func CMVideoFormatDescriptionGetCleanAperture(videoDesc: CMVideoFormatDescription, _ originIsAtTopLeft: Bool) -> CGRect
@available(OSX 10.7, *)
func CMVideoFormatDescriptionGetExtensionKeysCommonWithImageBuffers() -> CFArray
@available(OSX 10.7, *)
func CMVideoFormatDescriptionMatchesImageBuffer(desc: CMVideoFormatDescription, _ imageBuffer: CVImageBuffer) -> Bool
@available(*, deprecated, renamed="CMMuxedFormatDescription")
typealias CMMuxedFormatDescriptionRef = CMMuxedFormatDescription
typealias CMMuxedFormatDescription = CMFormatDescription
typealias CMMuxedStreamType = FourCharCode
var kCMMuxedStreamType_MPEG1System: CMMuxedStreamType { get }
var kCMMuxedStreamType_MPEG2Transport: CMMuxedStreamType { get }
var kCMMuxedStreamType_MPEG2Program: CMMuxedStreamType { get }
var kCMMuxedStreamType_DV: CMMuxedStreamType { get }
@available(OSX 10.7, *)
func CMMuxedFormatDescriptionCreate(allocator: CFAllocator?, _ muxType: CMMuxedStreamType, _ extensions: CFDictionary?, _ outDesc: UnsafeMutablePointer<CMMuxedFormatDescription?>) -> OSStatus
typealias CMClosedCaptionFormatDescription = CMFormatDescription
@available(*, deprecated, renamed="CMClosedCaptionFormatDescription")
typealias CMClosedCaptionFormatDescriptionRef = CMClosedCaptionFormatDescription
typealias CMClosedCaptionFormatType = FourCharCode
var kCMClosedCaptionFormatType_CEA608: CMClosedCaptionFormatType { get }
var kCMClosedCaptionFormatType_CEA708: CMClosedCaptionFormatType { get }
var kCMClosedCaptionFormatType_ATSC: CMClosedCaptionFormatType { get }
typealias CMTextFormatDescription = CMFormatDescription
@available(*, deprecated, renamed="CMTextFormatDescription")
typealias CMTextFormatDescriptionRef = CMTextFormatDescription
typealias CMTextFormatType = FourCharCode
var kCMTextFormatType_QTText: CMTextFormatType { get }
var kCMTextFormatType_3GText: CMTextFormatType { get }
typealias CMTextDisplayFlags = UInt32
var kCMTextDisplayFlag_scrollIn: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_scrollOut: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_scrollDirectionMask: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_scrollDirection_bottomToTop: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_scrollDirection_rightToLeft: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_scrollDirection_topToBottom: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_scrollDirection_leftToRight: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_continuousKaraoke: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_writeTextVertically: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_fillTextRegion: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_obeySubtitleFormatting: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_forcedSubtitlesPresent: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_allSubtitlesForced: CMTextDisplayFlags { get }
typealias CMTextJustificationValue = Int8
var kCMTextJustification_left_top: CMTextJustificationValue { get }
var kCMTextJustification_centered: CMTextJustificationValue { get }
var kCMTextJustification_bottom_right: CMTextJustificationValue { get }
@available(OSX 10.7, *)
let kCMTextFormatDescriptionExtension_DisplayFlags: CFString
@available(OSX 10.7, *)
let kCMTextFormatDescriptionExtension_BackgroundColor: CFString
@available(OSX 10.7, *)
let kCMTextFormatDescriptionColor_Red: CFString
@available(OSX 10.7, *)
let kCMTextFormatDescriptionColor_Green: CFString
@available(OSX 10.7, *)
let kCMTextFormatDescriptionColor_Blue: CFString
@available(OSX 10.7, *)
let kCMTextFormatDescriptionColor_Alpha: CFString
@available(OSX 10.7, *)
let kCMTextFormatDescriptionExtension_DefaultTextBox: CFString
@available(OSX 10.7, *)
let kCMTextFormatDescriptionRect_Top: CFString
@available(OSX 10.7, *)
let kCMTextFormatDescriptionRect_Left: CFString
@available(OSX 10.7, *)
let kCMTextFormatDescriptionRect_Bottom: CFString
@available(OSX 10.7, *)
let kCMTextFormatDescriptionRect_Right: CFString
@available(OSX 10.7, *)
let kCMTextFormatDescriptionExtension_DefaultStyle: CFString
@available(OSX 10.7, *)
let kCMTextFormatDescriptionStyle_StartChar: CFString
@available(OSX 10.7, *)
let kCMTextFormatDescriptionStyle_Font: CFString
@available(OSX 10.7, *)
let kCMTextFormatDescriptionStyle_FontFace: CFString
@available(OSX 10.7, *)
let kCMTextFormatDescriptionStyle_ForegroundColor: CFString
@available(OSX 10.7, *)
let kCMTextFormatDescriptionStyle_FontSize: CFString
@available(OSX 10.7, *)
let kCMTextFormatDescriptionExtension_HorizontalJustification: CFString
@available(OSX 10.7, *)
let kCMTextFormatDescriptionExtension_VerticalJustification: CFString
@available(OSX 10.7, *)
let kCMTextFormatDescriptionStyle_EndChar: CFString
@available(OSX 10.7, *)
let kCMTextFormatDescriptionExtension_FontTable: CFString
@available(OSX 10.7, *)
let kCMTextFormatDescriptionExtension_TextJustification: CFString
@available(OSX 10.7, *)
let kCMTextFormatDescriptionStyle_Height: CFString
@available(OSX 10.7, *)
let kCMTextFormatDescriptionStyle_Ascent: CFString
@available(OSX 10.7, *)
let kCMTextFormatDescriptionExtension_DefaultFontName: CFString
@available(OSX 10.7, *)
func CMTextFormatDescriptionGetDisplayFlags(desc: CMFormatDescription, _ outDisplayFlags: UnsafeMutablePointer<CMTextDisplayFlags>) -> OSStatus
@available(OSX 10.7, *)
func CMTextFormatDescriptionGetJustification(desc: CMFormatDescription, _ outHorizontalJust: UnsafeMutablePointer<CMTextJustificationValue>, _ outVerticalJust: UnsafeMutablePointer<CMTextJustificationValue>) -> OSStatus
@available(OSX 10.7, *)
func CMTextFormatDescriptionGetDefaultTextBox(desc: CMFormatDescription, _ originIsAtTopLeft: Bool, _ heightOfTextTrack: CGFloat, _ outDefaultTextBox: UnsafeMutablePointer<CGRect>) -> OSStatus
@available(OSX 10.7, *)
func CMTextFormatDescriptionGetDefaultStyle(desc: CMFormatDescription, _ outLocalFontID: UnsafeMutablePointer<UInt16>, _ outBold: UnsafeMutablePointer<DarwinBoolean>, _ outItalic: UnsafeMutablePointer<DarwinBoolean>, _ outUnderline: UnsafeMutablePointer<DarwinBoolean>, _ outFontSize: UnsafeMutablePointer<CGFloat>, _ outColorComponents: UnsafeMutablePointer<CGFloat>) -> OSStatus
@available(OSX 10.7, *)
func CMTextFormatDescriptionGetFontName(desc: CMFormatDescription, _ localFontID: UInt16, _ outFontName: AutoreleasingUnsafeMutablePointer<CFString?>) -> OSStatus
typealias CMSubtitleFormatType = FourCharCode
var kCMSubtitleFormatType_3GText: CMSubtitleFormatType { get }
var kCMSubtitleFormatType_WebVTT: CMSubtitleFormatType { get }
@available(*, deprecated, renamed="CMTimeCodeFormatDescription")
typealias CMTimeCodeFormatDescriptionRef = CMTimeCodeFormatDescription
typealias CMTimeCodeFormatDescription = CMFormatDescription
typealias CMTimeCodeFormatType = FourCharCode
var kCMTimeCodeFormatType_TimeCode32: CMTimeCodeFormatType { get }
var kCMTimeCodeFormatType_TimeCode64: CMTimeCodeFormatType { get }
var kCMTimeCodeFormatType_Counter32: CMTimeCodeFormatType { get }
var kCMTimeCodeFormatType_Counter64: CMTimeCodeFormatType { get }
var kCMTimeCodeFlag_DropFrame: UInt32 { get }
var kCMTimeCodeFlag_24HourMax: UInt32 { get }
var kCMTimeCodeFlag_NegTimesOK: UInt32 { get }
@available(OSX 10.7, *)
func CMTimeCodeFormatDescriptionCreate(allocator: CFAllocator?, _ timeCodeFormatType: CMTimeCodeFormatType, _ frameDuration: CMTime, _ frameQuanta: UInt32, _ tcFlags: UInt32, _ extensions: CFDictionary?, _ descOut: UnsafeMutablePointer<CMTimeCodeFormatDescription?>) -> OSStatus
@available(OSX 10.7, *)
func CMTimeCodeFormatDescriptionGetFrameDuration(timeCodeFormatDescription: CMTimeCodeFormatDescription) -> CMTime
@available(OSX 10.7, *)
func CMTimeCodeFormatDescriptionGetFrameQuanta(timeCodeFormatDescription: CMTimeCodeFormatDescription) -> UInt32
@available(OSX 10.7, *)
func CMTimeCodeFormatDescriptionGetTimeCodeFlags(desc: CMTimeCodeFormatDescription) -> UInt32
@available(OSX 10.7, *)
let kCMTimeCodeFormatDescriptionExtension_SourceReferenceName: CFString
@available(OSX 10.7, *)
let kCMTimeCodeFormatDescriptionKey_Value: CFString
@available(OSX 10.7, *)
let kCMTimeCodeFormatDescriptionKey_LangCode: CFString
@available(*, deprecated, renamed="CMMetadataFormatDescription")
typealias CMMetadataFormatDescriptionRef = CMMetadataFormatDescription
typealias CMMetadataFormatDescription = CMFormatDescription
typealias CMMetadataFormatType = FourCharCode
var kCMMetadataFormatType_ICY: CMMetadataFormatType { get }
var kCMMetadataFormatType_ID3: CMMetadataFormatType { get }
var kCMMetadataFormatType_Boxed: CMMetadataFormatType { get }
@available(OSX 10.7, *)
let kCMFormatDescriptionExtensionKey_MetadataKeyTable: CFString
@available(OSX 10.7, *)
let kCMMetadataFormatDescriptionKey_Namespace: CFString
@available(OSX 10.7, *)
let kCMMetadataFormatDescriptionKey_Value: CFString
@available(OSX 10.7, *)
let kCMMetadataFormatDescriptionKey_LocalID: CFString
@available(OSX 10.10, *)
let kCMMetadataFormatDescriptionKey_DataType: CFString
@available(OSX 10.10, *)
let kCMMetadataFormatDescriptionKey_DataTypeNamespace: CFString
@available(OSX 10.10, *)
let kCMMetadataFormatDescriptionKey_ConformingDataTypes: CFString
@available(OSX 10.10, *)
let kCMMetadataFormatDescriptionKey_LanguageTag: CFString
@available(OSX 10.11, *)
let kCMMetadataFormatDescriptionKey_StructuralDependency: CFString
@available(OSX 10.11, *)
let kCMMetadataFormatDescription_StructuralDependencyKey_DependencyIsInvalidFlag: CFString
@available(OSX 10.10, *)
let kCMMetadataFormatDescriptionMetadataSpecificationKey_Identifier: CFString
@available(OSX 10.10, *)
let kCMMetadataFormatDescriptionMetadataSpecificationKey_DataType: CFString
@available(OSX 10.10, *)
let kCMMetadataFormatDescriptionMetadataSpecificationKey_ExtendedLanguageTag: CFString
@available(OSX 10.11, *)
let kCMMetadataFormatDescriptionMetadataSpecificationKey_StructuralDependency: CFString
@available(OSX 10.7, *)
func CMMetadataFormatDescriptionCreateWithKeys(allocator: CFAllocator?, _ metadataType: CMMetadataFormatType, _ keys: CFArray?, _ outDesc: UnsafeMutablePointer<CMMetadataFormatDescription?>) -> OSStatus
@available(OSX 10.10, *)
func CMMetadataFormatDescriptionCreateWithMetadataSpecifications(allocator: CFAllocator?, _ metadataType: CMMetadataFormatType, _ metadataSpecifications: CFArray, _ outDesc: UnsafeMutablePointer<CMMetadataFormatDescription?>) -> OSStatus
@available(OSX 10.10, *)
func CMMetadataFormatDescriptionCreateWithMetadataFormatDescriptionAndMetadataSpecifications(allocator: CFAllocator?, _ srcDesc: CMMetadataFormatDescription, _ metadataSpecifications: CFArray, _ outDesc: UnsafeMutablePointer<CMMetadataFormatDescription?>) -> OSStatus
@available(OSX 10.10, *)
func CMMetadataFormatDescriptionCreateByMergingMetadataFormatDescriptions(allocator: CFAllocator?, _ srcDesc1: CMMetadataFormatDescription, _ srcDesc2: CMMetadataFormatDescription, _ outDesc: UnsafeMutablePointer<CMMetadataFormatDescription?>) -> OSStatus
@available(OSX 10.7, *)
func CMMetadataFormatDescriptionGetKeyWithLocalID(desc: CMMetadataFormatDescription, _ localKeyID: OSType) -> CFDictionary?
@available(OSX 10.10, *)
func CMMetadataFormatDescriptionGetIdentifiers(desc: CMMetadataFormatDescription) -> CFArray?