package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_405:String = "RWRQUE_VISITOR_QUEUE_STATUS";
      
      public static const const_630:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
       
      
      private var var_1232:int;
      
      private var var_2896:Boolean;
      
      private var var_344:Boolean;
      
      private var var_1721:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1232 = param2;
         this.var_2896 = param3;
         this.var_344 = param4;
         this.var_1721 = param5;
      }
      
      public function get position() : int
      {
         return this.var_1232;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return this.var_2896;
      }
      
      public function get isActive() : Boolean
      {
         return this.var_344;
      }
      
      public function get isClubQueue() : Boolean
      {
         return this.var_1721;
      }
   }
}
