package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2015:int = 1;
      
      public static const const_1662:int = 2;
       
      
      private var var_978:String;
      
      private var var_2743:int;
      
      private var var_2747:int;
      
      private var var_2741:int;
      
      private var var_2742:int;
      
      private var var_2740:Boolean;
      
      private var var_2429:Boolean;
      
      private var var_2575:int;
      
      private var var_2576:int;
      
      private var var_2745:Boolean;
      
      private var var_2746:int;
      
      private var var_2744:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_978 = param1.readString();
         this.var_2743 = param1.readInteger();
         this.var_2747 = param1.readInteger();
         this.var_2741 = param1.readInteger();
         this.var_2742 = param1.readInteger();
         this.var_2740 = param1.readBoolean();
         this.var_2429 = param1.readBoolean();
         this.var_2575 = param1.readInteger();
         this.var_2576 = param1.readInteger();
         this.var_2745 = param1.readBoolean();
         this.var_2746 = param1.readInteger();
         this.var_2744 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_978;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2743;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2747;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2741;
      }
      
      public function get responseType() : int
      {
         return this.var_2742;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2740;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2429;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2575;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2576;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2745;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2746;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2744;
      }
   }
}
