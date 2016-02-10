
let MKAnnotationCalloutInfoDidChangeNotification: String
@available(OSX 10.9, *)
enum MKAnnotationViewDragState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case starting
  case dragging
  case canceling
  case ending
}
@available(OSX 10.9, *)
class MKAnnotationView : NSView {
  init(annotation: MKAnnotation?, reuseIdentifier: String?)
  var reuseIdentifier: String? { get }
  func prepareForReuse()
  var annotation: MKAnnotation?
  var image: NSImage?
  var centerOffset: CGPoint
  var calloutOffset: CGPoint
  var leftCalloutOffset: CGPoint
  var rightCalloutOffset: CGPoint
  var isEnabled: Bool
  var isHighlighted: Bool
  var isSelected: Bool
  func setSelected(selected: Bool, animated: Bool)
  var canShowCallout: Bool
  var leftCalloutAccessoryView: NSView?
  var rightCalloutAccessoryView: NSView?
  @available(OSX 10.11, *)
  var detailCalloutAccessoryView: NSView?
  @available(OSX 10.9, *)
  var isDraggable: Bool
  @available(OSX 10.9, *)
  var dragState: MKAnnotationViewDragState
  @available(OSX 10.9, *)
  func setDragState(newDragState: MKAnnotationViewDragState, animated: Bool)
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
