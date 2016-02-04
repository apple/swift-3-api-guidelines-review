
@available(OSX 10.10, *)
class NCWidgetSearchViewController : NSViewController {
  @IBOutlet weak var delegate: @sil_weak NCWidgetSearchViewDelegate!
  var searchResults: [AnyObject]!
  var searchDescription: String!
  var searchResultsPlaceholderString: String!
  var searchResultKeyPath: String!
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
}
protocol NCWidgetSearchViewDelegate : NSObjectProtocol {
  @available(OSX 10.10, *)
  func widgetSearch(controller: NCWidgetSearchViewController!, searchForTerm searchTerm: String!, maxResults max: Int)
  @available(OSX 10.10, *)
  func widgetSearchTermCleared(controller: NCWidgetSearchViewController!)
  @available(OSX 10.10, *)
  func widgetSearch(controller: NCWidgetSearchViewController!, resultSelected object: AnyObject!)
}
