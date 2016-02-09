
@available(OSX 10.11, *)
class GKMinmaxStrategist : Object, GKStrategist {
  var maxLookAheadDepth: Int
  func bestMoveFor(player: GKGameModelPlayer) -> GKGameModelUpdate?
  func randomMove(forPlayer player: GKGameModelPlayer, fromNumberOfBestMoves numMovesToConsider: Int) -> GKGameModelUpdate?
  init()
  @available(OSX 10.11, *)
  var gameModel: GKGameModel?
  @available(OSX 10.11, *)
  var randomSource: GKRandom?
  @available(OSX 10.11, *)
  func bestMoveForActivePlayer() -> GKGameModelUpdate?
}
