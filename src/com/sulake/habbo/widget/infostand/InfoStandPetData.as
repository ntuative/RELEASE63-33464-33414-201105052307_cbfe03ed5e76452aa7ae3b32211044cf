package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1366:int;
      
      private var var_2398:int;
      
      private var var_2401:int;
      
      private var var_2394:int;
      
      private var _energy:int;
      
      private var var_2397:int;
      
      private var _nutrition:int;
      
      private var var_2395:int;
      
      private var _petRespect:int;
      
      private var _name:String = "";
      
      private var var_1875:int = -1;
      
      private var _type:int;
      
      private var var_2338:int;
      
      private var var_45:BitmapData;
      
      private var var_2400:Boolean;
      
      private var var_2399:int;
      
      private var _ownerName:String;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var var_2308:int;
      
      private var var_504:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get id() : int
      {
         return this.var_1875;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get race() : int
      {
         return this.var_2338;
      }
      
      public function get image() : BitmapData
      {
         return this.var_45;
      }
      
      public function get isOwnPet() : Boolean
      {
         return this.var_2400;
      }
      
      public function get ownerId() : int
      {
         return this.var_2399;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return this._canOwnerBeKicked;
      }
      
      public function get age() : int
      {
         return this.var_504;
      }
      
      public function get level() : int
      {
         return this.var_1366;
      }
      
      public function get levelMax() : int
      {
         return this.var_2398;
      }
      
      public function get experience() : int
      {
         return this.var_2401;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2394;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2397;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2395;
      }
      
      public function get petRespect() : int
      {
         return this._petRespect;
      }
      
      public function get roomIndex() : int
      {
         return this.var_2308;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         this._name = param1.name;
         this.var_1875 = param1.id;
         this._type = param1.petType;
         this.var_2338 = param1.petRace;
         this.var_45 = param1.image;
         this.var_2400 = param1.isOwnPet;
         this.var_2399 = param1.ownerId;
         this._ownerName = param1.ownerName;
         this._canOwnerBeKicked = param1.canOwnerBeKicked;
         this.var_1366 = param1.level;
         this.var_2398 = param1.levelMax;
         this.var_2401 = param1.experience;
         this.var_2394 = param1.experienceMax;
         this._energy = param1.energy;
         this.var_2397 = param1.energyMax;
         this._nutrition = param1.nutrition;
         this.var_2395 = param1.nutritionMax;
         this._petRespect = param1.petRespect;
         this.var_2308 = param1.roomIndex;
         this.var_504 = param1.age;
      }
   }
}
