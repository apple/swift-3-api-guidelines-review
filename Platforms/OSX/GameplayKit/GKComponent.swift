
@available(OSX 10.11, *)
class GKComponent : NSObject, NSCopying {
  weak var entity: @sil_weak GKEntity? { get }
  func updateWithDeltaTime(seconds: NSTimeInterval)
  init()
  @available(OSX 10.11, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(OSX 10.11, *)
class GKComponentSystem : NSObject, NSFastEnumeration {
  var componentClass: AnyClass { get }
  var components: [GKComponent] { get }
  subscript (idx: Int) -> GKComponent { get }
  init(componentClass cls: AnyClass)
  func addComponent(component: GKComponent)
  func addComponentWithEntity(entity: GKEntity)
  func removeComponentWithEntity(entity: GKEntity)
  func removeComponent(component: GKComponent)
  func updateWithDeltaTime(seconds: NSTimeInterval)
  init()
  @available(OSX 10.11, *)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
