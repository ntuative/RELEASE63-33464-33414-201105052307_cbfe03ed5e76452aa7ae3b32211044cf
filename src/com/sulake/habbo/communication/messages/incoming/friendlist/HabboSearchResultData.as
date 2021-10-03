package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2208:int;
      
      private var var_1896:String;
      
      private var var_2207:String;
      
      private var var_2212:Boolean;
      
      private var var_2213:Boolean;
      
      private var var_2210:int;
      
      private var var_2209:String;
      
      private var var_2211:String;
      
      private var var_1700:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2208 = param1.readInteger();
         this.var_1896 = param1.readString();
         this.var_2207 = param1.readString();
         this.var_2212 = param1.readBoolean();
         this.var_2213 = param1.readBoolean();
         param1.readString();
         this.var_2210 = param1.readInteger();
         this.var_2209 = param1.readString();
         this.var_2211 = param1.readString();
         this.var_1700 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2208;
      }
      
      public function get avatarName() : String
      {
         return this.var_1896;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2207;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2212;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2213;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2210;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2209;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2211;
      }
      
      public function get realName() : String
      {
         return this.var_1700;
      }
   }
}
