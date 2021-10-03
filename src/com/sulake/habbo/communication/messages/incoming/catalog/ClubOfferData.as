package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1792:String;
      
      private var var_1737:int;
      
      private var var_2516:Boolean;
      
      private var var_2514:Boolean;
      
      private var var_2511:int;
      
      private var var_2509:int;
      
      private var var_2513:int;
      
      private var var_2515:int;
      
      private var var_2512:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1792 = param1.readString();
         this.var_1737 = param1.readInteger();
         this.var_2516 = param1.readBoolean();
         this.var_2514 = param1.readBoolean();
         this.var_2511 = param1.readInteger();
         this.var_2509 = param1.readInteger();
         this.var_2513 = param1.readInteger();
         this.var_2515 = param1.readInteger();
         this.var_2512 = param1.readInteger();
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
   }
}
