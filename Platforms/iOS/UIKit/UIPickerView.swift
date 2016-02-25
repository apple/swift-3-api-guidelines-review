
@available(iOS 2.0, *)
class UIPickerView : UIView, NSCoding, UITableViewDataSource {
  weak var dataSource: @sil_weak UIPickerViewDataSource?
  weak var delegate: @sil_weak UIPickerViewDelegate?
  var showsSelectionIndicator: Bool
  var numberOfComponents: Int { get }
  func numberOfRowsInComponent(_ component: Int) -> Int
  func rowSizeForComponent(_ component: Int) -> CGSize
  func viewForRow(_ row: Int, forComponent component: Int) -> UIView?
  func reloadAllComponents()
  func reloadComponent(_ component: Int)
  func selectRow(_ row: Int, inComponent component: Int, animated animated: Bool)
  func selectedRowInComponent(_ component: Int) -> Int
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
  @available(iOS 2.0, *)
  func numberOfSectionsInTableView(_ tableView: UITableView) -> Int
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String?
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool
  @available(iOS 2.0, *)
  func sectionIndexTitlesForTableView(_ tableView: UITableView) -> [String]?
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, atIndex index: Int) -> Int
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
  @available(iOS 2.0, *)
  func tableView(_ tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath)
}
protocol UIPickerViewDataSource : NSObjectProtocol {
  @available(iOS 2.0, *)
  func numberOfComponentsInPickerView(_ pickerView: UIPickerView) -> Int
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
  optional func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView
  @available(iOS 2.0, *)
  optional func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
}
