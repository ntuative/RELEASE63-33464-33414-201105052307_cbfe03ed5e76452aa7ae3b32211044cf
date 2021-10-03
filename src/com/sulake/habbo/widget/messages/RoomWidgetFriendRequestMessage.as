package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFriendRequestMessage extends RoomWidgetMessage
   {
      
      public static const const_730:String = "RWFRM_ACCEPT";
      
      public static const const_700:String = "RWFRM_DECLINE";
       
      
      private var var_1180:int = 0;
      
      public function RoomWidgetFriendRequestMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this.var_1180 = param2;
      }
      
      public function get requestId() : int
      {
         return this.var_1180;
      }
   }
}
