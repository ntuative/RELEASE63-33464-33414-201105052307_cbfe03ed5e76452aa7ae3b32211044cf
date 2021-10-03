package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_936:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_291:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_936);
         this.var_291 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_291;
      }
   }
}
