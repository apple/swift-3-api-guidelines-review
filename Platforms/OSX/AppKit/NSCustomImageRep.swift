
class NSCustomImageRep : NSImageRep {
  @available(OSX 10.8, *)
  init(size: NSSize, flipped drawingHandlerShouldBeCalledWithFlippedContext: Bool, drawingHandler: (NSRect) -> Bool)
  @available(OSX 10.8, *)
  var drawingHandler: ((NSRect) -> Bool)? { get }
  init(drawSelector aMethod: Selector, delegate anObject: AnyObject)
  var drawSelector: Selector { get }
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject? { get }
  init()
  init?(coder: NSCoder)
}