
@available(iOS 8.0, *)
protocol GKSavedGameListener : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional func player(player: GKPlayer, didModifySavedGame savedGame: GKSavedGame)
  @available(iOS 8.0, *)
  optional func player(player: GKPlayer, hasConflictingSavedGames savedGames: [GKSavedGame])
}
