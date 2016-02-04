
@available(iOS 8.0, *)
class PHContentEditingOutput : Object {
  init(contentEditingInput: PHContentEditingInput)
  var adjustmentData: PHAdjustmentData?
  @NSCopying var renderedContentURL: URL { get }
  init()
}
