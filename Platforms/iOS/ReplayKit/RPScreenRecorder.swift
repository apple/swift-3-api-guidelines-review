
class RPScreenRecorder : NSObject {
  class func sharedRecorder() -> RPScreenRecorder
  func startRecordingWithMicrophoneEnabled(_ microphoneEnabled: Bool, handler handler: ((NSError?) -> Void)?)
  func stopRecordingWithHandler(_ handler: ((RPPreviewViewController?, NSError?) -> Void)?)
  func discardRecordingWithHandler(_ handler: () -> Void)
  weak var delegate: @sil_weak RPScreenRecorderDelegate?
  var recording: Bool { get }
  var microphoneEnabled: Bool { get }
  var available: Bool { get }
}
@available(iOS 9.0, *)
protocol RPScreenRecorderDelegate : NSObjectProtocol {
  optional func screenRecorder(_ screenRecorder: RPScreenRecorder, didStopRecordingWithError error: NSError, previewViewController previewViewController: RPPreviewViewController?)
  optional func screenRecorderDidChangeAvailability(_ screenRecorder: RPScreenRecorder)
}
