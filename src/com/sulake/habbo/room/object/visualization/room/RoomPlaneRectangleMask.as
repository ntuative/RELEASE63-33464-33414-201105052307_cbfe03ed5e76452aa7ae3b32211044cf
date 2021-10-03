package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2326:Number = 0.0;
      
      private var var_2327:Number = 0.0;
      
      private var var_2559:Number = 0.0;
      
      private var var_2558:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2326 = param1;
         this.var_2327 = param2;
         this.var_2559 = param3;
         this.var_2558 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2326;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2327;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2559;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2558;
      }
   }
}
