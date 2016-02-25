
@available(OSX 10.7, *)
class AVAudioMix : NSObject, NSCopying, NSMutableCopying {
  var inputParameters: [AVAudioMixInputParameters] { get }
  @available(OSX 10.7, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
}
@available(OSX 10.7, *)
class AVMutableAudioMix : AVAudioMix {
}
@available(OSX 10.7, *)
class AVAudioMixInputParameters : NSObject, NSCopying, NSMutableCopying {
  var trackID: CMPersistentTrackID { get }
  @available(OSX 10.10, *)
  var audioTimePitchAlgorithm: String? { get }
  @available(OSX 10.9, *)
  var audioTapProcessor: MTAudioProcessingTap? { get }
  func getVolumeRampForTime(_ time: CMTime, startVolume startVolume: UnsafeMutablePointer<Float>, endVolume endVolume: UnsafeMutablePointer<Float>, timeRange timeRange: UnsafeMutablePointer<CMTimeRange>) -> Bool
  @available(OSX 10.7, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
}
@available(OSX 10.7, *)
class AVMutableAudioMixInputParameters : AVAudioMixInputParameters {
  convenience init(track track: AVAssetTrack?)
  func setVolumeRampFromStartVolume(_ startVolume: Float, toEndVolume endVolume: Float, timeRange timeRange: CMTimeRange)
  func setVolume(_ volume: Float, atTime time: CMTime)
}
