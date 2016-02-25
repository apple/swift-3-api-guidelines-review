
protocol PHContentEditingController : NSObjectProtocol {
  @available(iOS 8.0, *)
  func canHandleAdjustmentData(_ adjustmentData: PHAdjustmentData!) -> Bool
  @available(iOS 8.0, *)
  func startContentEditingWithInput(_ contentEditingInput: PHContentEditingInput!, placeholderImage placeholderImage: UIImage!)
  @available(iOS 8.0, *)
  func finishContentEditingWithCompletionHandler(_ completionHandler: ((PHContentEditingOutput!) -> Void)!)
  func cancelContentEditing()
  var shouldShowCancelConfirmation: Bool { get }
}
