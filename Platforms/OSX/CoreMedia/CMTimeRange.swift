
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
@available(OSX 10.7, *)
let kCMTimeRangeZero: CMTimeRange
@available(OSX 10.7, *)
let kCMTimeRangeInvalid: CMTimeRange
@available(OSX 10.7, *)
func CMTimeRangeMake(_ start: CMTime, _ duration: CMTime) -> CMTimeRange
@available(OSX 10.7, *)
func CMTimeRangeGetUnion(_ range1: CMTimeRange, _ range2: CMTimeRange) -> CMTimeRange
@available(OSX 10.7, *)
func CMTimeRangeGetIntersection(_ range1: CMTimeRange, _ range2: CMTimeRange) -> CMTimeRange
@available(OSX 10.7, *)
func CMTimeRangeEqual(_ range1: CMTimeRange, _ range2: CMTimeRange) -> Bool
@available(OSX 10.7, *)
func CMTimeRangeContainsTime(_ range: CMTimeRange, _ time: CMTime) -> Bool
@available(OSX 10.7, *)
func CMTimeRangeContainsTimeRange(_ range1: CMTimeRange, _ range2: CMTimeRange) -> Bool
@available(OSX 10.7, *)
func CMTimeRangeGetEnd(_ range: CMTimeRange) -> CMTime
@available(OSX 10.7, *)
func CMTimeMapTimeFromRangeToRange(_ t: CMTime, _ fromRange: CMTimeRange, _ toRange: CMTimeRange) -> CMTime
@available(OSX 10.7, *)
func CMTimeClampToRange(_ time: CMTime, _ range: CMTimeRange) -> CMTime
@available(OSX 10.7, *)
func CMTimeMapDurationFromRangeToRange(_ dur: CMTime, _ fromRange: CMTimeRange, _ toRange: CMTimeRange) -> CMTime
@available(OSX 10.7, *)
func CMTimeRangeFromTimeToTime(_ start: CMTime, _ end: CMTime) -> CMTimeRange
@available(OSX 10.7, *)
func CMTimeRangeCopyAsDictionary(_ range: CMTimeRange, _ allocator: CFAllocator?) -> CFDictionary?
@available(OSX 10.7, *)
func CMTimeRangeMakeFromDictionary(_ dict: CFDictionary) -> CMTimeRange
@available(OSX 10.7, *)
let kCMTimeRangeStartKey: CFString
@available(OSX 10.7, *)
let kCMTimeRangeDurationKey: CFString
@available(OSX 10.7, *)
func CMTimeRangeCopyDescription(_ allocator: CFAllocator?, _ range: CMTimeRange) -> CFString?
@available(OSX 10.7, *)
func CMTimeRangeShow(_ range: CMTimeRange)
struct CMTimeMapping {
  var source: CMTimeRange
  var target: CMTimeRange
  init()
  init(source source: CMTimeRange, target target: CMTimeRange)
}
@available(OSX 10.11, *)
let kCMTimeMappingInvalid: CMTimeMapping
@available(OSX 10.11, *)
func CMTimeMappingMake(_ source: CMTimeRange, _ target: CMTimeRange) -> CMTimeMapping
@available(OSX 10.11, *)
func CMTimeMappingMakeEmpty(_ target: CMTimeRange) -> CMTimeMapping
@available(OSX 10.11, *)
func CMTimeMappingCopyAsDictionary(_ mapping: CMTimeMapping, _ allocator: CFAllocator?) -> CFDictionary?
@available(OSX 10.11, *)
func CMTimeMappingMakeFromDictionary(_ dict: CFDictionary) -> CMTimeMapping
@available(OSX 10.11, *)
let kCMTimeMappingSourceKey: CFString
@available(OSX 10.11, *)
let kCMTimeMappingTargetKey: CFString
@available(OSX 10.11, *)
func CMTimeMappingCopyDescription(_ allocator: CFAllocator?, _ mapping: CMTimeMapping) -> CFString?
@available(OSX 10.11, *)
func CMTimeMappingShow(_ mapping: CMTimeMapping)
