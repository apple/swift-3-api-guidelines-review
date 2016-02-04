
@available(iOS 9.0, *)
class CNContactViewController : UIViewController {
  class func descriptorForRequiredKeys() -> CNKeyDescriptor
  convenience init(forContact contact: CNContact)
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
  func highlightPropertyWithKey(key: String, identifier: String?)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 9.0, *)
protocol CNContactViewControllerDelegate : NSObjectProtocol {
  optional func contactViewController(viewController: CNContactViewController, shouldPerformDefaultActionForContactProperty property: CNContactProperty) -> Bool
  optional func contactViewController(viewController: CNContactViewController, didCompleteWithContact contact: CNContact?)
}
