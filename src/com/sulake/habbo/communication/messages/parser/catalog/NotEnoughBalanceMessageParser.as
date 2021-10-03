package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1815:int = 0;
      
      private var var_1814:int = 0;
      
      private var var_2099:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1815;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1814;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2099;
      }
      
      public function flush() : Boolean
      {
         this.var_1815 = 0;
         this.var_1814 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1815 = param1.readInteger();
         this.var_1814 = param1.readInteger();
         this.var_2099 = param1.readInteger();
         return true;
      }
   }
}
