
typealias CMTimeValue = Int64
typealias CMTimeScale = Int32
var kCMTimeMaxTimescale: Int { get }
typealias CMTimeEpoch = Int64
struct CMTimeFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Valid: CMTimeFlags { get }
  static var HasBeenRounded: CMTimeFlags { get }
  static var PositiveInfinity: CMTimeFlags { get }
  static var NegativeInfinity: CMTimeFlags { get }
  static var Indefinite: CMTimeFlags { get }
  static var ImpliedValueFlagsMask: CMTimeFlags { get }
}
struct CMTime {
  var value: CMTimeValue
  var timescale: CMTimeScale
  var flags: CMTimeFlags
  var epoch: CMTimeEpoch
  init()
  init(value: CMTimeValue, timescale: CMTimeScale, flags: CMTimeFlags, epoch: CMTimeEpoch)
}

extension CMTime {
  init(seconds: Double, preferredTimescale: CMTimeScale)
  init(value: CMTimeValue, timescale: CMTimeScale)
}

extension CMTime {
  var isValid: Bool { get }
  var isPositiveInfinity: Bool { get }
  var isNegativeInfinity: Bool { get }
  var isIndefinite: Bool { get }
  var isNumeric: Bool { get }
  var hasBeenRounded: Bool { get }
  var seconds: Double { get }
  func convertScale(newTimescale: Int32, method: CMTimeRoundingMethod) -> CMTime
}

extension CMTime : Equatable, Comparable {
}
@available(OSX 10.7, *)
let kCMTimeInvalid: CMTime
@available(OSX 10.7, *)
let kCMTimeIndefinite: CMTime
@available(OSX 10.7, *)
let kCMTimePositiveInfinity: CMTime
@available(OSX 10.7, *)
let kCMTimeNegativeInfinity: CMTime
@available(OSX 10.7, *)
let kCMTimeZero: CMTime
@available(OSX 10.7, *)
func CMTimeMake(value: Int64, _ timescale: Int32) -> CMTime
@available(OSX 10.7, *)
func CMTimeMakeWithEpoch(value: Int64, _ timescale: Int32, _ epoch: Int64) -> CMTime
@available(OSX 10.7, *)
func CMTimeMakeWithSeconds(seconds: Float64, _ preferredTimeScale: Int32) -> CMTime
@available(OSX 10.7, *)
func CMTimeGetSeconds(time: CMTime) -> Float64
enum CMTimeRoundingMethod : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case RoundHalfAwayFromZero
  case RoundTowardZero
  case RoundAwayFromZero
  case QuickTime
  case RoundTowardPositiveInfinity
  case RoundTowardNegativeInfinity
  static var Default: CMTimeRoundingMethod { get }
}
@available(OSX 10.7, *)
func CMTimeConvertScale(time: CMTime, _ newTimescale: Int32, _ method: CMTimeRoundingMethod) -> CMTime
@available(OSX 10.7, *)
func CMTimeAdd(addend1: CMTime, _ addend2: CMTime) -> CMTime
@available(OSX 10.7, *)
func CMTimeSubtract(minuend: CMTime, _ subtrahend: CMTime) -> CMTime
@available(OSX 10.7, *)
func CMTimeMultiply(time: CMTime, _ multiplier: Int32) -> CMTime
@available(OSX 10.7, *)
func CMTimeMultiplyByFloat64(time: CMTime, _ multiplier: Float64) -> CMTime
@available(OSX 10.10, *)
func CMTimeMultiplyByRatio(time: CMTime, _ multiplier: Int32, _ divisor: Int32) -> CMTime
@available(OSX 10.7, *)
func CMTimeCompare(time1: CMTime, _ time2: CMTime) -> Int32
@available(OSX 10.7, *)
func CMTimeMinimum(time1: CMTime, _ time2: CMTime) -> CMTime
@available(OSX 10.7, *)
func CMTimeMaximum(time1: CMTime, _ time2: CMTime) -> CMTime
@available(OSX 10.7, *)
func CMTimeAbsoluteValue(time: CMTime) -> CMTime
@available(OSX 10.7, *)
func CMTimeCopyAsDictionary(time: CMTime, _ allocator: CFAllocator?) -> CFDictionary?
@available(OSX 10.7, *)
func CMTimeMakeFromDictionary(dict: CFDictionary?) -> CMTime
@available(OSX 10.7, *)
let kCMTimeValueKey: CFString
@available(OSX 10.7, *)
let kCMTimeScaleKey: CFString
@available(OSX 10.7, *)
let kCMTimeEpochKey: CFString
@available(OSX 10.7, *)
let kCMTimeFlagsKey: CFString
@available(OSX 10.7, *)
func CMTimeCopyDescription(allocator: CFAllocator?, _ time: CMTime) -> CFString?
@available(OSX 10.7, *)
func CMTimeShow(time: CMTime)
