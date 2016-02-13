
protocol PHContentEditingController : ObjectProtocol {
  @available(iOS 8.0, *)
  func canHandle(adjustmentData: PHAdjustmentData!) -> Bool
  @available(iOS 8.0, *)
  func startContentEditing(with contentEditingInput: PHContentEditingInput!, placeholderImage: UIImage!)
  @available(iOS 8.0, *)
  func finishContentEditing(completionHandler completionHandler: ((PHContentEditingOutput!) -> Void)!)
  func cancelContentEditing()
  var shouldShowCancelConfirmation: Bool { get }
}
