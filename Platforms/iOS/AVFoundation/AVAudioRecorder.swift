
@available(iOS 3.0, *)
class AVAudioRecorder : Object {
  init(url: URL, settings: [String : AnyObject]) throws
  func prepareToRecord() -> Bool
  func record() -> Bool
  @available(iOS 6.0, *)
  func recordAtTime(time: TimeInterval) -> Bool
  func record(forDuration duration: TimeInterval) -> Bool
  @available(iOS 6.0, *)
  func recordAtTime(time: TimeInterval, forDuration duration: TimeInterval) -> Bool
  func pause()
  func stop()
  func deleteRecording() -> Bool
  var isRecording: Bool { get }
  var url: URL { get }
  var settings: [String : AnyObject] { get }
  unowned(unsafe) var delegate: @sil_unmanaged AVAudioRecorderDelegate?
  var currentTime: TimeInterval { get }
  @available(iOS 6.0, *)
  var deviceCurrentTime: TimeInterval { get }
  var isMeteringEnabled: Bool
  func updateMeters()
  func peakPower(forChannel channelNumber: Int) -> Float
  func averagePower(forChannel channelNumber: Int) -> Float
  @available(iOS 7.0, *)
  var channelAssignments: [Number]?
  init()
}
protocol AVAudioRecorderDelegate : ObjectProtocol {
  @available(iOS 3.0, *)
  optional func audioRecorderDidFinishRecording(recorder: AVAudioRecorder, successfully flag: Bool)
  @available(iOS 3.0, *)
  optional func audioRecorderEncodeErrorDidOccur(recorder: AVAudioRecorder, error: Error?)
  @available(iOS, introduced=2.2, deprecated=8.0)
  optional func audioRecorderBeginInterruption(recorder: AVAudioRecorder)
  @available(iOS, introduced=6.0, deprecated=8.0)
  optional func audioRecorderEndInterruption(recorder: AVAudioRecorder, withOptions flags: Int)
}
