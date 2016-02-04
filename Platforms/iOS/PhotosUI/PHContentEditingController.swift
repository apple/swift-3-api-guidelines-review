
protocol PHContentEditingController : NSObjectProtocol {
  @available(iOS 8.0, *)
  func canHandleAdjustmentData(adjustmentData: PHAdjustmentData!) -> Bool
  @available(iOS 8.0, *)
  func startContentEditingWithInput(contentEditingInput: PHContentEditingInput!, placeholderImage: UIImage!)
  @available(iOS 8.0, *)
  func finishContentEditingWithCompletionHandler(completionHandler: ((PHContentEditingOutput!) -> Void)!)
  func cancelContentEditing()
  var shouldShowCancelConfirmation: Bool { get }
}
