
@available(iOS 9.1, *)
class UISearchContainerViewController : UIViewController {
  var searchController: UISearchController { get }
  init(searchController searchController: UISearchController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
