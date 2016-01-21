
@available(iOS 9.0, *)
class AUViewController : UIViewController, ExtensionRequestHandling {
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
extension AUAudioUnit {

  /*!	@method	requestViewControllerWithCompletionHandler:
  	@brief	Obtains an audio unit's view controller (and thereby a view).
  	@discussion
  		Asynchronously requests the audio unit's view controller. This method will later call the
  		completion handler, in a thread/dispatch queue context internal to the implementation, with
  		a view controller, or nil in the case of an audio unit without a custom view controller.
  */
  func requestViewControllerWithCompletionHandler(completionHandler: (UIViewController?) -> Void)
}
@available(iOS 8.0, *)
class CABTMIDICentralViewController : UITableViewController {
  init(style: UITableViewStyle)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
@available(iOS 8.0, *)
class CABTMIDILocalPeripheralViewController : UIViewController {
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
@available(iOS 8.0, *)
class CAInterAppAudioSwitcherView : UIView {
  var isShowingAppNames: Bool
  func setOutputAudioUnit(au: AudioUnit)
  func contentWidth() -> CGFloat
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
@available(iOS 8.0, *)
class CAInterAppAudioTransportView : UIView {
  var isEnabled: Bool
  var isPlaying: Bool { get }
  var isRecording: Bool { get }
  var isConnected: Bool { get }
  var labelColor: UIColor
  var currentTimeLabelFont: UIFont
  var rewindButtonColor: UIColor
  var playButtonColor: UIColor
  var pauseButtonColor: UIColor
  var recordButtonColor: UIColor
  func setOutputAudioUnit(au: AudioUnit)
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
