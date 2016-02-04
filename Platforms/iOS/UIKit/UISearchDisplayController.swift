
@available(iOS, introduced=3.0, deprecated=8.0, message="UISearchDisplayController has been replaced with UISearchController")
class UISearchDisplayController : NSObject {
  init(searchBar: UISearchBar, contentsController viewController: UIViewController)
  unowned(unsafe) var delegate: @sil_unmanaged UISearchDisplayDelegate?
  var active: Bool
  func setActive(visible: Bool, animated: Bool)
  var searchBar: UISearchBar { get }
  var searchContentsController: UIViewController { get }
  var searchResultsTableView: UITableView { get }
  weak var searchResultsDataSource: @sil_weak UITableViewDataSource?
  weak var searchResultsDelegate: @sil_weak UITableViewDelegate?
  @available(iOS 5.0, *)
  var searchResultsTitle: String?
  @available(iOS 7.0, *)
  var displaysSearchBarInNavigationBar: Bool
  @available(iOS 7.0, *)
  var navigationItem: UINavigationItem? { get }
  init()
}
protocol UISearchDisplayDelegate : NSObjectProtocol {
  @available(iOS, introduced=3.0, deprecated=8.0)
  optional func searchDisplayControllerWillBeginSearch(controller: UISearchDisplayController)
  @available(iOS, introduced=3.0, deprecated=8.0)
  optional func searchDisplayControllerDidBeginSearch(controller: UISearchDisplayController)
  @available(iOS, introduced=3.0, deprecated=8.0)
  optional func searchDisplayControllerWillEndSearch(controller: UISearchDisplayController)
  @available(iOS, introduced=3.0, deprecated=8.0)
  optional func searchDisplayControllerDidEndSearch(controller: UISearchDisplayController)
  @available(iOS, introduced=3.0, deprecated=8.0)
  optional func searchDisplayController(controller: UISearchDisplayController, didLoadSearchResultsTableView tableView: UITableView)
  @available(iOS, introduced=3.0, deprecated=8.0)
  optional func searchDisplayController(controller: UISearchDisplayController, willUnloadSearchResultsTableView tableView: UITableView)
  @available(iOS, introduced=3.0, deprecated=8.0)
  optional func searchDisplayController(controller: UISearchDisplayController, willShowSearchResultsTableView tableView: UITableView)
  @available(iOS, introduced=3.0, deprecated=8.0)
  optional func searchDisplayController(controller: UISearchDisplayController, didShowSearchResultsTableView tableView: UITableView)
  @available(iOS, introduced=3.0, deprecated=8.0)
  optional func searchDisplayController(controller: UISearchDisplayController, willHideSearchResultsTableView tableView: UITableView)
  @available(iOS, introduced=3.0, deprecated=8.0)
  optional func searchDisplayController(controller: UISearchDisplayController, didHideSearchResultsTableView tableView: UITableView)
  @available(iOS, introduced=3.0, deprecated=8.0)
  optional func searchDisplayController(controller: UISearchDisplayController, shouldReloadTableForSearchString searchString: String?) -> Bool
  @available(iOS, introduced=3.0, deprecated=8.0)
  optional func searchDisplayController(controller: UISearchDisplayController, shouldReloadTableForSearchScope searchOption: Int) -> Bool
}
