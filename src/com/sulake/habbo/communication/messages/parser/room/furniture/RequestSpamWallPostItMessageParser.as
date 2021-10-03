package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RequestSpamWallPostItMessageParser implements IMessageParser
   {
       
      
      private var var_1658:int;
      
      private var var_459:String;
      
      public function RequestSpamWallPostItMessageParser()
      {
         super();
      }
      
      public function get itemId() : int
      {
         return this.var_1658;
      }
      
      public function get location() : String
      {
         return this.var_459;
      }
      
      public function flush() : Boolean
      {
         this.var_1658 = -1;
         this.var_459 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1658 = param1.readInteger();
         this.var_459 = param1.readString();
         return true;
      }
   }
}
