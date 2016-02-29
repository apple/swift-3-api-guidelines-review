
@available(iOS 9.0, *)
class GKComponent : NSObject, NSCopying {
  weak var entity: @sil_weak GKEntity? { get }
  func update(withDeltaTime seconds: NSTimeInterval)
  @available(iOS 9.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
@available(iOS 9.0, *)
class GKComponentSystem : NSObject, NSFastEnumeration {
  var componentClass: AnyClass { get }
  var components: [GKComponent] { get }
  subscript(_ idx: Int) -> GKComponent { get }
  init(componentClass cls: AnyClass)
  func addComponent(_ component: GKComponent)
  func addComponent(with entity: GKEntity)
  func removeComponent(with entity: GKEntity)
  func removeComponent(_ component: GKComponent)
  func update(withDeltaTime seconds: NSTimeInterval)
  @available(iOS 9.0, *)
  func countByEnumerating(with state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
