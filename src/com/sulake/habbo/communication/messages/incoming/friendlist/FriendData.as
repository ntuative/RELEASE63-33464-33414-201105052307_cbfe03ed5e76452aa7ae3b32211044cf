package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_993:int;
      
      private var var_805:Boolean;
      
      private var var_1838:Boolean;
      
      private var var_641:String;
      
      private var var_1568:int;
      
      private var var_1703:String;
      
      private var var_1701:String;
      
      private var var_1700:String;
      
      private var var_2970:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_993 = param1.readInteger();
         this.var_805 = param1.readBoolean();
         this.var_1838 = param1.readBoolean();
         this.var_641 = param1.readString();
         this.var_1568 = param1.readInteger();
         this.var_1703 = param1.readString();
         this.var_1701 = param1.readString();
         this.var_1700 = param1.readString();
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
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1838;
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
      
      public function get facebookId() : String
      {
         return this.var_2970;
      }
   }
}
