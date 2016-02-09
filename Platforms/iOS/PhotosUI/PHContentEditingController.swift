
protocol PHContentEditingController : ObjectProtocol {
  @available(iOS 8.0, *)
  func canHandle(adjustmentData: PHAdjustmentData!) -> Bool
  @available(iOS 8.0, *)
  func startContentEditing(withInput contentEditingInput: PHContentEditingInput!, placeholderImage: UIImage!)
  @available(iOS 8.0, *)
  func finishContentEditing(withCompletionHandler completionHandler: ((PHContentEditingOutput!) -> Void)!)
  func cancelContentEditing()
  var shouldShowCancelConfirmation: Bool { get }
}
