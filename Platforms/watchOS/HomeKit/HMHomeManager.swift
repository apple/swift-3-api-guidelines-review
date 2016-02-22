
@available(watchOS 20000, *)
class HMHomeManager : NSObject {
  weak var delegate: @sil_weak HMHomeManagerDelegate?
  var primaryHome: HMHome? { get }
  var homes: [HMHome] { get }
  init()
}
@available(watchOS 20000, *)
protocol HMHomeManagerDelegate : NSObjectProtocol {
  optional func homeManagerDidUpdateHomes(manager: HMHomeManager)
  optional func homeManagerDidUpdatePrimaryHome(manager: HMHomeManager)
  optional func homeManager(manager: HMHomeManager, didAdd home: HMHome)
  optional func homeManager(manager: HMHomeManager, didRemove home: HMHome)
}
