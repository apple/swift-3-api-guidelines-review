

/*!
 @brief This class is used to provide launch info to TVApplicationController.
 */
@available(tvOS 9.0, *)
class TVApplicationControllerContext : NSObject, NSCopying {

  /*!
   @brief URL to application JavaScript.
   */
  @NSCopying var javaScriptApplicationURL: NSURL

  /*!
   @brief Optional identifier for local storage file name.
   */
  var storageIdentifier: String?

  /*!
   @brief Data that gets passed to JavaScript onLaunch method. Values must be
              serializable. If app intends for JavaScript to handle openURL: then
              launchOptions should include UIApplicationLaunchOptionsURLKey and
              UIApplicationLaunchOptionsSourceApplicationKey to the launch options.
              TVApplicationController adds location (boot url) by default. If UIApplicationLaunchOptionsURLKey
              and UIApplicationLaunchOptionsSourceApplicationKey are provided then
              maps them to openURL and sourceAppIdentifier keys respectively.
   */
  var launchOptions: [String : AnyObject]
  init()
  @available(tvOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
protocol TVApplicationControllerDelegate : NSObjectProtocol {

  /*!
   @brief This method lets delegate to add JavaScript classes and objects.
   */
  @available(tvOS 9.0, *)
  optional func appController(appController: TVApplicationController, evaluateAppJavaScriptIn jsContext: JSContext)

  /*!
   @brief Tells the delegate that the application did finish launching.
   */
  @available(tvOS 9.0, *)
  optional func appController(appController: TVApplicationController, didFinishLaunchingWithOptions options: [String : AnyObject]? = [:])

  /*!
   @brief Tells the delegate that the application failed to load.
   */
  @available(tvOS 9.0, *)
  optional func appController(appController: TVApplicationController, didFailWithError error: NSError)

  /*!
   @brief Tells the delegate that the application did stop.
   */
  @available(tvOS 9.0, *)
  optional func appController(appController: TVApplicationController, didStopWithOptions options: [String : AnyObject]? = [:])
}

/*!
 @description The TVApplicationController class establishes the JavaScript environment
            to provide a centralized point of control and co-ordination. The class
            bridges the UI, navigation stack, storage and event handling from JavaScript.
  */
@available(tvOS 9.0, *)
class TVApplicationController : NSObject {

  /*!
   @description Initializes and returns application controller given the launch context.
                  Optionally window can be passed, and in that case TVApplicationController
                  acts like an application delegate, and handles the JavaScript
                  application lifecycle events e.g. onResume, onSuspend. If window
                  is not provided, caller is responsible for hosting the navigationController.
   */
  init(context: TVApplicationControllerContext, window: UIWindow?, delegate: TVApplicationControllerDelegate?)
  var window: UIWindow? { get }
  var context: TVApplicationControllerContext { get }
  weak var delegate: @sil_weak TVApplicationControllerDelegate? { get }

  /*!
   @brief Returns the navigation controller which is bridged from JavaScript. Native controllers can also be pushed onto this controller.
   */
  var navigationController: UINavigationController { get }

  /*!
   @description Adds the block to the JavaScript execution queue and invokes
              completion block once the evaluation block has finished execution. JSContext is
              valid within the scope of evaluation block and should not be referenced by the
              application outside the block.
   @param evaluation Block to evaluate in JavaScript execution queue.
   @param completion Invoked after the evaluation block has been executed.
              evaluated is YES if the block was evaluated; NO otherwise.
   */
  func evaluateInJavaScriptContext(evaluation: (JSContext) -> Void, completion: ((Bool) -> Void)? = nil)

  /*!
   @brief Stops the application lifecycle. appController:didStopWithOptions: is
          called once the JSContext has finished execution and has released all
          it's resources. The delegate must wait before releasing the controller.
          The controller cannot be reused after calling stop.
   */
  func stop()
}
@available(tvOS 9.0, *)
enum TVColorType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Plain
  case LinearGradientTopToBottom
  case LinearGradientLeftToRight
}

/*!
 @description Defines the color data for styles of type TVViewElementStyleTypeColor.
 */
@available(tvOS 9.0, *)
class TVColor : NSObject, NSCopying {
  var colorType: TVColorType { get }
  var color: UIColor? { get }
  var gradientColors: [UIColor]? { get }
  var gradientPoints: [NSNumber]? { get }
  init()
  @available(tvOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 @description Factory for registration of new elements that extend Apple TV markup language. Registration is required
        in order for the framework to parse these new elements and should happen prior to initializing TVApplicationController.
 */
@available(tvOS 9.0, *)
class TVElementFactory : NSObject {
  class func registerViewElementClass(elementClass: AnyClass, forElementName elementName: String)
  init()
}
@available(tvOS 9.0, *)
enum TVImageType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Image
  case Fullscreen
  case Decoration
  case Hero
}

/*!
 @decription Convenience class representing <img /> element.
 */
@available(tvOS 9.0, *)
class TVImageElement : TVViewElement {
  var url: NSURL? { get }
  var srcset: [String : NSURL]? { get }
  var imageType: TVImageType { get }
  init()
}
protocol TVInterfaceCreating : NSObjectProtocol {

  /*!
   @description Return a view for the given view element. It is preferred to reuse the existingView if it can be updated.
          When existingView is an instance of UICollectionViewCell, the cell must be configured instead of creating a new instance.
          Application must return nil if event is not handled.
   */
  @available(tvOS 9.0, *)
  optional func viewFor(element: TVViewElement, existing existingView: UIView?) -> UIView?

  /*!
   @description Return a view controller for the given view element. It is preferred to reuse the existingViewController if it can be updated.
          Application must return nil if event is not handled.
   */
  @available(tvOS 9.0, *)
  optional func viewControllerFor(element: TVViewElement, existing existingViewController: UIViewController?) -> UIViewController?

  /*!
   @description Return a URL given the resource name. The resource name is retrieved from a resource URL specified in elements like badge, img etc. 
          For example, <badge src="resource://developer-resource" will request for resource with name 'developer-resource'. Application must return
          nil if event is not handled.
   */
  @available(tvOS 9.0, *)
  optional func urlForResource(resourceName: String) -> NSURL?
}

/*!
 @description Interface factory for creation of views and view controllers. Application can extend or override framework implementation by setting extendedInterfaceCreator.
 */
@available(tvOS 9.0, *)
class TVInterfaceFactory : NSObject, TVInterfaceCreating {

  /*!
   @abstract Returns the singelton instance of the interface factory.
   */
  class func shared() -> Self

  /*!
   @description Application must provide its own implementation to handle custom registered elements. Optionally application can also override framework implementation of farmework defined elements.
   */
  var extendedInterfaceCreator: TVInterfaceCreating?
  init()

  /*!
   @description Return a view for the given view element. It is preferred to reuse the existingView if it can be updated.
          When existingView is an instance of UICollectionViewCell, the cell must be configured instead of creating a new instance.
          Application must return nil if event is not handled.
   */
  @available(tvOS 9.0, *)
  func viewFor(element: TVViewElement, existing existingView: UIView?) -> UIView?

  /*!
   @description Return a view controller for the given view element. It is preferred to reuse the existingViewController if it can be updated.
          Application must return nil if event is not handled.
   */
  @available(tvOS 9.0, *)
  func viewControllerFor(element: TVViewElement, existing existingViewController: UIViewController?) -> UIViewController?

  /*!
   @description Return a URL given the resource name. The resource name is retrieved from a resource URL specified in elements like badge, img etc. 
          For example, <badge src="resource://developer-resource" will request for resource with name 'developer-resource'. Application must return
          nil if event is not handled.
   */
  @available(tvOS 9.0, *)
  func urlForResource(resourceName: String) -> NSURL?
}
@available(tvOS 9.0, *)
let TVMLKitErrorDomain: String
@available(tvOS 9.0, *)
enum TVMLKitError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case InternetUnavailable
  case FailedToLaunch
  case Last
}
@available(tvOS 9.0, *)
enum TVViewElementStyleType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Integer
  case Double
  case Point
  case String
  case Color
  case URL
  case Transform
  case EdgeInsets
}

/*!
 @description Factory to register new styles to define custom style data.
 */
@available(tvOS 9.0, *)
class TVStyleFactory : NSObject {
  class func registerStyle(styleName: String, withType type: TVViewElementStyleType, inherited: Bool)
  init()
}
@available(tvOS 9.0, *)
enum TVTextElementStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Title
  case Subtitle
  case Description
  case Decoration
}

/*!
 @decription Represents textual content for the DOM element.
 */
@available(tvOS 9.0, *)
class TVTextElement : TVViewElement {
  var attributedText: NSAttributedString? { get }
  var textStyle: TVTextElementStyle { get }
  func attributedStringWith(font: UIFont) -> NSAttributedString
  func attributedStringWith(font: UIFont, foregroundColor: UIColor?, textAlignment alignment: NSTextAlignment) -> NSAttributedString
  init()
}
@available(tvOS 9.0, *)
enum TVElementEventType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Play
  case Select
  case HoldSelect
  case Highlight
  case Change
}
@available(tvOS 9.0, *)
enum TVElementUpdateType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None

  /*!
   @brief Signifies that one of the elements in the subtree is updated without
          affecting the order of immediate children.
   */
  case Subtree

  /*!
   @brief Signifies that the order of children is updated due to addition,
          removal or replacement of child nodes.
   */
  case Children

  /*!
   @brief Signifies that the node itself and its subtree is modified.
   */
  case `Self`
}

/*!
 @abstract Properties of TVViewElement that can be reset by the client to their
 default values. These properties communicate a message from the DOM, as opposed to
 define the model, which the client should reset after their values have been
 read.
 */
@available(tvOS 9.0, *)
enum TVElementResettableProperty : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /*!
  	 @brief Maps to updateType property.
  	 */
  case UpdateType

  /*!
  	 @brief Maps to autoHighlightIdentifier.
  	 */
  case AutoHighlightIdentifier
}

/*!
 @description TVViewElement represents a read only DOM node along with it's
                attributes and aggregated style. This model object is traversed
                by the factory to construct view/view controllers, to render templates.
                View/View controllers should use the avaliable dispatch API's to
                send user events to JavaScript.
 */
@available(tvOS 9.0, *)
class TVViewElement : NSObject, NSCopying {
  var elementIdentifier: String { get }
  var elementName: String { get }
  weak var parent: @sil_weak TVViewElement? { get }
  var childViewElements: [TVViewElement]? { get }
  var attributes: [String : String]? { get }
  var style: TVViewElementStyle? { get }
  var autoHighlightIdentifier: String? { get }
  var isDisabled: Bool
  var updateType: TVElementUpdateType { get }

  /*!
   @abstract Resets the property to its default value. This API can be used to reset 
   	a resettable property to its default value after the changes have been read.
   */
  @available(tvOS 9.0, *)
  func resetProperty(resettableProperty: TVElementResettableProperty)
  func dispatchEventOf(type: TVElementEventType, canBubble: Bool, cancellable isCancellable: Bool, extraInfo: [String : AnyObject]?, completion: ((Bool, Bool) -> Void)? = nil)
  func dispatchEventWithName(eventName: String, canBubble: Bool, cancellable isCancellable: Bool, extraInfo: [String : AnyObject]?, completion: ((Bool, Bool) -> Void)? = nil)
  init()
  @available(tvOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(tvOS 9.0, *)
enum TVElementAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Undefined
  case Left
  case Center
  case Right
}
@available(tvOS 9.0, *)
enum TVElementContentAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Undefined
  case Top
  case Center
  case Bottom
}
@available(tvOS 9.0, *)
enum TVElementPosition : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Undefined
  case Center
  case Top
  case Bottom
  case Left
  case Right
  case TopLeft
  case TopRight
  case BottomLeft
  case BottomRight
  case Header
  case Footer
}

/*!
 @description An instance of TVViewElementStyle contains the set of styles applied to the view element.
 */
@available(tvOS 9.0, *)
class TVViewElementStyle : NSObject, NSCopying {
  func valueForStyleProperty(name: String) -> AnyObject?
  var backgroundColor: TVColor? { get }
  var color: TVColor? { get }
  var fontSize: CGFloat { get }
  var fontWeight: String? { get }
  var height: CGFloat { get }
  var margin: UIEdgeInsets { get }
  var maxHeight: CGFloat { get }
  var maxWidth: CGFloat { get }
  var minHeight: CGFloat { get }
  var minWidth: CGFloat { get }
  var padding: UIEdgeInsets { get }
  var textAlignment: NSTextAlignment { get }
  var width: CGFloat { get }
  var alignment: TVElementAlignment { get }
  var contentAlignment: TVElementContentAlignment { get }
  var highlightColor: TVColor? { get }
  var imageTreatmentName: String? { get }
  var interitemSpacing: CGFloat { get }
  var textHighlightStyle: String? { get }
  var textMinimumScaleFactor: CGFloat { get }
  var position: TVElementPosition { get }
  var ratingStyle: String? { get }
  var maxTextLines: Int { get }
  var textStyle: String? { get }
  var tintColor: TVColor? { get }
  init()
  @available(tvOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
