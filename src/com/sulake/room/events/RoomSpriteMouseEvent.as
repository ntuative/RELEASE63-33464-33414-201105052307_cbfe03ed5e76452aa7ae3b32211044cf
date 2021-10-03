package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1726:String = "";
      
      private var var_2062:String = "";
      
      private var var_2285:String = "";
      
      private var var_2278:Number = 0;
      
      private var var_2279:Number = 0;
      
      private var var_2281:Number = 0;
      
      private var var_2282:Number = 0;
      
      private var var_2280:Boolean = false;
      
      private var var_2284:Boolean = false;
      
      private var var_2283:Boolean = false;
      
      private var var_2286:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1726 = param2;
         this.var_2062 = param3;
         this.var_2285 = param4;
         this.var_2278 = param5;
         this.var_2279 = param6;
         this.var_2281 = param7;
         this.var_2282 = param8;
         this.var_2280 = param9;
         this.var_2284 = param10;
         this.var_2283 = param11;
         this.var_2286 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1726;
      }
      
      public function get canvasId() : String
      {
         return this.var_2062;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2285;
      }
      
      public function get screenX() : Number
      {
         return this.var_2278;
      }
      
      public function get screenY() : Number
      {
         return this.var_2279;
      }
      
      public function get localX() : Number
      {
         return this.var_2281;
      }
      
      public function get localY() : Number
      {
         return this.var_2282;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2280;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2284;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2283;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2286;
      }
   }
}
