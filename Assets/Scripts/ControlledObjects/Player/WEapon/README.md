WEapon README
Bryan Fawber
Created 10/21/2015

The weapons system turned out to be quite simple. Each bullet will have the Weapon.cs
script attached to it. This will contain the stats of the weapon like Damage and Speed.
This will also provide for additional stats in the future.

The weapon cache will just hold all the bullets as public objects. This will be used in 
the pickups to equip a new bullet to the player when it is picked up.

For the future I may add things like Ammo, switching between weapons, and the actual
combat system. 

When creating a new weapon, we just have to make a new bullet and add the weapon script
to it. Then fill out the stats accordingly.