package com.sulake.habbo.widget.events
{
   public class RoomWidgetWelcomeGiftUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_528:String = "rwwgue_welcome_gift_widget_status";
       
      
      private var var_1584:String;
      
      private var var_1296:Boolean;
      
      private var var_1051:Boolean;
      
      private var _furniId:int;
      
      private var var_2379:Boolean;
      
      public function RoomWidgetWelcomeGiftUpdateEvent(param1:Boolean = false, param2:Boolean = false)
      {
         super(const_528,param1,param2);
      }
      
      public function get email() : String
      {
         return this.var_1584;
      }
      
      public function get isVerified() : Boolean
      {
         return this.var_1296;
      }
      
      public function get allowEmailChange() : Boolean
      {
         return this.var_1051;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get requestedByUser() : Boolean
      {
         return this.var_2379;
      }
      
      public function set email(param1:String) : void
      {
         this.var_1584 = param1;
      }
      
      public function set isVerified(param1:Boolean) : void
      {
         this.var_1296 = param1;
      }
      
      public function set allowEmailChange(param1:Boolean) : void
      {
         this.var_1051 = param1;
      }
      
      public function set furniId(param1:int) : void
      {
         this._furniId = param1;
      }
      
      public function set requestedByUser(param1:Boolean) : void
      {
         this.var_2379 = param1;
      }
   }
}
