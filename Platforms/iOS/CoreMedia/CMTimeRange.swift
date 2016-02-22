
struct CMTimeRange {
  var start: CMTime
  var duration: CMTime
  init()
  init(start start: CMTime, duration duration: CMTime)
}

extension CMTimeRange {
  init(start start: CMTime, end end: CMTime)
  var isValid: Bool { get }
  var isIndefinite: Bool { get }
  var isEmpty: Bool { get }
  var end: CMTime { get }
  @warn_unused_result
  func union(_ otherRange: CMTimeRange) -> CMTimeRange
  @warn_unused_result
  func intersection(_ otherRange: CMTimeRange) -> CMTimeRange
  @warn_unused_result
  func containsTime(_ time: CMTime) -> Bool
  @warn_unused_result
  func containsTimeRange(_ range: CMTimeRange) -> Bool
}

extension CMTimeRange : Equatable {
}
@available(iOS 4.0, *)
let kCMTimeRangeZero: CMTimeRange
@available(iOS 4.0, *)
let kCMTimeRangeInvalid: CMTimeRange
@available(iOS 4.0, *)
func CMTimeRangeMake(_ start: CMTime, _ duration: CMTime) -> CMTimeRange
@available(iOS 4.0, *)
func CMTimeRangeGetUnion(_ range1: CMTimeRange, _ range2: CMTimeRange) -> CMTimeRange
@available(iOS 4.0, *)
func CMTimeRangeGetIntersection(_ range1: CMTimeRange, _ range2: CMTimeRange) -> CMTimeRange
@available(iOS 4.0, *)
func CMTimeRangeEqual(_ range1: CMTimeRange, _ range2: CMTimeRange) -> Bool
@available(iOS 4.0, *)
func CMTimeRangeContainsTime(_ range: CMTimeRange, _ time: CMTime) -> Bool
@available(iOS 4.0, *)
func CMTimeRangeContainsTimeRange(_ range1: CMTimeRange, _ range2: CMTimeRange) -> Bool
@available(iOS 4.0, *)
func CMTimeRangeGetEnd(_ range: CMTimeRange) -> CMTime
@available(iOS 4.0, *)
func CMTimeMapTimeFromRangeToRange(_ t: CMTime, _ fromRange: CMTimeRange, _ toRange: CMTimeRange) -> CMTime
@available(iOS 4.0, *)
func CMTimeClampToRange(_ time: CMTime, _ range: CMTimeRange) -> CMTime
@available(iOS 4.0, *)
func CMTimeMapDurationFromRangeToRange(_ dur: CMTime, _ fromRange: CMTimeRange, _ toRange: CMTimeRange) -> CMTime
@available(iOS 4.0, *)
func CMTimeRangeFromTimeToTime(_ start: CMTime, _ end: CMTime) -> CMTimeRange
@available(iOS 4.0, *)
func CMTimeRangeCopyAsDictionary(_ range: CMTimeRange, _ allocator: CFAllocator?) -> CFDictionary?
@available(iOS 4.0, *)
func CMTimeRangeMakeFromDictionary(_ dict: CFDictionary) -> CMTimeRange
@available(iOS 4.0, *)
let kCMTimeRangeStartKey: CFString
@available(iOS 4.0, *)
let kCMTimeRangeDurationKey: CFString
@available(iOS 4.0, *)
func CMTimeRangeCopyDescription(_ allocator: CFAllocator?, _ range: CMTimeRange) -> CFString?
@available(iOS 4.0, *)
func CMTimeRangeShow(_ range: CMTimeRange)
struct CMTimeMapping {
  var source: CMTimeRange
  var target: CMTimeRange
  init()
  init(source source: CMTimeRange, target target: CMTimeRange)
}
@available(iOS 9.0, *)
let kCMTimeMappingInvalid: CMTimeMapping
@available(iOS 9.0, *)
func CMTimeMappingMake(_ source: CMTimeRange, _ target: CMTimeRange) -> CMTimeMapping
@available(iOS 9.0, *)
func CMTimeMappingMakeEmpty(_ target: CMTimeRange) -> CMTimeMapping
@available(iOS 9.0, *)
func CMTimeMappingCopyAsDictionary(_ mapping: CMTimeMapping, _ allocator: CFAllocator?) -> CFDictionary?
@available(iOS 9.0, *)
func CMTimeMappingMakeFromDictionary(_ dict: CFDictionary) -> CMTimeMapping
@available(iOS 9.0, *)
let kCMTimeMappingSourceKey: CFString
@available(iOS 9.0, *)
let kCMTimeMappingTargetKey: CFString
@available(iOS 9.0, *)
func CMTimeMappingCopyDescription(_ allocator: CFAllocator?, _ mapping: CMTimeMapping) -> CFString?
@available(iOS 9.0, *)
func CMTimeMappingShow(_ mapping: CMTimeMapping)
