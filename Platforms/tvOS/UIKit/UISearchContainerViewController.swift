
@available(tvOS 9.0, *)
class UISearchContainerViewController : UIViewController {
  var searchController: UISearchController { get }
  init(searchController: UISearchController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
