package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2312:int;
      
      private var var_2314:int;
      
      private var var_2315:int;
      
      private var _dayOffsets:Array;
      
      private var var_1725:Array;
      
      private var var_1724:Array;
      
      private var var_2313:int;
      
      private var var_2316:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2312;
      }
      
      public function get offerCount() : int
      {
         return this.var_2314;
      }
      
      public function get historyLength() : int
      {
         return this.var_2315;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1725;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1724;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2313;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2316;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2312 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2314 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2315 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1725 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1724 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2313 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2316 = param1;
      }
   }
}
