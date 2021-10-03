package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_436:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1091:String = "RWOCM_CLUB_MAIN";
      
      public static const const_1275:String = "RWOCM_PIXELS";
      
      public static const const_1109:String = "RWOCM_CREDITS";
       
      
      private var var_2275:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_436);
         this.var_2275 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2275;
      }
   }
}
