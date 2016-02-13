
@available(iOS 9.0, *)
class GKComponent : Object, Copying {
  weak var entity: @sil_weak GKEntity? { get }
  func update(withDeltaTime seconds: TimeInterval)
  init()
  @available(iOS 9.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
@available(iOS 9.0, *)
class GKComponentSystem : Object, FastEnumeration {
  var componentClass: AnyClass { get }
  var components: [GKComponent] { get }
  subscript(idx: Int) -> GKComponent { get }
  init(componentClass cls: AnyClass)
  func addComponent(component: GKComponent)
  func addComponent(with entity: GKEntity)
  func removeComponent(with entity: GKEntity)
  func removeComponent(component: GKComponent)
  func update(withDeltaTime seconds: TimeInterval)
  init()
  @available(iOS 9.0, *)
  func countByEnumerating(with state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
