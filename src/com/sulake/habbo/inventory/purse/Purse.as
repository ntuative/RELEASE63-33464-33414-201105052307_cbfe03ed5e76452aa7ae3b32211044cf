package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1845:int = 0;
      
      private var var_1844:int = 0;
      
      private var var_2430:int = 0;
      
      private var var_2431:Boolean = false;
      
      private var var_2429:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1845 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1844 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2430 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2431 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2429 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1845;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1844;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2430;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2431;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2429;
      }
   }
}
