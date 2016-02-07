Bolts & Warping Guide
----------------------

1. The number of bolts needed to activate the warp is a public var on the ScoreManager. Set this to the desired number.
2. The destination of the warp needs to be set. If not set, the game will crash when you attempt to warp. 
3. This is just a quick version for friday's build. Purpose is to warp from planet 1 to planet 2. Do not mistake this for a final
implementation.

UPDATE 2/7/16
I believe the warping should be done now. As of now, the goal for each planet will be the same based on the 

ScoreManager.Instance.BoltGoal

amount. Once a player teleports, their bolt count is reset and the teleporters are deactivated. Once the goal is reaced again,
they will become activated once more. Just put the warping script on each teleport and make sure to set the destination.
