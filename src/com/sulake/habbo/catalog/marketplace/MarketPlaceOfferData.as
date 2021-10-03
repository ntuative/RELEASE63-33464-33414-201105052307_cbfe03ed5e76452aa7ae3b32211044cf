package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2331:int;
      
      private var var_2142:String;
      
      private var var_1737:int;
      
      private var var_2312:int;
      
      private var var_2332:int;
      
      private var var_406:int;
      
      private var var_2330:int = -1;
      
      private var var_1736:int;
      
      private var var_45:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2331 = param3;
         this.var_2142 = param4;
         this.var_1737 = param5;
         this.var_406 = param6;
         this.var_2312 = param7;
         this.var_1736 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_45)
         {
            this.var_45.dispose();
            this.var_45 = null;
         }
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
      
      public function get averagePrice() : int
      {
         return this.var_2312;
      }
      
      public function get image() : BitmapData
      {
         return this.var_45;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_45 != null)
         {
            this.var_45.dispose();
         }
         this.var_45 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2332 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2332;
      }
      
      public function get status() : int
      {
         return this.var_406;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2330;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2330 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1737 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this._offerId = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_1736;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1736 = param1;
      }
   }
}
