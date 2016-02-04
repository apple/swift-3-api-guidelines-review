
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
