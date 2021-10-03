package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2708:int;
      
      private var var_1523:String;
      
      private var var_2900:int;
      
      private var var_2906:int;
      
      private var _category:int;
      
      private var var_2142:String;
      
      private var var_1590:int;
      
      private var var_2904:int;
      
      private var var_2905:int;
      
      private var var_2902:int;
      
      private var var_2903:int;
      
      private var var_2901:Boolean;
      
      private var var_3021:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2708 = param1;
         this.var_1523 = param2;
         this.var_2900 = param3;
         this.var_2906 = param4;
         this._category = param5;
         this.var_2142 = param6;
         this.var_1590 = param7;
         this.var_2904 = param8;
         this.var_2905 = param9;
         this.var_2902 = param10;
         this.var_2903 = param11;
         this.var_2901 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2708;
      }
      
      public function get itemType() : String
      {
         return this.var_1523;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2900;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2906;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2142;
      }
      
      public function get extra() : int
      {
         return this.var_1590;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2904;
      }
      
      public function get creationDay() : int
      {
         return this.var_2905;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2902;
      }
      
      public function get creationYear() : int
      {
         return this.var_2903;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2901;
      }
      
      public function get songID() : int
      {
         return this.var_1590;
      }
   }
}
