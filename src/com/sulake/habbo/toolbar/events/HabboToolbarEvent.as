package com.sulake.habbo.toolbar.events
{
   import flash.events.Event;
   
   public class HabboToolbarEvent extends Event
   {
      
      public static const const_72:String = "HTE_INITIALIZED";
      
      public static const const_37:String = "HTE_TOOLBAR_CLICK";
      
      public static const const_558:String = "HTE_TOOLBAR_ORIENTATION";
      
      public static const const_882:String = "HTE_TOOLBAR_RESIZED";
      
      public static const const_362:String = "HTE_TOOLBAR_STATE_HOTEL_VIEW";
      
      public static const const_324:String = "HTE_TOOLBAR_STATE_ROOM_VIEW";
       
      
      private var var_795:String;
      
      private var var_511:String;
      
      private var var_1226:String;
      
      public function HabboToolbarEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set iconId(param1:String) : void
      {
         this.var_795 = param1;
      }
      
      public function get iconId() : String
      {
         return this.var_795;
      }
      
      public function set orientation(param1:String) : void
      {
         this.var_511 = param1;
      }
      
      public function get orientation() : String
      {
         return this.var_511;
      }
      
      public function set iconName(param1:String) : void
      {
         this.var_1226 = param1;
      }
      
      public function get iconName() : String
      {
         return this.var_1226;
      }
   }
}
