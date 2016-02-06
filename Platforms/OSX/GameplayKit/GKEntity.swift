
@available(OSX 10.11, *)
class GKEntity : Object, Copying {
  init()
  func updateWithDeltaTime(seconds: TimeInterval)
  var components: [GKComponent] { get }
  func addComponent(component: GKComponent)
  func removeComponentFor(componentClass: AnyClass)
  @available(OSX 10.11, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}

@available(iOS 9.0, OSX 10.11, tvOS 9.0, *)
extension GKEntity {
  @warn_unused_result
  func componentForClass<ComponentType : GKComponent>(componentClass: ComponentType.Type) -> ComponentType?
}
