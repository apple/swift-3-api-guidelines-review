
@available(iOS 9.0, *)
class CNContactPickerViewController : UIViewController {
  var displayedPropertyKeys: [String]?
  weak var delegate: @sil_weak CNContactPickerDelegate?
  @NSCopying var predicateForEnablingContact: NSPredicate?
  @NSCopying var predicateForSelectionOfContact: NSPredicate?
  @NSCopying var predicateForSelectionOfProperty: NSPredicate?
}
@available(iOS 9.0, *)
protocol CNContactPickerDelegate : NSObjectProtocol {
  optional func contactPickerDidCancel(_ picker: CNContactPickerViewController)
  optional func contactPicker(_ picker: CNContactPickerViewController, didSelectContact contact: CNContact)
  optional func contactPicker(_ picker: CNContactPickerViewController, didSelectContactProperty contactProperty: CNContactProperty)
  optional func contactPicker(_ picker: CNContactPickerViewController, didSelectContacts contacts: [CNContact])
  optional func contactPicker(_ picker: CNContactPickerViewController, didSelectContactProperties contactProperties: [CNContactProperty])
}
