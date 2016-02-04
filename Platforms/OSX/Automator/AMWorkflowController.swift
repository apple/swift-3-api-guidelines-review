
class AMWorkflowController : NSController {
  var workflow: AMWorkflow?
  var workflowView: AMWorkflowView?
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject?
  var canRun: Bool { get }
  var isRunning: Bool { get }
  @IBAction func run(sender: AnyObject)
  @IBAction func stop(sender: AnyObject)
  var isPaused: Bool { get }
  @IBAction func pause(sender: AnyObject)
  @IBAction func step(sender: AnyObject)
  @IBAction func reset(sender: AnyObject)
  init()
  init?(coder: Coder)
}
struct __AMWorkflowControllerFlags {
  var shouldRunLocally: Int
  var isRunningLocally: Int
  var shouldDisplayProgressInMenuBar: Int
  var reserved: Int
  init()
  init(shouldRunLocally: Int, isRunningLocally: Int, shouldDisplayProgressInMenuBar: Int, reserved: Int)
}
struct __AMWorkflowControllerDelegateRespondTo {
  var workflowControllerDidAddWorkflow: Int
  var workflowControllerDidRemoveWorkflow: Int
  var workflowControllerWillRun: Int
  var workflowControllerWillStep: Int
  var workflowControllerWillStop: Int
  var workflowControllerWillPause: Int
  var workflowControllerDidRun: Int
  var workflowControllerDidStep: Int
  var workflowControllerDidStop: Int
  var workflowControllerDidPause: Int
  var workflowControllerWillRunAction: Int
  var workflowControllerDidRunAction: Int
  var workflowControllerDidError: Int
  var workflowControllerDidLogMessageOfTypeFromAction: Int
  var workflowControllerWillRunConversion: Int
  var workflowControllerDidRunConversion: Int
  var workflowControllerDidResumeWithAction: Int
  var reserved: Int
  init()
  init(workflowControllerDidAddWorkflow: Int, workflowControllerDidRemoveWorkflow: Int, workflowControllerWillRun: Int, workflowControllerWillStep: Int, workflowControllerWillStop: Int, workflowControllerWillPause: Int, workflowControllerDidRun: Int, workflowControllerDidStep: Int, workflowControllerDidStop: Int, workflowControllerDidPause: Int, workflowControllerWillRunAction: Int, workflowControllerDidRunAction: Int, workflowControllerDidError: Int, workflowControllerDidLogMessageOfTypeFromAction: Int, workflowControllerWillRunConversion: Int, workflowControllerDidRunConversion: Int, workflowControllerDidResumeWithAction: Int, reserved: Int)
}
extension Object {
  class func workflowControllerWillRun(controller: AMWorkflowController)
  func workflowControllerWillRun(controller: AMWorkflowController)
  class func workflowControllerWillStop(controller: AMWorkflowController)
  func workflowControllerWillStop(controller: AMWorkflowController)
  class func workflowControllerDidRun(controller: AMWorkflowController)
  func workflowControllerDidRun(controller: AMWorkflowController)
  class func workflowControllerDidStop(controller: AMWorkflowController)
  func workflowControllerDidStop(controller: AMWorkflowController)
  class func workflowController(controller: AMWorkflowController, willRun action: AMAction)
  func workflowController(controller: AMWorkflowController, willRun action: AMAction)
  class func workflowController(controller: AMWorkflowController, didRun action: AMAction)
  func workflowController(controller: AMWorkflowController, didRun action: AMAction)
  class func workflowController(controller: AMWorkflowController, didError error: Error)
  func workflowController(controller: AMWorkflowController, didError error: Error)
}
