package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1989:Boolean;
      
      private var var_2774:int;
      
      private var var_439:Boolean;
      
      private var var_1283:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get privateRoom() : Boolean
      {
         return this.var_1989;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2774;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1283;
      }
      
      public function get owner() : Boolean
      {
         return this.var_439;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1283 != null)
         {
            this.var_1283.dispose();
            this.var_1283 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1989 = param1.readBoolean();
         if(this.var_1989)
         {
            this.var_2774 = param1.readInteger();
            this.var_439 = param1.readBoolean();
         }
         else
         {
            this.var_1283 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
