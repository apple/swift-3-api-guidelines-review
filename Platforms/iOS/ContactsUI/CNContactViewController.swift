
@available(iOS 9.0, *)
class CNContactViewController : UIViewController {
  class func descriptorForRequiredKeys() -> CNKeyDescriptor
  convenience init(for contact: CNContact)
  convenience init(forUnknownContact contact: CNContact)
  convenience init(forNewContact contact: CNContact?)
  var contact: CNContact { get }
  var displayedPropertyKeys: [AnyObject]?
  weak var delegate: @sil_weak CNContactViewControllerDelegate?
  var contactStore: CNContactStore?
  var parentGroup: CNGroup?
  var parentContainer: CNContainer?
  var alternateName: String?
  var message: String?
  var allowsEditing: Bool
  var allowsActions: Bool
  var shouldShowLinkedContacts: Bool
  func highlightProperty(key key: String, identifier: String?)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
@available(iOS 9.0, *)
protocol CNContactViewControllerDelegate : ObjectProtocol {
  optional func contactViewController(viewController: CNContactViewController, shouldPerformDefaultActionFor property: CNContactProperty) -> Bool
  optional func contactViewController(viewController: CNContactViewController, didCompleteWith contact: CNContact?)
}
