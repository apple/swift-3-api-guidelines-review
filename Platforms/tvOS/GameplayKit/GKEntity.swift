
@available(tvOS 9.0, *)
class GKEntity : Object, Copying {
  init()
  func update(withDeltaTime seconds: TimeInterval)
  var components: [GKComponent] { get }
  func addComponent(component: GKComponent)
  func removeComponent(for componentClass: AnyClass)
  @available(tvOS 9.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}

@available(iOS 9.0, OSX 10.11, tvOS 9.0, *)
extension GKEntity {
  @warn_unused_result
  func componentForClass<ComponentType : GKComponent>(componentClass: ComponentType.Type) -> ComponentType?
}
