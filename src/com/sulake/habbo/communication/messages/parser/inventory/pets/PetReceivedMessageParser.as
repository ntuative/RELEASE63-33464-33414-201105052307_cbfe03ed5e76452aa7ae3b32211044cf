package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1735:Boolean;
      
      private var var_926:PetData;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1735 = param1.readBoolean();
         this.var_926 = new PetData(param1);
         Logger.log("Got PetReceived: " + this.var_1735 + ", " + this.var_926.id + ", " + this.var_926.name + ", " + this.var_926.type + ", " + this.var_926.breed + ", " + this.pet.color);
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return this.var_1735;
      }
      
      public function get pet() : PetData
      {
         return this.var_926;
      }
   }
}
