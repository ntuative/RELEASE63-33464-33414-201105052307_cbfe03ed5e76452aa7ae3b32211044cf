package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_738:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1152:String = "inventory_effects";
      
      public static const const_1225:String = "inventory_badges";
      
      public static const const_1607:String = "inventory_clothes";
      
      public static const const_1761:String = "inventory_furniture";
       
      
      private var var_2535:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_738);
         this.var_2535 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2535;
      }
   }
}
