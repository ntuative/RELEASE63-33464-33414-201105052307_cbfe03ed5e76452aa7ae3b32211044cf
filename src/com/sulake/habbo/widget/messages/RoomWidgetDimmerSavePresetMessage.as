package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_768:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2522:int;
      
      private var var_2521:int;
      
      private var _color:uint;
      
      private var var_1104:int;
      
      private var var_2520:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_768);
         this.var_2522 = param1;
         this.var_2521 = param2;
         this._color = param3;
         this.var_1104 = param4;
         this.var_2520 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2522;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2521;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1104;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2520;
      }
   }
}
