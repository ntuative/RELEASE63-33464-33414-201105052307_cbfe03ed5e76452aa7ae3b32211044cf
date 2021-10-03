package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2331:int;
      
      private var var_2142:String;
      
      private var var_1737:int;
      
      private var var_406:int;
      
      private var var_2330:int = -1;
      
      private var var_2312:int;
      
      private var var_1736:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2331 = param3;
         this.var_2142 = param4;
         this.var_1737 = param5;
         this.var_406 = param6;
         this.var_2330 = param7;
         this.var_2312 = param8;
         this.var_1736 = param9;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2331;
      }
      
      public function get stuffData() : String
      {
         return this.var_2142;
      }
      
      public function get price() : int
      {
         return this.var_1737;
      }
      
      public function get status() : int
      {
         return this.var_406;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2330;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2312;
      }
      
      public function get offerCount() : int
      {
         return this.var_1736;
      }
   }
}
