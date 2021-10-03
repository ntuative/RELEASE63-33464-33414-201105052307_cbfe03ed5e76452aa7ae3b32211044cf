package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1257:Boolean;
      
      private var var_1258:Boolean;
      
      private var var_1544:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1257;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1258;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1544;
      }
      
      public function flush() : Boolean
      {
         this.var_1257 = false;
         this.var_1258 = false;
         this.var_1544 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1257 = param1.readBoolean();
         this.var_1258 = param1.readBoolean();
         this.var_1544 = param1.readBoolean();
         return true;
      }
   }
}
