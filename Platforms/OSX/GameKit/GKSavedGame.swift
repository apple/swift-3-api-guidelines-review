
@available(OSX 10.10, *)
class GKSavedGame : NSObject, NSCopying {
  @available(OSX 10.10, *)
  var name: String? { get }
  @available(OSX 10.10, *)
  var deviceName: String? { get }
  @available(OSX 10.10, *)
  var modificationDate: NSDate? { get }
  @available(OSX 10.10, *)
  func loadDataWithCompletionHandler(handler: ((NSData?, NSError?) -> Void)?)
  init()
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
extension GKLocalPlayer : GKSavedGameListener {
  @available(OSX 10.10, *)
  func fetchSavedGamesWithCompletionHandler(handler: (([GKSavedGame]?, NSError?) -> Void)?)
  @available(OSX 10.10, *)
  func saveGameData(data: NSData, withName name: String, completionHandler handler: ((GKSavedGame?, NSError?) -> Void)?)
  @available(OSX 10.10, *)
  func deleteSavedGamesWithName(name: String, completionHandler handler: ((NSError?) -> Void)?)
  @available(OSX 10.10, *)
  func resolveConflictingSavedGames(conflictingSavedGames: [GKSavedGame], withData data: NSData, completionHandler handler: (([GKSavedGame]?, NSError?) -> Void)?)
  @available(OSX 10.10, *)
  func player(player: GKPlayer, didModifySavedGame savedGame: GKSavedGame)
  @available(OSX 10.10, *)
  func player(player: GKPlayer, hasConflictingSavedGames savedGames: [GKSavedGame])
}
