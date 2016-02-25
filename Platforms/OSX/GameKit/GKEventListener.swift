
protocol GKChallengeListener : NSObjectProtocol {
  @available(OSX 10.10, *)
  optional func player(_ player: GKPlayer, wantsToPlayChallenge challenge: GKChallenge)
  @available(OSX 10.10, *)
  optional func player(_ player: GKPlayer, didReceiveChallenge challenge: GKChallenge)
  @available(OSX 10.10, *)
  optional func player(_ player: GKPlayer, didCompleteChallenge challenge: GKChallenge, issuedByFriend friendPlayer: GKPlayer)
  @available(OSX 10.10, *)
  optional func player(_ player: GKPlayer, issuedChallengeWasCompleted challenge: GKChallenge, byFriend friendPlayer: GKPlayer)
}
