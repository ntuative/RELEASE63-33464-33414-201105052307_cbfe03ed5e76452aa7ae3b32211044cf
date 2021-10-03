package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2184:int;
      
      private var var_1523:String;
      
      private var _objId:int;
      
      private var var_1806:int;
      
      private var _category:int;
      
      private var var_2142:String;
      
      private var var_2500:Boolean;
      
      private var var_2496:Boolean;
      
      private var var_2497:Boolean;
      
      private var var_2498:Boolean;
      
      private var var_2499:int;
      
      private var var_1590:int;
      
      private var var_1878:String = "";
      
      private var var_1638:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2184 = param1;
         this.var_1523 = param2;
         this._objId = param3;
         this.var_1806 = param4;
         this._category = param5;
         this.var_2142 = param6;
         this.var_2500 = param7;
         this.var_2496 = param8;
         this.var_2497 = param9;
         this.var_2498 = param10;
         this.var_2499 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1878 = param1;
         this.var_1590 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2184;
      }
      
      public function get itemType() : String
      {
         return this.var_1523;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1806;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2142;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2500;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2496;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2497;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2498;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2499;
      }
      
      public function get slotId() : String
      {
         return this.var_1878;
      }
      
      public function get songId() : int
      {
         return this.var_1638;
      }
      
      public function get extra() : int
      {
         return this.var_1590;
      }
   }
}
