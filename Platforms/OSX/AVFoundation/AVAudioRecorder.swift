
@available(OSX 10.7, *)
class AVAudioRecorder : NSObject {
  init(url url: NSURL, settings settings: [String : AnyObject]) throws
  func prepareToRecord() -> Bool
  func record() -> Bool
  func record(forDuration duration: NSTimeInterval) -> Bool
  func pause()
  func stop()
  func deleteRecording() -> Bool
  var isRecording: Bool { get }
  var url: NSURL { get }
  var settings: [String : AnyObject] { get }
  unowned(unsafe) var delegate: @sil_unmanaged AVAudioRecorderDelegate?
  var currentTime: NSTimeInterval { get }
  var isMeteringEnabled: Bool
  func updateMeters()
  func peakPower(forChannel channelNumber: Int) -> Float
  func averagePower(forChannel channelNumber: Int) -> Float
}
protocol AVAudioRecorderDelegate : NSObjectProtocol {
  @available(OSX 10.7, *)
  optional func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool)
  @available(OSX 10.7, *)
  optional func audioRecorderEncodeErrorDidOccur(_ recorder: AVAudioRecorder, error error: NSError?)
}
