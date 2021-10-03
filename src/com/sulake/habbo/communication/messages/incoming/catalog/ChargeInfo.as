package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2727:int;
      
      private var var_2924:int;
      
      private var var_1329:int;
      
      private var var_1328:int;
      
      private var var_2099:int;
      
      private var var_2925:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2727 = param1.readInteger();
         this.var_2924 = param1.readInteger();
         this.var_1329 = param1.readInteger();
         this.var_1328 = param1.readInteger();
         this.var_2099 = param1.readInteger();
         this.var_2925 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2727;
      }
      
      public function get charges() : int
      {
         return this.var_2924;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1329;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1328;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2925;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2099;
      }
   }
}
