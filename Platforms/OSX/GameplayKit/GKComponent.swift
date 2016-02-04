
@available(OSX 10.11, *)
class GKComponent : Object, Copying {
  weak var entity: @sil_weak GKEntity? { get }
  func updateWithDeltaTime(seconds: TimeInterval)
  init()
  @available(OSX 10.11, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(OSX 10.11, *)
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
  @available(OSX 10.11, *)
  func countByEnumeratingWith(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
