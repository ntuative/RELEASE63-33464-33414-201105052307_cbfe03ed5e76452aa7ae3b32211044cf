package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1633:String = "pricing_model_unknown";
      
      public static const const_381:String = "pricing_model_single";
      
      public static const const_416:String = "pricing_model_multi";
      
      public static const const_500:String = "pricing_model_bundle";
      
      public static const const_1604:String = "price_type_none";
      
      public static const const_856:String = "price_type_credits";
      
      public static const const_1120:String = "price_type_activitypoints";
      
      public static const const_1297:String = "price_type_credits_and_activitypoints";
       
      
      private var var_862:String;
      
      private var var_1330:String;
      
      private var _offerId:int;
      
      private var var_2100:String;
      
      private var var_1329:int;
      
      private var var_1328:int;
      
      private var var_2099:int;
      
      private var var_357:ICatalogPage;
      
      private var var_697:IProductContainer;
      
      private var var_2907:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:Array, param7:ICatalogPage)
      {
         super();
         this._offerId = param1;
         this.var_2100 = param2;
         this.var_1329 = param3;
         this.var_1328 = param4;
         this.var_2099 = param5;
         this.var_357 = param7;
         this.analyzePricingModel(param6);
         this.analyzePriceType();
         this.createProductContainer(param6);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_357;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_2100;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1329;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1328;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2099;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_697;
      }
      
      public function get pricingModel() : String
      {
         return this.var_862;
      }
      
      public function get priceType() : String
      {
         return this.var_1330;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2907;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2907 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_2100 = "";
         this.var_1329 = 0;
         this.var_1328 = 0;
         this.var_2099 = 0;
         this.var_357 = null;
         if(this.var_697 != null)
         {
            this.var_697.dispose();
            this.var_697 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_862)
         {
            case const_381:
               this.var_697 = new SingleProductContainer(this,param1);
               break;
            case const_416:
               this.var_697 = new MultiProductContainer(this,param1);
               break;
            case const_500:
               this.var_697 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_862);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_862 = const_381;
            }
            else
            {
               this.var_862 = const_416;
            }
         }
         else if(param1.length > 1)
         {
            this.var_862 = const_500;
         }
         else
         {
            this.var_862 = const_1633;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1329 > 0 && this.var_1328 > 0)
         {
            this.var_1330 = const_1297;
         }
         else if(this.var_1329 > 0)
         {
            this.var_1330 = const_856;
         }
         else if(this.var_1328 > 0)
         {
            this.var_1330 = const_1120;
         }
         else
         {
            this.var_1330 = const_1604;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_357.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_697.products)
         {
            _loc4_ = this.var_357.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,_loc1_,this.page);
      }
   }
}
