
@available(iOS 5.0, *)
class GLKViewController : UIViewController, Coding, GLKViewDelegate {
  @IBOutlet unowned(unsafe) var delegate: @sil_unmanaged GLKViewControllerDelegate?
  var preferredFramesPerSecond: Int
  var framesPerSecond: Int { get }
  var isPaused: Bool
  var framesDisplayed: Int { get }
  var timeSinceFirstResume: TimeInterval { get }
  var timeSinceLastResume: TimeInterval { get }
  var timeSinceLastUpdate: TimeInterval { get }
  var timeSinceLastDraw: TimeInterval { get }
  var pauseOnWillResignActive: Bool
  var resumeOnDidBecomeActive: Bool
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
  @available(iOS 5.0, *)
  func glkView(view: GLKView, drawIn rect: CGRect)
}
protocol GLKViewControllerDelegate : ObjectProtocol {
  @available(iOS 5.0, *)
  func glkViewControllerUpdate(controller: GLKViewController)
  @available(iOS 5.0, *)
  optional func glkViewController(controller: GLKViewController, willPause pause: Bool)
}
