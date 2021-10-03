package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1231:int = 1;
      
      public static const const_946:int = 2;
      
      public static const const_814:int = 3;
      
      public static const const_1588:int = 4;
       
      
      private var _index:int;
      
      private var var_2543:String;
      
      private var var_2540:String;
      
      private var var_2541:Boolean;
      
      private var var_2542:String;
      
      private var var_1050:String;
      
      private var var_2538:int;
      
      private var var_2539:int;
      
      private var _type:int;
      
      private var var_2245:String;
      
      private var var_966:GuestRoomData;
      
      private var var_967:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2543 = param1.readString();
         this.var_2540 = param1.readString();
         this.var_2541 = param1.readInteger() == 1;
         this.var_2542 = param1.readString();
         this.var_1050 = param1.readString();
         this.var_2538 = param1.readInteger();
         this.var_2539 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1231)
         {
            this.var_2245 = param1.readString();
         }
         else if(this._type == const_814)
         {
            this.var_967 = new PublicRoomData(param1);
         }
         else if(this._type == const_946)
         {
            this.var_966 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_966 != null)
         {
            this.var_966.dispose();
            this.var_966 = null;
         }
         if(this.var_967 != null)
         {
            this.var_967.dispose();
            this.var_967 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2543;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2540;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2541;
      }
      
      public function get picText() : String
      {
         return this.var_2542;
      }
      
      public function get picRef() : String
      {
         return this.var_1050;
      }
      
      public function get folderId() : int
      {
         return this.var_2538;
      }
      
      public function get tag() : String
      {
         return this.var_2245;
      }
      
      public function get userCount() : int
      {
         return this.var_2539;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_966;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_967;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1231)
         {
            return 0;
         }
         if(this.type == const_946)
         {
            return this.var_966.maxUserCount;
         }
         if(this.type == const_814)
         {
            return this.var_967.maxUsers;
         }
         return 0;
      }
   }
}
