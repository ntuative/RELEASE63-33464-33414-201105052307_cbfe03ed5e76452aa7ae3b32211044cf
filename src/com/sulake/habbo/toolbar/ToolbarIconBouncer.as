package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2748:Number;
      
      private var var_1748:Number;
      
      private var var_1028:Number;
      
      private var var_459:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2748 = param1;
         this.var_1748 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_1028 = param1;
         this.var_459 = 0;
      }
      
      public function update() : void
      {
         this.var_1028 += this.var_1748;
         this.var_459 += this.var_1028;
         if(this.var_459 > 0)
         {
            this.var_459 = 0;
            this.var_1028 = this.var_2748 * -1 * this.var_1028;
         }
      }
      
      public function get location() : Number
      {
         return this.var_459;
      }
   }
}
