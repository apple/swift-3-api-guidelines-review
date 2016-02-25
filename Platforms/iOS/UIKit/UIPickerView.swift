
@available(iOS 2.0, *)
class UIPickerView : UIView, NSCoding, UITableViewDataSource {
  weak var dataSource: @sil_weak UIPickerViewDataSource?
  weak var delegate: @sil_weak UIPickerViewDelegate?
  var showsSelectionIndicator: Bool
  var numberOfComponents: Int { get }
  func numberOfRows(inComponent component: Int) -> Int
  func rowSize(forComponent component: Int) -> CGSize
  func view(forRow row: Int, forComponent component: Int) -> UIView?
  func reloadAllComponents()
  func reloadComponent(_ component: Int)
  func selectRow(_ row: Int, inComponent component: Int, animated animated: Bool)
  func selectedRow(inComponent component: Int) -> Int
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: NSIndexPath) -> UITableViewCell
  @available(iOS 2.0, *)
  func numberOfSections(in tableView: UITableView) -> Int
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String?
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, canEditRowAt indexPath: NSIndexPath) -> Bool
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, canMoveRowAt indexPath: NSIndexPath) -> Bool
  @available(iOS 2.0, *)
  func sectionIndexTitles(for tableView: UITableView) -> [String]?
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: NSIndexPath, to destinationIndexPath: NSIndexPath)
}
protocol UIPickerViewDataSource : NSObjectProtocol {
  @available(iOS 2.0, *)
  func numberOfComponents(in pickerView: UIPickerView) -> Int
  @available(iOS 2.0, *)
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
}
protocol UIPickerViewDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  optional func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat
  @available(iOS 2.0, *)
  optional func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat
  @available(iOS 2.0, *)
  optional func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
  @available(iOS 6.0, *)
  optional func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString?
  @available(iOS 2.0, *)
  optional func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView
  @available(iOS 2.0, *)
  optional func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
}
