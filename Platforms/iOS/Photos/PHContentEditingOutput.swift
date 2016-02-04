
@available(iOS 8.0, *)
class PHContentEditingOutput : NSObject {
  init(contentEditingInput: PHContentEditingInput)
  var adjustmentData: PHAdjustmentData?
  @NSCopying var renderedContentURL: NSURL { get }
  init()
}
