
@available(tvOS 4.0, *)
class AVAudioMix : NSObject, NSCopying, NSMutableCopying {
  var inputParameters: [AVAudioMixInputParameters] { get }
  init()
  @available(tvOS 4.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(tvOS 4.0, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
}
@available(tvOS 4.0, *)
class AVMutableAudioMix : AVAudioMix {
  var inputParameters: [AVAudioMixInputParameters]
  init()
}
@available(tvOS 4.0, *)
class AVAudioMixInputParameters : NSObject, NSCopying, NSMutableCopying {
  var trackID: CMPersistentTrackID { get }
  @available(tvOS 7.0, *)
  var audioTimePitchAlgorithm: String? { get }
  @available(tvOS 6.0, *)
  var audioTapProcessor: MTAudioProcessingTap? { get }
  func getVolumeRamp(for time: CMTime, startVolume: UnsafeMutablePointer<Float>, endVolume: UnsafeMutablePointer<Float>, timeRange: UnsafeMutablePointer<CMTimeRange>) -> Bool
  init()
  @available(tvOS 4.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(tvOS 4.0, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
}
@available(tvOS 4.0, *)
class AVMutableAudioMixInputParameters : AVAudioMixInputParameters {
  convenience init(track: AVAssetTrack?)
  var trackID: CMPersistentTrackID
  @available(tvOS 7.0, *)
  var audioTimePitchAlgorithm: String?
  @available(tvOS 6.0, *)
  var audioTapProcessor: MTAudioProcessingTap?
  func setVolumeRampFromStartVolume(startVolume: Float, toEndVolume endVolume: Float, timeRange: CMTimeRange)
  func setVolume(volume: Float, at time: CMTime)
  init()
}
