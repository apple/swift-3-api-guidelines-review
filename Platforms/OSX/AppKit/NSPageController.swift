
@available(OSX 10.8, *)
enum NSPageControllerTransitionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case StackHistory
  case StackBook
  case HorizontalStrip
}
@available(OSX 10.8, *)
class NSPageController : NSViewController, NSAnimatablePropertyContainer, Coding {
  @IBOutlet unowned(unsafe) var delegate: @sil_unmanaged NSPageControllerDelegate?
  var selectedViewController: NSViewController? { get }
  var transitionStyle: NSPageControllerTransitionStyle
  var arrangedObjects: [AnyObject]
  var selectedIndex: Int
  func navigateForwardTo(object: AnyObject)
  func completeTransition()
  @IBAction func navigateBack(sender: AnyObject?)
  @IBAction func navigateForward(sender: AnyObject?)
  @IBAction func takeSelectedIndexFrom(sender: AnyObject?)
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder: Coder)
  convenience init()
  @available(OSX 10.5, *)
  func animator() -> Self
  @available(OSX 10.5, *)
  var animations: [String : AnyObject]
  @available(OSX 10.5, *)
  func animationFor(key key: String) -> AnyObject?
  @available(OSX 10.5, *)
  class func defaultAnimationFor(key key: String) -> AnyObject?
}
struct __pcDelegateFlags {
  var delegateRespondsToIdentifierForRepresentedObject: UInt32
  var delegateRespondsToViewControllerForIdentifier: UInt32
  var delegateRespondsToFrameForRepresentedObject: UInt32
  var delegateRespondsToPrepareView: UInt32
  var delegateRespondsToDidTransition: UInt32
  var delegateRespondsToWillLiveTransition: UInt32
  var delegateRespondsToDidLiveTransition: UInt32
  var delegateRespondsToReserved1: UInt32
  var reserved: UInt32
  init()
  init(delegateRespondsToIdentifierForRepresentedObject: UInt32, delegateRespondsToViewControllerForIdentifier: UInt32, delegateRespondsToFrameForRepresentedObject: UInt32, delegateRespondsToPrepareView: UInt32, delegateRespondsToDidTransition: UInt32, delegateRespondsToWillLiveTransition: UInt32, delegateRespondsToDidLiveTransition: UInt32, delegateRespondsToReserved1: UInt32, reserved: UInt32)
}
struct __pcFlags {
  var templateCacheIsInvalid: UInt32
  var private1: UInt32
  var private2: UInt32
  var inSwipeGesture: UInt32
  var reserved: UInt32
  init()
  init(templateCacheIsInvalid: UInt32, private1: UInt32, private2: UInt32, inSwipeGesture: UInt32, reserved: UInt32)
}
protocol NSPageControllerDelegate : ObjectProtocol {
  @available(OSX 10.8, *)
  optional func pageController(pageController: NSPageController, identifierFor object: AnyObject) -> String
  @available(OSX 10.8, *)
  optional func pageController(pageController: NSPageController, viewControllerForIdentifier identifier: String) -> NSViewController
  @available(OSX 10.8, *)
  optional func pageController(pageController: NSPageController, frameFor object: AnyObject) -> Rect
  @available(OSX 10.8, *)
  optional func pageController(pageController: NSPageController, prepare viewController: NSViewController, withObject object: AnyObject)
  @available(OSX 10.8, *)
  optional func pageController(pageController: NSPageController, didTransitionTo object: AnyObject)
  @available(OSX 10.8, *)
  optional func pageControllerWillStartLiveTransition(pageController: NSPageController)
  @available(OSX 10.8, *)
  optional func pageControllerDidEndLiveTransition(pageController: NSPageController)
}
