
@available(iOS 8.0, *)
class HMHomeManager : NSObject {
  weak var delegate: @sil_weak HMHomeManagerDelegate?
  var primaryHome: HMHome? { get }
  var homes: [HMHome] { get }
  func updatePrimaryHome(home: HMHome, completionHandler completion: (NSError?) -> Void)
  func addHome(name homeName: String, completionHandler completion: (HMHome?, NSError?) -> Void)
  func removeHome(home: HMHome, completionHandler completion: (NSError?) -> Void)
  init()
}
@available(iOS 8.0, *)
protocol HMHomeManagerDelegate : NSObjectProtocol {
  optional func homeManagerDidUpdateHomes(manager: HMHomeManager)
  optional func homeManagerDidUpdatePrimaryHome(manager: HMHomeManager)
  optional func homeManager(manager: HMHomeManager, didAdd home: HMHome)
  optional func homeManager(manager: HMHomeManager, didRemove home: HMHome)
}
