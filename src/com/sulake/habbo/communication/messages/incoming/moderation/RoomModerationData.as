package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_367:int;
      
      private var var_2539:int;
      
      private var var_2755:Boolean;
      
      private var var_2399:int;
      
      private var _ownerName:String;
      
      private var var_118:RoomData;
      
      private var var_713:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_367 = param1.readInteger();
         this.var_2539 = param1.readInteger();
         this.var_2755 = param1.readBoolean();
         this.var_2399 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_118 = new RoomData(param1);
         this.var_713 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_118 != null)
         {
            this.var_118.dispose();
            this.var_118 = null;
         }
         if(this.var_713 != null)
         {
            this.var_713.dispose();
            this.var_713 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_367;
      }
      
      public function get userCount() : int
      {
         return this.var_2539;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2755;
      }
      
      public function get ownerId() : int
      {
         return this.var_2399;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_118;
      }
      
      public function get event() : RoomData
      {
         return this.var_713;
      }
   }
}
