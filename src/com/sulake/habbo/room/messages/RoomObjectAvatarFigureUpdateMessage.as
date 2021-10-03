package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_641:String;
      
      private var var_2338:String;
      
      private var var_993:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_641 = param1;
         this.var_993 = param2;
         this.var_2338 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_641;
      }
      
      public function get race() : String
      {
         return this.var_2338;
      }
      
      public function get gender() : String
      {
         return this.var_993;
      }
   }
}
