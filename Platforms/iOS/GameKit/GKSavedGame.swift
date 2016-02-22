
@available(iOS 8.0, *)
class GKSavedGame : NSObject, NSCopying {
  @available(iOS 8.0, *)
  var name: String? { get }
  @available(iOS 8.0, *)
  var deviceName: String? { get }
  @available(iOS 8.0, *)
  var modificationDate: NSDate? { get }
  @available(iOS 8.0, *)
  func loadData(completionHandler handler: ((NSData?, NSError?) -> Void)? = nil)
  init()
  @available(iOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
extension GKLocalPlayer : GKSavedGameListener {
  @available(iOS 8.0, *)
  func fetchSavedGames(completionHandler handler: (([GKSavedGame]?, NSError?) -> Void)? = nil)
  @available(iOS 8.0, *)
  func saveGameData(data: NSData, withName name: String, completionHandler handler: ((GKSavedGame?, NSError?) -> Void)? = nil)
  @available(iOS 8.0, *)
  func deleteSavedGames(name name: String, completionHandler handler: ((NSError?) -> Void)? = nil)
  @available(iOS 8.0, *)
  func resolveConflictingSavedGames(conflictingSavedGames: [GKSavedGame], with data: NSData, completionHandler handler: (([GKSavedGame]?, NSError?) -> Void)? = nil)
  @available(iOS 8.0, *)
  func player(player: GKPlayer, didModifySavedGame savedGame: GKSavedGame)
  @available(iOS 8.0, *)
  func player(player: GKPlayer, hasConflictingSavedGames savedGames: [GKSavedGame])
}
