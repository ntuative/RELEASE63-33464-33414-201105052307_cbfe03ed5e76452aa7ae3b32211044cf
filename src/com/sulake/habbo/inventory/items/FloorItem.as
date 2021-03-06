package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_2142:String;
      
      protected var var_1590:Number;
      
      protected var var_2929:Boolean;
      
      protected var var_2930:Boolean;
      
      protected var var_2901:Boolean;
      
      protected var var_2707:Boolean;
      
      protected var var_2932:int;
      
      protected var var_2905:int;
      
      protected var var_2902:int;
      
      protected var var_2903:int;
      
      protected var var_1878:String;
      
      protected var var_1638:int;
      
      protected var var_1009:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2901 = param5;
         this.var_2930 = param6;
         this.var_2929 = param7;
         this.var_2707 = param8;
         this.var_2142 = param9;
         this.var_1590 = param10;
         this.var_2932 = param11;
         this.var_2905 = param12;
         this.var_2902 = param13;
         this.var_2903 = param14;
         this.var_1878 = param15;
         this.var_1638 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_2142;
      }
      
      public function get extra() : Number
      {
         return this.var_1590;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_2929;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_2930;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2901;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2707;
      }
      
      public function get expires() : int
      {
         return this.var_2932;
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
      
      public function get slotId() : String
      {
         return this.var_1878;
      }
      
      public function get songId() : int
      {
         return this.var_1638;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_1009 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_1009;
      }
   }
}
