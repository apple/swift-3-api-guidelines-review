
@available(iOS 4.0, *)
class UINib : Object {
  /*not inherited*/ init(nibName name: String, bundle bundleOrNil: Bundle?)
  /*not inherited*/ init(data: Data, bundle bundleOrNil: Bundle?)
  func instantiate(withOwner ownerOrNil: AnyObject?, options optionsOrNil: [Object : AnyObject]? = [:]) -> [AnyObject]
  init()
}
