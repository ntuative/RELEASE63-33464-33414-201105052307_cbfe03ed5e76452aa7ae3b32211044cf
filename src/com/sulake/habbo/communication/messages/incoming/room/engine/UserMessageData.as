package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1304:String = "M";
      
      public static const const_1711:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_157:Number = 0;
      
      private var var_156:Number = 0;
      
      private var var_463:int = 0;
      
      private var _name:String = "";
      
      private var var_1634:int = 0;
      
      private var var_995:String = "";
      
      private var var_641:String = "";
      
      private var var_2188:String = "";
      
      private var var_2190:int;
      
      private var var_2189:int = 0;
      
      private var var_2192:String = "";
      
      private var var_2193:int = 0;
      
      private var var_2191:int = 0;
      
      private var var_2277:String = "";
      
      private var var_176:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_176 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_176)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_157;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_176)
         {
            this.var_157 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_156;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_176)
         {
            this.var_156 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_463;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_176)
         {
            this.var_463 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_176)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_1634;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_176)
         {
            this.var_1634 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_995;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_176)
         {
            this.var_995 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_641;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_176)
         {
            this.var_641 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2188;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_176)
         {
            this.var_2188 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2190;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_176)
         {
            this.var_2190 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2189;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_176)
         {
            this.var_2189 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2192;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_176)
         {
            this.var_2192 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2193;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_176)
         {
            this.var_2193 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2191;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_176)
         {
            this.var_2191 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2277;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_176)
         {
            this.var_2277 = param1;
         }
      }
   }
}
