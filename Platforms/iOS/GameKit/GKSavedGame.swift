
@available(iOS 8.0, *)
class GKSavedGame : Object, Copying {
  @available(iOS 8.0, *)
  var name: String? { get }
  @available(iOS 8.0, *)
  var deviceName: String? { get }
  @available(iOS 8.0, *)
  var modificationDate: Date? { get }
  @available(iOS 8.0, *)
  func loadData(completionHandler handler: ((Data?, Error?) -> Void)? = nil)
  init()
  @available(iOS 8.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
extension GKLocalPlayer : GKSavedGameListener {
  @available(iOS 8.0, *)
  func fetchSavedGames(completionHandler handler: (([GKSavedGame]?, Error?) -> Void)? = nil)
  @available(iOS 8.0, *)
  func saveGameData(data: Data, withName name: String, completionHandler handler: ((GKSavedGame?, Error?) -> Void)? = nil)
  @available(iOS 8.0, *)
  func deleteSavedGames(name name: String, completionHandler handler: ((Error?) -> Void)? = nil)
  @available(iOS 8.0, *)
  func resolveConflictingSavedGames(conflictingSavedGames: [GKSavedGame], with data: Data, completionHandler handler: (([GKSavedGame]?, Error?) -> Void)? = nil)
  @available(iOS 8.0, *)
  func player(player: GKPlayer, didModifySavedGame savedGame: GKSavedGame)
  @available(iOS 8.0, *)
  func player(player: GKPlayer, hasConflictingSavedGames savedGames: [GKSavedGame])
}
