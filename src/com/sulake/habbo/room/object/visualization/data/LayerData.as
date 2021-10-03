package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_793:String = "";
      
      public static const const_445:int = 0;
      
      public static const const_534:int = 255;
      
      public static const const_893:Boolean = false;
      
      public static const const_599:int = 0;
      
      public static const const_597:int = 0;
      
      public static const const_389:int = 0;
      
      public static const const_1151:int = 1;
      
      public static const const_1105:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2245:String = "";
      
      private var var_1831:int = 0;
      
      private var var_2244:int = 255;
      
      private var var_2246:Boolean = false;
      
      private var var_2243:int = 0;
      
      private var var_2241:int = 0;
      
      private var var_2242:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2245 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2245;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1831 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1831;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2244 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2244;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2246 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2246;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2243 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2243;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2241 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2241;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2242 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2242;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
