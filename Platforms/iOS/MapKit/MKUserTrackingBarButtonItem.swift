
@available(iOS 5.0, *)
class MKUserTrackingBarButtonItem : UIBarButtonItem {
  init(mapView mapView: MKMapView?)
  var mapView: MKMapView?
  convenience init()
  init?(coder aDecoder: NSCoder)
  convenience init(image image: UIImage?, style style: UIBarButtonItemStyle, target target: AnyObject?, action action: Selector)
  @available(iOS 5.0, *)
  convenience init(image image: UIImage?, landscapeImagePhone landscapeImagePhone: UIImage?, style style: UIBarButtonItemStyle, target target: AnyObject?, action action: Selector)
  convenience init(title title: String?, style style: UIBarButtonItemStyle, target target: AnyObject?, action action: Selector)
  convenience init(barButtonSystemItem systemItem: UIBarButtonSystemItem, target target: AnyObject?, action action: Selector)
  convenience init(customView customView: UIView)
}
