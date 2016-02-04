
enum OSAScriptState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Stopped
  case Running
  case Recording
}
class OSAScriptController : NSController {
  var scriptView: OSAScriptView?
  var resultView: NSTextView?
  @NSCopying var script: OSAScript?
  var language: OSALanguage?
  var scriptState: OSAScriptState { get }
  var compiling: Bool { get }
  @IBAction func compileScript(sender: AnyObject?)
  @IBAction func recordScript(sender: AnyObject?)
  @IBAction func runScript(sender: AnyObject?)
  @IBAction func stopScript(sender: AnyObject?)
  init()
  init?(coder: NSCoder)
}