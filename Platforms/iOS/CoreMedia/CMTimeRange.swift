
struct CMTimeRange {
  var start: CMTime
  var duration: CMTime
  init()
  init(start: CMTime, duration: CMTime)
}

extension CMTimeRange {
  init(start: CMTime, end: CMTime)
  var isValid: Bool { get }
  var isIndefinite: Bool { get }
  var isEmpty: Bool { get }
  var end: CMTime { get }
  @warn_unused_result
  func union(otherRange: CMTimeRange) -> CMTimeRange
  @warn_unused_result
  func intersection(otherRange: CMTimeRange) -> CMTimeRange
  @warn_unused_result
  func containsTime(time: CMTime) -> Bool
  @warn_unused_result
  func containsTimeRange(range: CMTimeRange) -> Bool
}

extension CMTimeRange : Equatable {
}
@available(iOS 4.0, *)
let kCMTimeRangeZero: CMTimeRange
@available(iOS 4.0, *)
let kCMTimeRangeInvalid: CMTimeRange
@available(iOS 4.0, *)
func CMTimeRangeMake(start: CMTime, _ duration: CMTime) -> CMTimeRange
@available(iOS 4.0, *)
func CMTimeRangeGetUnion(range1: CMTimeRange, _ range2: CMTimeRange) -> CMTimeRange
@available(iOS 4.0, *)
func CMTimeRangeGetIntersection(range1: CMTimeRange, _ range2: CMTimeRange) -> CMTimeRange
@available(iOS 4.0, *)
func CMTimeRangeEqual(range1: CMTimeRange, _ range2: CMTimeRange) -> Bool
@available(iOS 4.0, *)
func CMTimeRangeContainsTime(range: CMTimeRange, _ time: CMTime) -> Bool
@available(iOS 4.0, *)
func CMTimeRangeContainsTimeRange(range1: CMTimeRange, _ range2: CMTimeRange) -> Bool
@available(iOS 4.0, *)
func CMTimeRangeGetEnd(range: CMTimeRange) -> CMTime
@available(iOS 4.0, *)
func CMTimeMapTimeFromRangeToRange(t: CMTime, _ fromRange: CMTimeRange, _ toRange: CMTimeRange) -> CMTime
@available(iOS 4.0, *)
func CMTimeClampToRange(time: CMTime, _ range: CMTimeRange) -> CMTime
@available(iOS 4.0, *)
func CMTimeMapDurationFromRangeToRange(dur: CMTime, _ fromRange: CMTimeRange, _ toRange: CMTimeRange) -> CMTime
@available(iOS 4.0, *)
func CMTimeRangeFromTimeToTime(start: CMTime, _ end: CMTime) -> CMTimeRange
@available(iOS 4.0, *)
func CMTimeRangeCopyAsDictionary(range: CMTimeRange, _ allocator: CFAllocator?) -> CFDictionary?
@available(iOS 4.0, *)
func CMTimeRangeMakeFromDictionary(dict: CFDictionary) -> CMTimeRange
@available(iOS 4.0, *)
let kCMTimeRangeStartKey: CFString
@available(iOS 4.0, *)
let kCMTimeRangeDurationKey: CFString
@available(iOS 4.0, *)
func CMTimeRangeCopyDescription(allocator: CFAllocator?, _ range: CMTimeRange) -> CFString?
@available(iOS 4.0, *)
func CMTimeRangeShow(range: CMTimeRange)
struct CMTimeMapping {
  var source: CMTimeRange
  var target: CMTimeRange
  init()
  init(source: CMTimeRange, target: CMTimeRange)
}
@available(iOS 9.0, *)
let kCMTimeMappingInvalid: CMTimeMapping
@available(iOS 9.0, *)
func CMTimeMappingMake(source: CMTimeRange, _ target: CMTimeRange) -> CMTimeMapping
@available(iOS 9.0, *)
func CMTimeMappingMakeEmpty(target: CMTimeRange) -> CMTimeMapping
@available(iOS 9.0, *)
func CMTimeMappingCopyAsDictionary(mapping: CMTimeMapping, _ allocator: CFAllocator?) -> CFDictionary?
@available(iOS 9.0, *)
func CMTimeMappingMakeFromDictionary(dict: CFDictionary) -> CMTimeMapping
@available(iOS 9.0, *)
let kCMTimeMappingSourceKey: CFString
@available(iOS 9.0, *)
let kCMTimeMappingTargetKey: CFString
@available(iOS 9.0, *)
func CMTimeMappingCopyDescription(allocator: CFAllocator?, _ mapping: CMTimeMapping) -> CFString?
@available(iOS 9.0, *)
func CMTimeMappingShow(mapping: CMTimeMapping)
