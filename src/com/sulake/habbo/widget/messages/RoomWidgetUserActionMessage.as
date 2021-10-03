package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_521:String = "RWUAM_WHISPER_USER";
      
      public static const const_517:String = "RWUAM_IGNORE_USER";
      
      public static const const_470:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_408:String = "RWUAM_KICK_USER";
      
      public static const const_584:String = "RWUAM_BAN_USER";
      
      public static const const_493:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_559:String = "RWUAM_RESPECT_USER";
      
      public static const const_643:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_560:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_481:String = "RWUAM_START_TRADING";
      
      public static const const_718:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_591:String = "RWUAM_KICK_BOT";
      
      public static const const_635:String = "RWUAM_REPORT";
      
      public static const const_625:String = "RWUAM_PICKUP_PET";
      
      public static const const_1579:String = "RWUAM_TRAIN_PET";
      
      public static const const_555:String = " RWUAM_RESPECT_PET";
      
      public static const const_409:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_873:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
