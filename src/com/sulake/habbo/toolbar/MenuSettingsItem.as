package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2251:String;
      
      private var var_2253:Array;
      
      private var var_2252:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2251 = param1;
         this.var_2253 = param2;
         this.var_2252 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2251;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2253;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2252;
      }
   }
}
