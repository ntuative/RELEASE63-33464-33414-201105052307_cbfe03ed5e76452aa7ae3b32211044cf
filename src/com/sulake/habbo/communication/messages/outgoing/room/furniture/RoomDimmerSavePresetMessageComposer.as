package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2522:int;
      
      private var var_2521:int;
      
      private var var_2795:String;
      
      private var var_2794:int;
      
      private var var_2796:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2522 = param1;
         this.var_2521 = param2;
         this.var_2795 = param3;
         this.var_2794 = param4;
         this.var_2796 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2522,this.var_2521,this.var_2795,this.var_2794,int(this.var_2796)];
      }
      
      public function dispose() : void
      {
      }
   }
}
