
@available(iOS 4.0, *)
class AVAudioMix : Object, Copying, MutableCopying {
  var inputParameters: [AVAudioMixInputParameters] { get }
  init()
  @available(iOS 4.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
  @available(iOS 4.0, *)
  func mutableCopy(withZone zone: Zone = nil) -> AnyObject
}
@available(iOS 4.0, *)
class AVMutableAudioMix : AVAudioMix {
  var inputParameters: [AVAudioMixInputParameters]
  init()
}
@available(iOS 4.0, *)
class AVAudioMixInputParameters : Object, Copying, MutableCopying {
  var trackID: CMPersistentTrackID { get }
  @available(iOS 7.0, *)
  var audioTimePitchAlgorithm: String? { get }
  @available(iOS 6.0, *)
  var audioTapProcessor: MTAudioProcessingTap? { get }
  func getVolumeRampFor(time: CMTime, startVolume: UnsafeMutablePointer<Float>, endVolume: UnsafeMutablePointer<Float>, timeRange: UnsafeMutablePointer<CMTimeRange>) -> Bool
  init()
  @available(iOS 4.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
  @available(iOS 4.0, *)
  func mutableCopy(withZone zone: Zone = nil) -> AnyObject
}
@available(iOS 4.0, *)
class AVMutableAudioMixInputParameters : AVAudioMixInputParameters {
  convenience init(track: AVAssetTrack?)
  var trackID: CMPersistentTrackID
  @available(iOS 7.0, *)
  var audioTimePitchAlgorithm: String?
  @available(iOS 6.0, *)
  var audioTapProcessor: MTAudioProcessingTap?
  func setVolumeRampFromStartVolume(startVolume: Float, toEndVolume endVolume: Float, timeRange: CMTimeRange)
  func setVolume(volume: Float, at time: CMTime)
  init()
}
