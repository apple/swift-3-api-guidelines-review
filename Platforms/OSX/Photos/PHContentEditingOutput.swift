
@available(OSX 10.11, *)
class PHContentEditingOutput : Object {
  init(contentEditingInput: PHContentEditingInput)
  var adjustmentData: PHAdjustmentData
  @NSCopying var renderedContentURL: URL { get }
  init()
}
