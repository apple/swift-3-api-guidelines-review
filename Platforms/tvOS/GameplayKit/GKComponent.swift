
@available(tvOS 9.0, *)
class GKComponent : NSObject, NSCopying {
  weak var entity: @sil_weak GKEntity? { get }
  func update(deltaTime seconds: NSTimeInterval)
  @available(tvOS 9.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
@available(tvOS 9.0, *)
class GKComponentSystem : NSObject, NSFastEnumeration {
  var componentClass: AnyClass { get }
  var components: [GKComponent] { get }
  subscript(_ idx: Int) -> GKComponent { get }
  init(componentClass cls: AnyClass)
  func addComponent(_ component: GKComponent)
  func addComponent(_ entity: GKEntity)
  func removeComponent(_ entity: GKEntity)
  func removeComponent(_ component: GKComponent)
  func update(deltaTime seconds: NSTimeInterval)
  @available(tvOS 9.0, *)
  func countByEnumerating(_ state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
