
@available(OSX 10.11, *)
class GKMinmaxStrategist : NSObject, GKStrategist {
  var maxLookAheadDepth: Int
  func bestMoveForPlayer(player: GKGameModelPlayer) -> GKGameModelUpdate?
  func randomMoveForPlayer(player: GKGameModelPlayer, fromNumberOfBestMoves numMovesToConsider: Int) -> GKGameModelUpdate?
  init()
  @available(OSX 10.11, *)
  var gameModel: GKGameModel?
  @available(OSX 10.11, *)
  var randomSource: GKRandom?
  @available(OSX 10.11, *)
  func bestMoveForActivePlayer() -> GKGameModelUpdate?
}
