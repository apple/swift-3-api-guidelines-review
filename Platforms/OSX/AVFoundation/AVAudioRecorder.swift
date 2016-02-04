
@available(OSX 10.7, *)
class AVAudioRecorder : NSObject {
  init(URL url: NSURL, settings: [String : AnyObject]) throws
  func prepareToRecord() -> Bool
  func record() -> Bool
  func recordForDuration(duration: NSTimeInterval) -> Bool
  func pause()
  func stop()
  func deleteRecording() -> Bool
  var recording: Bool { get }
  var url: NSURL { get }
  var settings: [String : AnyObject] { get }
  unowned(unsafe) var delegate: @sil_unmanaged AVAudioRecorderDelegate?
  var currentTime: NSTimeInterval { get }
  var meteringEnabled: Bool
  func updateMeters()
  func peakPowerForChannel(channelNumber: Int) -> Float
  func averagePowerForChannel(channelNumber: Int) -> Float
  init()
}
protocol AVAudioRecorderDelegate : NSObjectProtocol {
  @available(OSX 10.7, *)
  optional func audioRecorderDidFinishRecording(recorder: AVAudioRecorder, successfully flag: Bool)
  @available(OSX 10.7, *)
  optional func audioRecorderEncodeErrorDidOccur(recorder: AVAudioRecorder, error: NSError?)
}
