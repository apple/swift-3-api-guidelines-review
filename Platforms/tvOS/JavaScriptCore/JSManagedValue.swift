
@available(tvOS 7.0, *)
class JSManagedValue : Object {
  @available(tvOS 8.0, *)
  /*not inherited*/ init!(value: JSValue!, andOwner owner: AnyObject!)
  init!(value: JSValue!)
  var value: JSValue! { get }
  init()
}
