
let RPRecordingErrorDomain: String
@available(iOS 9.0, *)
enum RPRecordingErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case UserDeclined
  case Disabled
  case FailedToStart
  case Failed
  case InsufficientStorage
  case Interrupted
  case ContentResize
}
class RPPreviewViewController : UIViewController {
  weak var previewControllerDelegate: @sil_weak RPPreviewViewControllerDelegate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}

/*! @class RPPreviewViewController
 @abstract View controller that allows the user to preview/edit a movie recorded with ReplayKit. Passed into the completion handler supplied to [RPScreenRecorder stopRecordingWithHandler:].
 */
@available(iOS 9.0, *)
protocol RPPreviewViewControllerDelegate : ObjectProtocol {
  optional func previewControllerDidFinish(previewController: RPPreviewViewController)
  optional func previewController(previewController: RPPreviewViewController, didFinishWithActivityTypes activityTypes: Set<String>)
}

/*! @class RPScreenRecorder
 @abstract Singleton class used to control app recording.
 */
class RPScreenRecorder : Object {
  class func shared() -> RPScreenRecorder

  /*! @abstract Starts app recording with a completion handler. Note that before recording actually starts, the user may be prompted with UI to confirm recording.
   @param microphoneEnabled Determines whether the microphone input should be included in the recorded movie audio.
   @result handler Called after user interactions are complete. Will be passed an optional NSError in the RPRecordingErrorDomain domain if there was an issue starting the recording.
   */
  func startRecordingWithMicrophoneEnabled(microphoneEnabled: Bool, handler: ((Error?) -> Void)? = nil)

  /*! @abstract Stops app recording with a completion handler.
   @result handler Called when the movie is ready. Will return an instance of RPPreviewViewController on success which should be presested using [UIViewController presentViewController:animated:completion:]. Will be passed an optional NSError in the RPRecordingErrorDomain domain if there was an issue stopping the recording.
   */
  func stopRecording(handler handler: ((RPPreviewViewController?, Error?) -> Void)? = nil)

  /*! @abstract Discards the current recording. This can only be called after the handler block in stopRecordingWithHandler: is executed.
   */
  func discardRecordingWithHandler(handler: () -> Void)
  weak var delegate: @sil_weak RPScreenRecorderDelegate?
  var isRecording: Bool { get }
  var isMicrophoneEnabled: Bool { get }
  var isAvailable: Bool { get }
}
@available(iOS 9.0, *)
protocol RPScreenRecorderDelegate : ObjectProtocol {

  /*! @abstract Called when recording has stopped for any reason.
   @param screenRecorder The instance of the screen recorder.
   @param error An NSError describing why recording has stopped in the RPRecordingErrorDomain.
   @param previewController If a partial movie is available before it was stopped, an instance of RPPreviewViewController will be returned.
   */
  optional func screenRecorder(screenRecorder: RPScreenRecorder, didStopRecordingWithError error: Error, previewViewController: RPPreviewViewController?)

  /*! @abstract Called when the recorder becomes available or stops being available. Check the screen recorder's availability property to check the current availability state. Possible reasons for the recorder to be unavailable include an in-progress Airplay/TVOut session or unsupported hardware.
   @param screenRecorder The instance of the screen recorder.
   */
  optional func screenRecorderDidChangeAvailability(screenRecorder: RPScreenRecorder)
}
