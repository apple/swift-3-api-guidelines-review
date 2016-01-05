

/*!
 @class      NKAssetDownload
 @abstract   Represents a downloading asset for an issue.
 @discussion An NKIssue may have one or more assets that together form the structure
 of the Newsstand issue. You generate a downloading asset by constructing
 an NSURLRequest adding the request to the NKIssue using
 -[NKIssue addAssetWithRequest:]. Begin downloading the asset by calling
 -[NKAssetDownload downloadWithDelegate:].
 Upon download completion, you will need to put your uncompressed content
 in the URL specified by -[NKIssue contentURL].
 */
@available(iOS 5.0, *)
class NKAssetDownload : NSObject {

  /*!
   @property   issue
   @abstract   A pointer to the issue that this asset is associated with.
   */
  weak var issue: @sil_weak NKIssue? { get }

  /*!
   @property   identifier
   @abstract   A unique identifier representing the asset.
   */
  var identifier: String { get }

  /*!
   @property   userInfo
   @abstract   Application specific information that is saved with the asset. Can be nil.
   @discussion You may add arbitrary key-value pairs to this dictionary. However, the keys
   and values must be valid property-list types; if any are not, an exception is raised.
   Using this property you can save download related information such as file name/paths,
   encoding mechanisms, custom identifiers, etc.  However, performance concerns dictate
   that you should make this content as minimal as possible.
   */
  var userInfo: [NSObject : AnyObject]?

  /*!
   @property   URLRequest
   @abstract   The NSURLRequest of the download
   */
  @NSCopying var urlRequest: NSURLRequest { get }

  /*!
   @method     downloadWithDelegate:
   @abstract   Begins downloading the asset with the specified delegate. Delegate
   may not be nil.
   */
  func downloadWith(delegate: NSURLConnectionDownloadDelegate) -> NSURLConnection
  init()
}

/*!
 @constant   NKIssueDownloadCompletedNotification
 @abstract   Notification when an issue's assets have all been downloaded.
 */
@available(iOS 5.0, *)
let NKIssueDownloadCompletedNotification: String
@available(iOS 5.0, *)
enum NKIssueContentStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Downloading
  case Available
}

/*!
 @class      NKIssue
 @abstract   Represents the Newsstand issue and its location on disk.
 @discussion All Newsstand issues have a publication date and a unique name. 
 You register assets for download through this class.
 All of the Newsstand content that represents this issue should be
 placed in the URL provided by contentURL.
 If there are any downloading assets associated with this issue,
 the state of the issue is "downloading". If there are no outstanding
 downloading assets and the contentURL is non-empty, the state
 is "content available".
 An issue is created by adding it to the library with
 -[NKLibrary addIssueWithName:date:].
 */
@available(iOS 5.0, *)
class NKIssue : NSObject {

  /*!
   @property   downloadingAssets
   @abstract   An array of NKAssetDownload associated with this issue.
   */
  var downloadingAssets: [NKAssetDownload] { get }

  /*!
   @property   contentURL
   @abstract   All content that represents this issue should be placed in the
   URL provided.
   */
  @NSCopying var contentURL: NSURL { get }

  /*!
   @property   status
   @abstract   The availability of this issue's content.
   @discussion If there are asset downloads associated with this issue, the status
   is NKIssueContentStatusDownloading. If there are no downloading assets
   and the directory represented by contentURL is non-empty, the status
   is NKIssueContentStatusAvailable. Otherwise, no content is available
   at the destination and the status is NKIssueContentStatusNone.
   */
  var status: NKIssueContentStatus { get }

  /*!
   @property   name
   @abstract   The unique name given to this issue
   */
  var name: String { get }

  /*!
   @property   date
   @abstract   The date of this issue
   */
  @NSCopying var date: NSDate { get }

  /*!
   @method     addAssetWithRequest:
   @abstract   Add a downloading asset to this issue. Initiate the download for this
   asset with the downloadWithDelegate: method on the NKAssetDownload.
   */
  func addAssetWith(request: NSURLRequest) -> NKAssetDownload
  init()
}

/*!
 @class      NKLibrary
 @abstract   Represents the library of Newsstand issues
 @discussion This is the library of Newsstand issues. Upon launch, one can
 get the issues in the Newsstand library and determine any outstanding
 downloading assets. To reconnect with any outstanding background
 download of content, you will be required to call 
 -[NKAssetDownload downloadWithDelegate:].
 */
@available(iOS 5.0, *)
class NKLibrary : NSObject {

  /*!
   @property   issues
   @abstract   The Newsstand issues in the library
   */
  var issues: [NKIssue] { get }

  /*!
   @property   downloadingAssets
   @abstract   The assets that are currently being downloaded in this
   Newsstand library. The issue that this asset is associated with
   can be determined from the asset itself.
   */
  var downloadingAssets: [NKAssetDownload] { get }

  /*!
   @property   currentlyReadingIssue
   @abstract   The issue that is currently being read by the user. Clients should
   set this property to the currently read issue to prevent data
   from being purged when under disk pressure.
   */
  var currentlyReadingIssue: NKIssue?

  /*!
   @method     sharedLibrary
   @abstract   The application's shared Newsstand Content Library
   */
  class func shared() -> NKLibrary?

  /*!
   @method     issueWithName:
   @abstract   Return the issue identified by the given name if it exists.
   */
  func issueWithName(name: String) -> NKIssue?

  /*!
   @method     addIssueWithName:date:
   @abstract   Add a new issue to the Newsstand Content Library.
   */
  func addIssueWithName(name: String, date: NSDate) -> NKIssue

  /*!
   @method     removeIssue:
   @abstract   Remove the issue from the library
   */
  func removeIssue(issue: NKIssue)
  init()
}

/*!
 @category   NKAssetDownloadAdditions(NSURLConnection)
 @abstract   NKAssetDownload extensions to NSURLConnection.
 @discussion This category provides a convenient way to look up an
 NKAssetDownload that is related to a NSURLConnection.
 */
extension NSURLConnection {

  /*!
   @property   newsstandAssetDownload
   @abstract   A pointer to the asset download that this connection is associated with.
   */
  @available(iOS 5.0, *)
  weak var newsstandAssetDownload: @sil_weak NKAssetDownload? { get }
}
