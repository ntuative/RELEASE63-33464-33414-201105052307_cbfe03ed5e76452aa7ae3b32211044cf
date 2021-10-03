package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_157:Number = 0;
      
      private var var_156:Number = 0;
      
      private var var_2260:Number = 0;
      
      private var var_2262:Number = 0;
      
      private var var_2264:Number = 0;
      
      private var var_2261:Number = 0;
      
      private var var_463:int = 0;
      
      private var var_2263:int = 0;
      
      private var var_334:Array;
      
      private var var_2259:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_334 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_157 = param3;
         this.var_156 = param4;
         this.var_2260 = param5;
         this.var_463 = param6;
         this.var_2263 = param7;
         this.var_2262 = param8;
         this.var_2264 = param9;
         this.var_2261 = param10;
         this.var_2259 = param11;
         this.var_334 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_157;
      }
      
      public function get z() : Number
      {
         return this.var_156;
      }
      
      public function get localZ() : Number
      {
         return this.var_2260;
      }
      
      public function get targetX() : Number
      {
         return this.var_2262;
      }
      
      public function get targetY() : Number
      {
         return this.var_2264;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2261;
      }
      
      public function get dir() : int
      {
         return this.var_463;
      }
      
      public function get dirHead() : int
      {
         return this.var_2263;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2259;
      }
      
      public function get actions() : Array
      {
         return this.var_334.slice();
      }
   }
}
