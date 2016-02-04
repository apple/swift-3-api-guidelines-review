
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
@available(OSX 10.7, *)
let kCMTimeRangeZero: CMTimeRange
@available(OSX 10.7, *)
let kCMTimeRangeInvalid: CMTimeRange
@available(OSX 10.7, *)
func CMTimeRangeMake(start: CMTime, _ duration: CMTime) -> CMTimeRange
@available(OSX 10.7, *)
func CMTimeRangeGetUnion(range1: CMTimeRange, _ range2: CMTimeRange) -> CMTimeRange
@available(OSX 10.7, *)
func CMTimeRangeGetIntersection(range1: CMTimeRange, _ range2: CMTimeRange) -> CMTimeRange
@available(OSX 10.7, *)
func CMTimeRangeEqual(range1: CMTimeRange, _ range2: CMTimeRange) -> Bool
@available(OSX 10.7, *)
func CMTimeRangeContainsTime(range: CMTimeRange, _ time: CMTime) -> Bool
@available(OSX 10.7, *)
func CMTimeRangeContainsTimeRange(range1: CMTimeRange, _ range2: CMTimeRange) -> Bool
@available(OSX 10.7, *)
func CMTimeRangeGetEnd(range: CMTimeRange) -> CMTime
@available(OSX 10.7, *)
func CMTimeMapTimeFromRangeToRange(t: CMTime, _ fromRange: CMTimeRange, _ toRange: CMTimeRange) -> CMTime
@available(OSX 10.7, *)
func CMTimeClampToRange(time: CMTime, _ range: CMTimeRange) -> CMTime
@available(OSX 10.7, *)
func CMTimeMapDurationFromRangeToRange(dur: CMTime, _ fromRange: CMTimeRange, _ toRange: CMTimeRange) -> CMTime
@available(OSX 10.7, *)
func CMTimeRangeFromTimeToTime(start: CMTime, _ end: CMTime) -> CMTimeRange
@available(OSX 10.7, *)
func CMTimeRangeCopyAsDictionary(range: CMTimeRange, _ allocator: CFAllocator?) -> CFDictionary?
@available(OSX 10.7, *)
func CMTimeRangeMakeFromDictionary(dict: CFDictionary) -> CMTimeRange
@available(OSX 10.7, *)
let kCMTimeRangeStartKey: CFString
@available(OSX 10.7, *)
let kCMTimeRangeDurationKey: CFString
@available(OSX 10.7, *)
func CMTimeRangeCopyDescription(allocator: CFAllocator?, _ range: CMTimeRange) -> CFString?
@available(OSX 10.7, *)
func CMTimeRangeShow(range: CMTimeRange)
struct CMTimeMapping {
  var source: CMTimeRange
  var target: CMTimeRange
  init()
  init(source: CMTimeRange, target: CMTimeRange)
}
@available(OSX 10.11, *)
let kCMTimeMappingInvalid: CMTimeMapping
@available(OSX 10.11, *)
func CMTimeMappingMake(source: CMTimeRange, _ target: CMTimeRange) -> CMTimeMapping
@available(OSX 10.11, *)
func CMTimeMappingMakeEmpty(target: CMTimeRange) -> CMTimeMapping
@available(OSX 10.11, *)
func CMTimeMappingCopyAsDictionary(mapping: CMTimeMapping, _ allocator: CFAllocator?) -> CFDictionary?
@available(OSX 10.11, *)
func CMTimeMappingMakeFromDictionary(dict: CFDictionary) -> CMTimeMapping
@available(OSX 10.11, *)
let kCMTimeMappingSourceKey: CFString
@available(OSX 10.11, *)
let kCMTimeMappingTargetKey: CFString
@available(OSX 10.11, *)
func CMTimeMappingCopyDescription(allocator: CFAllocator?, _ mapping: CMTimeMapping) -> CFString?
@available(OSX 10.11, *)
func CMTimeMappingShow(mapping: CMTimeMapping)
