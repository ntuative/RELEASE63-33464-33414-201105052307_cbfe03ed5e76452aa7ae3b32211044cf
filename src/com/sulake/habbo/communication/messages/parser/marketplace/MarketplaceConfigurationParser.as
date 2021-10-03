package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1506:Boolean;
      
      private var var_2476:int;
      
      private var var_2006:int;
      
      private var var_2005:int;
      
      private var var_2472:int;
      
      private var var_2474:int;
      
      private var var_2473:int;
      
      private var var_2475:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1506;
      }
      
      public function get commission() : int
      {
         return this.var_2476;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_2006;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_2005;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2474;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2472;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2473;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2475;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1506 = param1.readBoolean();
         this.var_2476 = param1.readInteger();
         this.var_2006 = param1.readInteger();
         this.var_2005 = param1.readInteger();
         this.var_2474 = param1.readInteger();
         this.var_2472 = param1.readInteger();
         this.var_2473 = param1.readInteger();
         this.var_2475 = param1.readInteger();
         return true;
      }
   }
}
