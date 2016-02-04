
let MKAnnotationCalloutInfoDidChangeNotification: String
@available(iOS 4.0, *)
enum MKAnnotationViewDragState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case Starting
  case Dragging
  case Canceling
  case Ending
}
@available(iOS 3.0, *)
class MKAnnotationView : UIView {
  init(annotation: MKAnnotation?, reuseIdentifier: String?)
  var reuseIdentifier: String? { get }
  func prepareForReuse()
  var annotation: MKAnnotation?
  var image: UIImage?
  var centerOffset: CGPoint
  var calloutOffset: CGPoint
  var enabled: Bool
  var highlighted: Bool
  var selected: Bool
  func setSelected(selected: Bool, animated: Bool)
  var canShowCallout: Bool
  var leftCalloutAccessoryView: UIView?
  var rightCalloutAccessoryView: UIView?
  @available(iOS 9.0, *)
  var detailCalloutAccessoryView: UIView?
  @available(iOS 4.0, *)
  var draggable: Bool
  @available(iOS 4.0, *)
  var dragState: MKAnnotationViewDragState
  @available(iOS 4.2, *)
  func setDragState(newDragState: MKAnnotationViewDragState, animated: Bool)
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
