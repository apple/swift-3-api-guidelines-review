
@available(iOS 8.0, *)
class GKSavedGame : NSObject, NSCopying {
  @available(iOS 8.0, *)
  var name: String? { get }
  @available(iOS 8.0, *)
  var deviceName: String? { get }
  @available(iOS 8.0, *)
  var modificationDate: NSDate? { get }
  @available(iOS 8.0, *)
  func loadDataWithCompletionHandler(_ handler: ((NSData?, NSError?) -> Void)?)
  @available(iOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
extension GKLocalPlayer : GKSavedGameListener {
  @available(iOS 8.0, *)
  func fetchSavedGamesWithCompletionHandler(_ handler: (([GKSavedGame]?, NSError?) -> Void)?)
  @available(iOS 8.0, *)
  func saveGameData(_ data: NSData, withName name: String, completionHandler handler: ((GKSavedGame?, NSError?) -> Void)?)
  @available(iOS 8.0, *)
  func deleteSavedGamesWithName(_ name: String, completionHandler handler: ((NSError?) -> Void)?)
  @available(iOS 8.0, *)
  func resolveConflictingSavedGames(_ conflictingSavedGames: [GKSavedGame], withData data: NSData, completionHandler handler: (([GKSavedGame]?, NSError?) -> Void)?)
  @available(iOS 8.0, *)
  func player(_ player: GKPlayer, didModifySavedGame savedGame: GKSavedGame)
  @available(iOS 8.0, *)
  func player(_ player: GKPlayer, hasConflictingSavedGames savedGames: [GKSavedGame])
}
