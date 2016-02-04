
protocol GKChallengeListener : NSObjectProtocol {
  @available(OSX 10.10, *)
  optional func player(player: GKPlayer, wantsToPlayChallenge challenge: GKChallenge)
  @available(OSX 10.10, *)
  optional func player(player: GKPlayer, didReceiveChallenge challenge: GKChallenge)
  @available(OSX 10.10, *)
  optional func player(player: GKPlayer, didCompleteChallenge challenge: GKChallenge, issuedByFriend friendPlayer: GKPlayer)
  @available(OSX 10.10, *)
  optional func player(player: GKPlayer, issuedChallengeWasCompleted challenge: GKChallenge, byFriend friendPlayer: GKPlayer)
}
