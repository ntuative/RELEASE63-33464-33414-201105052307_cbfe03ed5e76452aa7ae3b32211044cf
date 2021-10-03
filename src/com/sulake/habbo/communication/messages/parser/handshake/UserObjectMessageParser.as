package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_641:String;
      
      private var var_995:String;
      
      private var var_2922:String;
      
      private var var_1700:String;
      
      private var var_2923:int;
      
      private var var_2919:String;
      
      private var var_2920:int;
      
      private var var_2921:int;
      
      private var var_2172:int;
      
      private var _respectLeft:int;
      
      private var var_726:int;
      
      private var var_2256:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_641 = param1.readString();
         this.var_995 = param1.readString();
         this.var_2922 = param1.readString();
         this.var_1700 = param1.readString();
         this.var_2923 = param1.readInteger();
         this.var_2919 = param1.readString();
         this.var_2920 = param1.readInteger();
         this.var_2921 = param1.readInteger();
         this.var_2172 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_726 = param1.readInteger();
         this.var_2256 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_641;
      }
      
      public function get sex() : String
      {
         return this.var_995;
      }
      
      public function get customData() : String
      {
         return this.var_2922;
      }
      
      public function get realName() : String
      {
         return this.var_1700;
      }
      
      public function get tickets() : int
      {
         return this.var_2923;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2919;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2920;
      }
      
      public function get directMail() : int
      {
         return this.var_2921;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2172;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_726;
      }
      
      public function get identityId() : int
      {
         return this.var_2256;
      }
   }
}
