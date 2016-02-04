
@available(tvOS 9.0, *)
class GKEntity : NSObject, NSCopying {
  init()
  func updateWithDeltaTime(seconds: NSTimeInterval)
  var components: [GKComponent] { get }
  func addComponent(component: GKComponent)
  func removeComponentForClass(componentClass: AnyClass)
  @available(tvOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}

@available(iOS 9.0, OSX 10.11, tvOS 9.0, *)
extension GKEntity {
  @warn_unused_result
  func componentForClass<ComponentType : GKComponent>(componentClass: ComponentType.Type) -> ComponentType?
}
