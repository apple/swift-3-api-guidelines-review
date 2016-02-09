
@available(OSX 10.11, *)
class GKComponent : Object, Copying {
  weak var entity: @sil_weak GKEntity? { get }
  func updateWithDeltaTime(seconds: TimeInterval)
  init()
  @available(OSX 10.11, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
@available(OSX 10.11, *)
class GKComponentSystem : Object, FastEnumeration {
  var componentClass: AnyClass { get }
  var components: [GKComponent] { get }
  subscript (atIndexedSubscript idx: Int) -> GKComponent { get }
  init(componentClass cls: AnyClass)
  func addComponent(component: GKComponent)
  func addComponent(withEntity entity: GKEntity)
  func removeComponent(withEntity entity: GKEntity)
  func removeComponent(component: GKComponent)
  func updateWithDeltaTime(seconds: TimeInterval)
  init()
  @available(OSX 10.11, *)
  func countByEnumerating(withState state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
