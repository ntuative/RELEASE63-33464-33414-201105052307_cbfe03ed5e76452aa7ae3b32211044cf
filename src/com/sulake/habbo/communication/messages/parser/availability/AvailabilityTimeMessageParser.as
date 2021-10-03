package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityTimeMessageParser implements IMessageParser
   {
       
      
      private var var_1375:Boolean;
      
      private var var_1910:int;
      
      public function AvailabilityTimeMessageParser()
      {
         super();
      }
      
      public function get isOpen() : Boolean
      {
         return this.var_1375;
      }
      
      public function get minutesUntilChange() : int
      {
         return this.var_1910;
      }
      
      public function flush() : Boolean
      {
         this.var_1375 = false;
         this.var_1910 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1375 = param1.readInteger() > 0;
         this.var_1910 = param1.readInteger();
         return true;
      }
   }
}
