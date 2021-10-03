package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_2046:int = 1;
      
      public static const const_2079:int = 2;
      
      public static const const_2033:int = 3;
      
      public static const const_1957:int = 4;
      
      public static const const_1574:int = 5;
      
      public static const const_1924:int = 6;
      
      public static const const_1575:int = 7;
      
      public static const const_1783:int = 8;
      
      public static const const_2047:int = 9;
      
      public static const const_1794:int = 10;
      
      public static const const_1664:int = 11;
      
      public static const const_1739:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1670:int;
      
      private var var_1574:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1670 = param1.readInteger();
         this.var_1574 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1670;
      }
      
      public function get info() : String
      {
         return this.var_1574;
      }
   }
}
