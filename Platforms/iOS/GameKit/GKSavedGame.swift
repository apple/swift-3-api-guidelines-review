
@available(iOS 8.0, *)
class GKSavedGame : NSObject, NSCopying {
  @available(iOS 8.0, *)
  var name: String? { get }
  @available(iOS 8.0, *)
  var deviceName: String? { get }
  @available(iOS 8.0, *)
  var modificationDate: NSDate? { get }
  @available(iOS 8.0, *)
  func loadDataWithCompletionHandler(handler: ((NSData?, NSError?) -> Void)?)
  init()
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension GKLocalPlayer : GKSavedGameListener {
  @available(iOS 8.0, *)
  func fetchSavedGamesWithCompletionHandler(handler: (([GKSavedGame]?, NSError?) -> Void)?)
  @available(iOS 8.0, *)
  func saveGameData(data: NSData, withName name: String, completionHandler handler: ((GKSavedGame?, NSError?) -> Void)?)
  @available(iOS 8.0, *)
  func deleteSavedGamesWithName(name: String, completionHandler handler: ((NSError?) -> Void)?)
  @available(iOS 8.0, *)
  func resolveConflictingSavedGames(conflictingSavedGames: [GKSavedGame], withData data: NSData, completionHandler handler: (([GKSavedGame]?, NSError?) -> Void)?)
  @available(iOS 8.0, *)
  func player(player: GKPlayer, didModifySavedGame savedGame: GKSavedGame)
  @available(iOS 8.0, *)
  func player(player: GKPlayer, hasConflictingSavedGames savedGames: [GKSavedGame])
}
