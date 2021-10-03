package com.sulake.habbo.friendbar.data
{
   public class FriendEntity implements IFriendEntity
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_993:int;
      
      private var var_805:Boolean;
      
      private var var_1702:Boolean;
      
      private var var_641:String;
      
      private var var_1568:int;
      
      private var var_1703:String;
      
      private var var_1701:String;
      
      private var var_1700:String;
      
      public function FriendEntity(param1:int, param2:String, param3:String, param4:String, param5:int, param6:Boolean, param7:Boolean, param8:String, param9:int, param10:String)
      {
         super();
         this._id = param1;
         this._name = param2;
         this.var_1700 = param3;
         this.var_1703 = param4;
         this.var_993 = param5;
         this.var_805 = param6;
         this.var_1702 = param7;
         this.var_641 = param8;
         this.var_1568 = param9;
         this.var_1701 = param10;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_993;
      }
      
      public function get online() : Boolean
      {
         return this.var_805;
      }
      
      public function get method_5() : Boolean
      {
         return this.var_1702;
      }
      
      public function get figure() : String
      {
         return this.var_641;
      }
      
      public function get categoryId() : int
      {
         return this.var_1568;
      }
      
      public function get motto() : String
      {
         return this.var_1703;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1701;
      }
      
      public function get realName() : String
      {
         return this.var_1700;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function set gender(param1:int) : void
      {
         this.var_993 = param1;
      }
      
      public function set online(param1:Boolean) : void
      {
         this.var_805 = param1;
      }
      
      public function set method_5(param1:Boolean) : void
      {
         this.var_1702 = param1;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_641 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1568 = param1;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1703 = param1;
      }
      
      public function set lastAccess(param1:String) : void
      {
         this.var_1701 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1700 = param1;
      }
   }
}
