
@available(iOS, introduced=2.0, deprecated=9.0, message="Use +[CNContactViewController viewControllerForNewContact:] from ContactsUI.framework instead")
class ABNewPersonViewController : UIViewController {
  unowned(unsafe) var newPersonViewDelegate: @sil_unmanaged ABNewPersonViewControllerDelegate?
  var addressBook: ABAddressBook?
  var displayedPerson: ABRecord?
  var parentGroup: ABRecord?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol ABNewPersonViewControllerDelegate : ObjectProtocol {
  @available(iOS 2.0, *)
  func newPersonViewController(newPersonView: ABNewPersonViewController, didCompleteWithNewPerson person: ABRecord?)
}
