package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_65:String = "i";
      
      public static const const_83:String = "s";
      
      public static const const_195:String = "e";
       
      
      private var var_1546:String;
      
      private var var_2584:int;
      
      private var var_1260:String;
      
      private var _productCount:int;
      
      private var var_1942:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1546 = param1.readString();
         this.var_2584 = param1.readInteger();
         this.var_1260 = param1.readString();
         this._productCount = param1.readInteger();
         this.var_1942 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1546;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2584;
      }
      
      public function get extraParam() : String
      {
         return this.var_1260;
      }
      
      public function get productCount() : int
      {
         return this._productCount;
      }
      
      public function get expiration() : int
      {
         return this.var_1942;
      }
   }
}
