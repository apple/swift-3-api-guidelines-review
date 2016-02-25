
@available(OSX 10.10, *)
class GKSavedGame : NSObject, NSCopying {
  @available(OSX 10.10, *)
  var name: String? { get }
  @available(OSX 10.10, *)
  var deviceName: String? { get }
  @available(OSX 10.10, *)
  var modificationDate: NSDate? { get }
  @available(OSX 10.10, *)
  func loadDataWithCompletionHandler(_ handler: ((NSData?, NSError?) -> Void)?)
  @available(OSX 10.10, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
extension GKLocalPlayer : GKSavedGameListener {
  @available(OSX 10.10, *)
  func fetchSavedGamesWithCompletionHandler(_ handler: (([GKSavedGame]?, NSError?) -> Void)?)
  @available(OSX 10.10, *)
  func saveGameData(_ data: NSData, withName name: String, completionHandler handler: ((GKSavedGame?, NSError?) -> Void)?)
  @available(OSX 10.10, *)
  func deleteSavedGamesWithName(_ name: String, completionHandler handler: ((NSError?) -> Void)?)
  @available(OSX 10.10, *)
  func resolveConflictingSavedGames(_ conflictingSavedGames: [GKSavedGame], withData data: NSData, completionHandler handler: (([GKSavedGame]?, NSError?) -> Void)?)
  @available(OSX 10.10, *)
  func player(_ player: GKPlayer, didModifySavedGame savedGame: GKSavedGame)
  @available(OSX 10.10, *)
  func player(_ player: GKPlayer, hasConflictingSavedGames savedGames: [GKSavedGame])
}
