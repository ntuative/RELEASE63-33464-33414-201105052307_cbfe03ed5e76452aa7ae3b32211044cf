package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1693:String;
      
      private var var_2567:int;
      
      private var _password:String;
      
      private var var_1568:int;
      
      private var var_2686:int;
      
      private var var_877:Array;
      
      private var var_2684:Array;
      
      private var var_2682:Boolean;
      
      private var var_2683:Boolean;
      
      private var var_2681:Boolean;
      
      private var var_2685:Boolean;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2682;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2682 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2683;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2683 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2681;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2681 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2685;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2685 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1693;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1693 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2567;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2567 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1568;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1568 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2686;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2686 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_877;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_877 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2684;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2684 = param1;
      }
   }
}
