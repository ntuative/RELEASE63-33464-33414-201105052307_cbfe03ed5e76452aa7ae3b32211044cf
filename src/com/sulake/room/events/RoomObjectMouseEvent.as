package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_163:String = "ROE_MOUSE_CLICK";
      
      public static const const_183:String = "ROE_MOUSE_ENTER";
      
      public static const const_611:String = "ROE_MOUSE_MOVE";
      
      public static const const_172:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1989:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_642:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1726:String = "";
      
      private var var_2284:Boolean;
      
      private var var_2280:Boolean;
      
      private var var_2283:Boolean;
      
      private var var_2286:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1726 = param2;
         this.var_2284 = param5;
         this.var_2280 = param6;
         this.var_2283 = param7;
         this.var_2286 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1726;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2284;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2280;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2283;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2286;
      }
   }
}
