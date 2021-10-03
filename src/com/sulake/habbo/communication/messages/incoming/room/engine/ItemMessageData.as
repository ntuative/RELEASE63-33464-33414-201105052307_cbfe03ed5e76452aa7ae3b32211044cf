package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2880:Boolean = false;
      
      private var var_2881:int = 0;
      
      private var var_2882:int = 0;
      
      private var var_2281:int = 0;
      
      private var var_2282:int = 0;
      
      private var var_157:Number = 0;
      
      private var var_156:Number = 0;
      
      private var var_463:String = "";
      
      private var _type:int = 0;
      
      private var var_3018:String = "";
      
      private var var_1590:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_176:Boolean = false;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2880 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_176 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2880;
      }
      
      public function get wallX() : Number
      {
         return this.var_2881;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_176)
         {
            this.var_2881 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2882;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_176)
         {
            this.var_2882 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2281;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_176)
         {
            this.var_2281 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2282;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_176)
         {
            this.var_2282 = param1;
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
      
      public function get dir() : String
      {
         return this.var_463;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_176)
         {
            this.var_463 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_176)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_176)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_176)
         {
            this._data = param1;
         }
      }
   }
}
