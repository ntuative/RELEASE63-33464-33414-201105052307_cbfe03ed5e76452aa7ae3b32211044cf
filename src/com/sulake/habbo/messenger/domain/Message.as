package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_690:int = 1;
      
      public static const const_799:int = 2;
      
      public static const const_713:int = 3;
      
      public static const const_1169:int = 4;
      
      public static const const_739:int = 5;
      
      public static const const_1287:int = 6;
       
      
      private var _type:int;
      
      private var var_1210:int;
      
      private var var_2663:String;
      
      private var var_2793:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1210 = param2;
         this.var_2663 = param3;
         this.var_2793 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2663;
      }
      
      public function get time() : String
      {
         return this.var_2793;
      }
      
      public function get senderId() : int
      {
         return this.var_1210;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
