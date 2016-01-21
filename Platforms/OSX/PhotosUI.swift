
protocol PHContentEditingController : ObjectProtocol {
  func cancelContentEditing()
  var shouldShowCancelConfirmation: Bool { get }
}
