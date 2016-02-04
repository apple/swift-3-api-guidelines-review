
var COREVIDEO_SUPPORTS_DIRECT3D: Int32 { get }
var COREVIDEO_DECLARE_NULLABILITY: Int32 { get }
typealias CVOptionFlags = UInt64
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
