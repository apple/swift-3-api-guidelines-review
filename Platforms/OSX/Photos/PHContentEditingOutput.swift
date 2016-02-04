
@available(OSX 10.11, *)
class PHContentEditingOutput : NSObject {
  init(contentEditingInput: PHContentEditingInput)
  var adjustmentData: PHAdjustmentData
  @NSCopying var renderedContentURL: NSURL { get }
  init()
}
