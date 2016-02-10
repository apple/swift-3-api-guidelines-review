
@available(tvOS 4.0, *)
class AVAudioMix : Object, Copying, MutableCopying {
  var inputParameters: [AVAudioMixInputParameters] { get }
  init()
  @available(tvOS 4.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(tvOS 4.0, *)
  func mutableCopy(with zone: Zone = nil) -> AnyObject
}
@available(tvOS 4.0, *)
class AVMutableAudioMix : AVAudioMix {
  var inputParameters: [AVAudioMixInputParameters]
  init()
}
@available(tvOS 4.0, *)
class AVAudioMixInputParameters : Object, Copying, MutableCopying {
  var trackID: CMPersistentTrackID { get }
  @available(tvOS 7.0, *)
  var audioTimePitchAlgorithm: String? { get }
  @available(tvOS 6.0, *)
  var audioTapProcessor: MTAudioProcessingTap? { get }
  func getVolumeRampFor(time: CMTime, startVolume: UnsafeMutablePointer<Float>, endVolume: UnsafeMutablePointer<Float>, timeRange: UnsafeMutablePointer<CMTimeRange>) -> Bool
  init()
  @available(tvOS 4.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(tvOS 4.0, *)
  func mutableCopy(with zone: Zone = nil) -> AnyObject
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
