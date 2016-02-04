
@available(tvOS 9.0, *)
class GKComponent : Object, Copying {
  weak var entity: @sil_weak GKEntity? { get }
  func updateWithDeltaTime(seconds: TimeInterval)
  init()
  @available(tvOS 9.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(tvOS 9.0, *)
class GKComponentSystem : Object, FastEnumeration {
  var componentClass: AnyClass { get }
  var components: [GKComponent] { get }
  subscript (idx: Int) -> GKComponent { get }
  init(componentClass cls: AnyClass)
  func addComponent(component: GKComponent)
  func addComponentWith(entity: GKEntity)
  func removeComponentWith(entity: GKEntity)
  func removeComponent(component: GKComponent)
  func updateWithDeltaTime(seconds: TimeInterval)
  init()
  @available(tvOS 9.0, *)
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
