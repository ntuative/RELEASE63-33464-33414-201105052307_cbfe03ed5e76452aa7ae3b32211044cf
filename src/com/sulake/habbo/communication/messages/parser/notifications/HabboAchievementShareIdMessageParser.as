package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementShareIdMessageParser implements IMessageParser
   {
       
      
      private var var_2296:String = "";
      
      private var var_2799:String = "";
      
      public function HabboAchievementShareIdMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2296 = param1.readString();
         this.var_2799 = param1.readString();
         return true;
      }
      
      public function get badgeID() : String
      {
         return this.var_2296;
      }
      
      public function get shareID() : String
      {
         return this.var_2799;
      }
   }
}
