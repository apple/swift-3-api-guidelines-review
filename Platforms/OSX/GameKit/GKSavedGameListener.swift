
@available(OSX 10.10, *)
protocol GKSavedGameListener : ObjectProtocol {
  @available(OSX 10.10, *)
  optional func player(player: GKPlayer, didModifySavedGame savedGame: GKSavedGame)
  @available(OSX 10.10, *)
  optional func player(player: GKPlayer, hasConflictingSavedGames savedGames: [GKSavedGame])
}
