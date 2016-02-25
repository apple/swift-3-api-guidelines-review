
@available(OSX 10.7, *)
class AVAudioRecorder : NSObject {
  init(URL url: NSURL, settings settings: [String : AnyObject]) throws
  func prepareToRecord() -> Bool
  func record() -> Bool
  func recordForDuration(_ duration: NSTimeInterval) -> Bool
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
  func peakPowerForChannel(_ channelNumber: Int) -> Float
  func averagePowerForChannel(_ channelNumber: Int) -> Float
}
protocol AVAudioRecorderDelegate : NSObjectProtocol {
  @available(OSX 10.7, *)
  optional func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool)
  @available(OSX 10.7, *)
  optional func audioRecorderEncodeErrorDidOccur(_ recorder: AVAudioRecorder, error error: NSError?)
}
