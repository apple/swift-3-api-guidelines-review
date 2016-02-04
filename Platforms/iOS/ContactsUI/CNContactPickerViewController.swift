
@available(iOS 9.0, *)
class CNContactPickerViewController : UIViewController {
  var displayedPropertyKeys: [String]?
  weak var delegate: @sil_weak CNContactPickerDelegate?
  @NSCopying var predicateForEnablingContact: Predicate?
  @NSCopying var predicateForSelectionOfContact: Predicate?
  @NSCopying var predicateForSelectionOfProperty: Predicate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
@available(iOS 9.0, *)
protocol CNContactPickerDelegate : ObjectProtocol {
  optional func contactPickerDidCancel(picker: CNContactPickerViewController)
  optional func contactPicker(picker: CNContactPickerViewController, didSelect contact: CNContact)
  optional func contactPicker(picker: CNContactPickerViewController, didSelect contactProperty: CNContactProperty)
  optional func contactPicker(picker: CNContactPickerViewController, didSelect contacts: [CNContact])
  optional func contactPicker(picker: CNContactPickerViewController, didSelectContactProperties contactProperties: [CNContactProperty])
}
