Animation not currently working in Unity. Works outside Unity on local Maya and Motionbuilder 
(exporting just the skeleton shows animation is on there).

Issues appears to be a retargetting issue within Unity. When seeing the Preview window when the animation clip
is selected no animation will appear but the model correctly is selected (this is when model is exported with rig 
seperately from the animation which is just the rig). 

To Test in Unity:
Model and Rig - > "arty02"

Animation of shooting -> "arty02@fire_v1Anim"

I believe the animation and Model are connecting based on the way I named the file, however why the animation is not appearing I am not 
sure. May be connected to when you select the model and you select the root of the bone, my window appears slightly differently from 
one tutorial I saw that went in dept, but is set up like others. Will test this (simply removing the joints from the group joints).

The model can be manually manipulated in Unity as you can rotate, translate, etc. the bones in the scene and see the models correctly
follow. 

"arty02_ANIMATION_TEST" is a version of the model and rig that has it's animation baked in a single file. Unity will see the animation in 
fbx but does not show the animation in the preview. 

Tried creating a controller for it but no animation still played. 