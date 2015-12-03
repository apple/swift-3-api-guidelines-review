

/*!
 @class         TVContentIdentifier
 @abstract		Represents unique identifiers for TVContentItems.
 @discussion    A content identifier is represented by a string, with an optional
                hierarchical structure of other content identifiers. A content identifier
                should be unique to a particular Content Item, across ALL past, current,
                and future content items. A content identifier should be durable: it
                should be able to be saved by itself, and an item should be able to be
                identified by it, unambiguously, in the future (though the user may not
                have access to that item). The uniqueness of a content identifier comes
                from the uniqueness of its two parts: its identifier string and its
                container (another content identifier). The identifier property of
                content identifiers need not be univerally unique across all the app's
                content identifiers, if items have container properties which are
                themselves unique. However, developers should then be careful to not
                be confused by equal identifier strings in content identifiers with
                different container hierarchies.
 */
@available(tvOS 9.0, *)
class TVContentIdentifier : NSObject, NSCopying, NSSecureCoding {

  /*!
   @property      identifier
   @abstract      The string contents of this identifier.
   @discussion    Any internal format or structure within the string is up to the application.
   */
  var identifier: String { get }

  /*!
   @property      container
   @abstract      Optional content identifier for the next level up in the logical structure
                  which this content identifier is identifying a part of.
   @discussion    Typically this would be the content identifier for the next larger grouping
                  that the content, identified by this content identifier, is part of. For
                  example, a podcast episode could be part of a larger podcast season, which
                  would be part of the entire podcast series; all three of those layers –
                  episodes, seasons, and the series – would need their own unique identifiers.
   */
  @NSCopying var container: TVContentIdentifier? { get }
  init?(identifier: String, container: TVContentIdentifier?)
  init?(coder: NSCoder)
  @available(tvOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(tvOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
}

/*!
 @class			TVContentItem
 @abstract		An object describing a piece or group of content.
 @discussion    Most properties are optional, and indeed some properties
                will not apply to all individual items or groups or types
                of content.
 */
@available(tvOS 9.0, *)
class TVContentItem : NSObject, NSCopying, NSSecureCoding {

  /*!
   @property      contentIdentifier
   @abstract      The unique content identifier of this item.
   */
  @NSCopying var contentIdentifier: TVContentIdentifier { get }

  /*!
   @property      imageURL
   @abstract      A URL giving the location of the image to display for this content item.
   */
  @NSCopying var imageURL: NSURL?

  /*!
   @property      imageShape
   @abstract      A TVContentItemImageShape value describing the intended aspect
                  ratio or shape of the image.
   @discussion	For Top Shelf purposes: the subset of values which are valid in
                  in this property, for TVContentItems in the topShelfItems property
                  of the TVTopShelfProvider, depends on the value of the topShelfStyle
                  property of the TVTopShelfProvider:
                      TVTopShelfContentStyleInset:
                          valid: TVContentItemImageShapeExtraWide
                      TVTopShelfContentStyleSectioned:
                          valid: TVContentItemImageShapePoster
                          valid: TVContentItemImageShapeSquare
                          valid: TVContentItemImageShapeHDTV
                  When the value of this property is not valid for the Top Shelf style,
                  the system reserves the right to scale the image in any way.
   */
  var imageShape: TVContentItemImageShape

  /*!
   @property      title
   @abstract      The localized string title of the item.
   @discussion    String should be localized into the current user's locale.
   */
  var title: String?

  /*!
   @property      lastAccessedDate
   @abstract      Date at which the user last accessed (whatever that might mean
                  the particular content described by this content item) this item.
   @discussion    A typical use would be the date at which the user last played
                  the item, or played a subitem within the item (if this item
                  represents a group of items), for content types where "playing"
                  applies. This should not be when the user just looked at an item.
   */
  @NSCopying var lastAccessedDate: NSDate?

  /*!
   @property      expirationDate
   @abstract      Date at which the user will no longer be able to access the item.
   */
  @NSCopying var expirationDate: NSDate?

  /*!
   @property      creationDate
   @abstract      Date at which the content item was created, or was first
                  broadcast, or other such kind of origination date.
   */
  @NSCopying var creationDate: NSDate?

  /*!
   @property      badgeCount
   @abstract      A badging integer for this item.
   @discussion    The number is interpreted as a positive integer. Not all UI uses
                  of content items display badges.
   */
  @NSCopying var badgeCount: NSNumber?

  /*!
   @property      duration
   @abstract      The time length of this item.
   @discussion    The number is interpreted as a double number of seconds.
   */
  @NSCopying var duration: NSNumber?

  /*!
   @property      currentPosition
   @abstract      The last time index the user was at in playing this item.
   @discussion    The number is interpreted as a double number of seconds.
   */
  @NSCopying var currentPosition: NSNumber?

  /*!
   @property      hasPlayedToEnd
   @abstract      A boolean indicating whether the user can be considered to have
                  finished this item.
   @discussion    The number is interpreted as a boolean.
   */
  @NSCopying var hasPlayedToEnd: NSNumber?

  /*!
   @property      playURL
   @abstract      A URL for the system to open to cause the application (which
                  created this content item) to begin playing the item, at the
                  user's currentPosition.
   @discussion    When opened (the app receives the UIApplication delegate method),
                  the application should proceed directly to playback without any
                  prompting for other information or confirmation panels or other
                  UI, if at all possible.
   */
  @NSCopying var playURL: NSURL?

  /*!
   @property      displayURL
   @abstract      A URL for the system to open to cause the application (which
                  created this content item) to display a description screen
                  for the item.
   @discussion    When opened (the app receives the UIApplication delegate method),
                  the application should proceed directly to displaying the
                  description of the item without any prompting for other information
                  or confirmation panels or other UI, if at all possible.
   */
  @NSCopying var displayURL: NSURL?

  /*!
   @property      topShelfItems
   @abstract      An array of TVContentItems which are the items of a section.
   @discussion    If non-nil, this item will be interpreted as a section item in
                  main menu Top Shelf usage contexts. The title property is the
                  other interesting property in that case, though other properties
                  of this item may be also interpreted by the system in the future.
   */
  var topShelfItems: [TVContentItem]?
  init?(contentIdentifier ident: TVContentIdentifier)
  init?(coder: NSCoder)
  @available(tvOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(tvOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
}

/*!
 @enum          TVContentItemImageShape
 @abstract
 */
@available(tvOS 9.0, *)
enum TVContentItemImageShape : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Poster
  case Square
  case SDTV
  case HDTV
  case Wide
  case ExtraWide
}
@available(tvOS 9.0, *)
enum TVTopShelfContentStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Inset
  case Sectioned
}

/*!
 @protocol		TVTopShelfProvider
 @abstract		A protocol implemented by applications to provided items for
                display in the main menu's top shelf of an Apple TV.
 @discussion	This is a protocol which can be adopted by an app's TV Services
                extension, on the principal class of the extension.
                Apps which want to provide dynamic content to the top shelf,
                rather than have the system use the static image submitted with
                the application, implement a TV Services extension and adopt
                this protocol. The various supported user interface styles
                for the display of the content items are given by the
                TVTopShelfContentStyle enumeration.
 */
protocol TVTopShelfProvider {
  @available(tvOS 9.0, *)
  var topShelfStyle: TVTopShelfContentStyle { get }
  @available(tvOS 9.0, *)
  var topShelfItems: [TVContentItem] { get }
}

/*!
 @constant		TVTopShelfItemsDidChangeNotification
 @abstract		The name of a notification the extension or containing app can
                post to tell observers within the process, and the system, that
                the Top Shelf data has changed.
 @discussion    Post the notification to the process-local NSNotificationCenter
                ([NSNotificationCenter defaultCenter]). The system doesn't care about
                the object or userInfo of the notification. The system will refetch
                the data from the extension, at some point in the future (not
                necessarily right away).
 */
@available(tvOS 9.0, *)
let TVTopShelfItemsDidChangeNotification: String

/*!
 @function      TVTopShelfSizeForImageShape
 @abstract      Returns the ideal size of an image, the size which doesn't require
                scaling, for the given user interface style and image shape, in the
                current running version of the OS.
 @discussion    For shapes not supported in the given style, returns CGSizeZero.
 */
@available(tvOS 9.0, *)
func TVTopShelfImageSizeForShape(shape: TVContentItemImageShape, _ style: TVTopShelfContentStyle) -> CGSize
