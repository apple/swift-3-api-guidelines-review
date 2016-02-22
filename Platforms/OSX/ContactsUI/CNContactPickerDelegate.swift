
@available(OSX 10.11, *)
protocol CNContactPickerDelegate : NSObjectProtocol {
  optional func contactPickerWillClose(picker: CNContactPicker)
  optional func contactPickerDidClose(picker: CNContactPicker)
}
