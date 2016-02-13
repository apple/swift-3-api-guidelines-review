
class RPScreenRecorder : Object {
  class func shared() -> RPScreenRecorder
  func startRecording(microphoneEnabled microphoneEnabled: Bool, handler: ((Error?) -> Void)? = nil)
  func stopRecording(handler handler: ((RPPreviewViewController?, Error?) -> Void)? = nil)
  func discardRecording(handler handler: () -> Void)
  weak var delegate: @sil_weak RPScreenRecorderDelegate?
  var isRecording: Bool { get }
  var isMicrophoneEnabled: Bool { get }
  var isAvailable: Bool { get }
}
@available(iOS 9.0, *)
protocol RPScreenRecorderDelegate : ObjectProtocol {
  optional func screenRecorder(screenRecorder: RPScreenRecorder, didStopRecordingWithError error: Error, previewViewController: RPPreviewViewController?)
  optional func screenRecorderDidChangeAvailability(screenRecorder: RPScreenRecorder)
}
