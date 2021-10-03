package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_126:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_110:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_727:int = 2;
      
      public static const const_752:int = 3;
      
      public static const const_1566:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1703:String = "";
      
      private var var_2190:int;
      
      private var var_2189:int = 0;
      
      private var var_2191:int = 0;
      
      private var var_641:String = "";
      
      private var var_45:BitmapData = null;
      
      private var var_250:Array;
      
      private var var_1399:int = 0;
      
      private var var_2224:String = "";
      
      private var var_2223:int = 0;
      
      private var var_2222:int = 0;
      
      private var var_1719:Boolean = false;
      
      private var var_1700:String = "";
      
      private var var_2658:Boolean = false;
      
      private var var_2652:Boolean = true;
      
      private var _respectLeft:int = 0;
      
      private var var_2654:Boolean = false;
      
      private var var_2657:Boolean = false;
      
      private var var_2659:Boolean = false;
      
      private var var_2653:Boolean = false;
      
      private var var_2655:Boolean = false;
      
      private var var_2656:Boolean = false;
      
      private var var_2651:int = 0;
      
      private var var_1717:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_250 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1703 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1703;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2190 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2190;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2189 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2189;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2191 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2191;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_641 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_641;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_45 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_45;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_250 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_250;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1399 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1399;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2224 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2224;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2658 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2658;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this._respectLeft = param1;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2654 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2654;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2657 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2657;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2659 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2659;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2653 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2653;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2655 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2655;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2656 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2656;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2651 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2651;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2652 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2652;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1717 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1717;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2223 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2223;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2222 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2222;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1719 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1719;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1700 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1700;
      }
   }
}
