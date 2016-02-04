
@available(OSX 10.7, *)
class AVAudioMix : NSObject, NSCopying, NSMutableCopying {
  var inputParameters: [AVAudioMixInputParameters] { get }
  init()
  @available(OSX 10.7, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
}
@available(OSX 10.7, *)
class AVMutableAudioMix : AVAudioMix {
  var inputParameters: [AVAudioMixInputParameters]
  init()
}
@available(OSX 10.7, *)
class AVAudioMixInputParameters : NSObject, NSCopying, NSMutableCopying {
  var trackID: CMPersistentTrackID { get }
  @available(OSX 10.10, *)
  var audioTimePitchAlgorithm: String? { get }
  @available(OSX 10.9, *)
  var audioTapProcessor: MTAudioProcessingTap? { get }
  func getVolumeRampForTime(time: CMTime, startVolume: UnsafeMutablePointer<Float>, endVolume: UnsafeMutablePointer<Float>, timeRange: UnsafeMutablePointer<CMTimeRange>) -> Bool
  init()
  @available(OSX 10.7, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
}
@available(OSX 10.7, *)
class AVMutableAudioMixInputParameters : AVAudioMixInputParameters {
  convenience init(track: AVAssetTrack?)
  var trackID: CMPersistentTrackID
  @available(OSX 10.10, *)
  var audioTimePitchAlgorithm: String?
  @available(OSX 10.9, *)
  var audioTapProcessor: MTAudioProcessingTap?
  func setVolumeRampFromStartVolume(startVolume: Float, toEndVolume endVolume: Float, timeRange: CMTimeRange)
  func setVolume(volume: Float, atTime time: CMTime)
  init()
}
