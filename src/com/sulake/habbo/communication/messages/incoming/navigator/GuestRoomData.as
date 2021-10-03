package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_367:int;
      
      private var var_713:Boolean;
      
      private var var_891:String;
      
      private var _ownerName:String;
      
      private var var_2567:int;
      
      private var var_2539:int;
      
      private var var_2874:int;
      
      private var var_1693:String;
      
      private var var_2875:int;
      
      private var var_2568:Boolean;
      
      private var var_763:int;
      
      private var var_1568:int;
      
      private var var_2873:String;
      
      private var var_877:Array;
      
      private var var_2876:RoomThumbnailData;
      
      private var var_2682:Boolean;
      
      private var var_2872:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_877 = new Array();
         super();
         this.var_367 = param1.readInteger();
         this.var_713 = param1.readBoolean();
         this.var_891 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2567 = param1.readInteger();
         this.var_2539 = param1.readInteger();
         this.var_2874 = param1.readInteger();
         this.var_1693 = param1.readString();
         this.var_2875 = param1.readInteger();
         this.var_2568 = param1.readBoolean();
         this.var_763 = param1.readInteger();
         this.var_1568 = param1.readInteger();
         this.var_2873 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_877.push(_loc4_);
            _loc3_++;
         }
         this.var_2876 = new RoomThumbnailData(param1);
         this.var_2682 = param1.readBoolean();
         this.var_2872 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_877 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_367;
      }
      
      public function get event() : Boolean
      {
         return this.var_713;
      }
      
      public function get roomName() : String
      {
         return this.var_891;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2567;
      }
      
      public function get userCount() : int
      {
         return this.var_2539;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2874;
      }
      
      public function get description() : String
      {
         return this.var_1693;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2875;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2568;
      }
      
      public function get score() : int
      {
         return this.var_763;
      }
      
      public function get categoryId() : int
      {
         return this.var_1568;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2873;
      }
      
      public function get tags() : Array
      {
         return this.var_877;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2876;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2682;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2872;
      }
   }
}
