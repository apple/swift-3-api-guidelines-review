
@available(OSX 10.10, *)
class NSTitlebarAccessoryViewController : NSViewController {
  var layoutAttribute: NSLayoutAttribute
  var fullScreenMinHeight: CGFloat
  func viewWillAppear()
  func viewDidAppear()
  func viewDidDisappear()
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
}
