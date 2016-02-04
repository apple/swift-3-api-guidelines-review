
class RPScreenRecorder : NSObject {
  class func sharedRecorder() -> RPScreenRecorder
  func startRecordingWithMicrophoneEnabled(microphoneEnabled: Bool, handler: ((NSError?) -> Void)?)
  func stopRecordingWithHandler(handler: ((RPPreviewViewController?, NSError?) -> Void)?)
  func discardRecordingWithHandler(handler: () -> Void)
  weak var delegate: @sil_weak RPScreenRecorderDelegate?
  var recording: Bool { get }
  var microphoneEnabled: Bool { get }
  var available: Bool { get }
}
@available(iOS 9.0, *)
protocol RPScreenRecorderDelegate : NSObjectProtocol {
  optional func screenRecorder(screenRecorder: RPScreenRecorder, didStopRecordingWithError error: NSError, previewViewController: RPPreviewViewController?)
  optional func screenRecorderDidChangeAvailability(screenRecorder: RPScreenRecorder)
}
