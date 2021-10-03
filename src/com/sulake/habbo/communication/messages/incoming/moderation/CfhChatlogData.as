package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_2048:int;
      
      private var var_2834:int;
      
      private var var_1459:int;
      
      private var var_2453:int;
      
      private var var_118:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2048 = param1.readInteger();
         this.var_2834 = param1.readInteger();
         this.var_1459 = param1.readInteger();
         this.var_2453 = param1.readInteger();
         this.var_118 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_2048);
      }
      
      public function get callId() : int
      {
         return this.var_2048;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2834;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1459;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2453;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_118;
      }
   }
}
