package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_213:int = 0;
       
      
      private var var_1963:int = 0;
      
      private var var_1479:Dictionary;
      
      private var var_1845:int = 0;
      
      private var var_1844:int = 0;
      
      private var var_2429:Boolean = false;
      
      private var var_2575:int = 0;
      
      private var var_2576:int = 0;
      
      public function Purse()
      {
         this.var_1479 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1963;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1963 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1845;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1845 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1844;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1844 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1845 > 0 || this.var_1844 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2429;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2429 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2575;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2575 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2576;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2576 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1479;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1479 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1479[param1];
      }
   }
}
