
class NSCustomImageRep : NSImageRep {
  @available(OSX 10.8, *)
  init(size: Size, flipped drawingHandlerShouldBeCalledWithFlippedContext: Bool, drawingHandler: (Rect) -> Bool)
  @available(OSX 10.8, *)
  var drawingHandler: ((Rect) -> Bool)? { get }
  init(draw aMethod: Selector, delegate anObject: AnyObject)
  var drawSelector: Selector { get }
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject? { get }
  init()
  init?(coder: Coder)
}
