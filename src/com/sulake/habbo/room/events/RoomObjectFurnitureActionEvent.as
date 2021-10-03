package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectFurnitureActionEvent extends RoomObjectEvent
   {
      
      public static const const_588:String = "ROFCAE_DICE_OFF";
      
      public static const const_487:String = "ROFCAE_DICE_ACTIVATE";
      
      public static const const_645:String = "ROFCAE_USE_HABBOWHEEL";
      
      public static const const_549:String = "ROFCAE_STICKIE";
      
      public static const const_570:String = "ROFCAE_VIRAL_GIFT";
      
      public static const const_524:String = "ROFCAE_ENTER_ONEWAYDOOR";
      
      public static const const_537:String = "ROFCAE_QUEST_VENDING";
      
      public static const const_544:String = "ROFCAE_SOUND_MACHINE_INIT";
      
      public static const const_495:String = "ROFCAE_SOUND_MACHINE_START";
      
      public static const const_519:String = "ROFCAE_SOUND_MACHINE_STOP";
      
      public static const const_499:String = "ROFCAE_SOUND_MACHINE_DISPOSE";
      
      public static const const_504:String = "ROFCAE_JUKEBOX_INIT";
      
      public static const const_579:String = "ROFCAE_JUKEBOX_START";
      
      public static const const_568:String = "ROFCAE_JUKEBOX_MACHINE_STOP";
      
      public static const const_627:String = "ROFCAE_JUKEBOX_DISPOSE";
      
      public static const const_257:String = "ROFCAE_MOUSE_BUTTON";
      
      public static const const_352:String = "ROFCAE_MOUSE_ARROW";
       
      
      public function RoomObjectFurnitureActionEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param2,param3,param4,param5);
      }
   }
}
