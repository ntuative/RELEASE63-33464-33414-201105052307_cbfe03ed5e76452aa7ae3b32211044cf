package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1792:String;
      
      private var var_1737:int;
      
      private var var_2516:Boolean;
      
      private var var_2514:Boolean;
      
      private var var_2511:int;
      
      private var var_2509:int;
      
      private var var_357:ICatalogPage;
      
      private var var_2513:int;
      
      private var var_2515:int;
      
      private var var_2512:int;
      
      private var var_1389:String;
      
      private var var_2510:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1792 = param2;
         this.var_1737 = param3;
         this.var_2516 = param4;
         this.var_2514 = param5;
         this.var_2511 = param6;
         this.var_2509 = param7;
         this.var_2513 = param8;
         this.var_2515 = param9;
         this.var_2512 = param10;
      }
      
      public function dispose() : void
      {
      }
      
      public function get extraParameter() : String
      {
         return this.var_1389;
      }
      
      public function set extraParameter(param1:String) : void
      {
         this.var_1389 = param1;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1792;
      }
      
      public function get price() : int
      {
         return this.var_1737;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2516;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2514;
      }
      
      public function get periods() : int
      {
         return this.var_2511;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2509;
      }
      
      public function get year() : int
      {
         return this.var_2513;
      }
      
      public function get month() : int
      {
         return this.var_2515;
      }
      
      public function get day() : int
      {
         return this.var_2512;
      }
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_213;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1737;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_357;
      }
      
      public function get priceType() : String
      {
         return Offer.const_856;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1792;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_357 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2510;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2510 = param1;
      }
   }
}
