
@available(OSX 10.11, *)
protocol CNContactPickerDelegate : ObjectProtocol {
  optional func contactPickerWillClose(picker: CNContactPicker)
  optional func contactPickerDidClose(picker: CNContactPicker)
}
