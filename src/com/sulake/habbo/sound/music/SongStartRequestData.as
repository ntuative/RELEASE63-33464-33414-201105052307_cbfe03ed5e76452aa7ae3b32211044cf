package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1638:int;
      
      private var var_1835:Number;
      
      private var var_2553:Number;
      
      private var var_2554:int;
      
      private var var_2556:Number;
      
      private var var_2555:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1638 = param1;
         this.var_1835 = param2;
         this.var_2553 = param3;
         this.var_2556 = param4;
         this.var_2555 = param5;
         this.var_2554 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1638;
      }
      
      public function get startPos() : Number
      {
         if(this.var_1835 < 0)
         {
            return 0;
         }
         return this.var_1835 + (getTimer() - this.var_2554) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2553;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2556;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2555;
      }
   }
}
