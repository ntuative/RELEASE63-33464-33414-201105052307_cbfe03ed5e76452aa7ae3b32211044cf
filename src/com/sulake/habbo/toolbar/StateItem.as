package com.sulake.habbo.toolbar
{
   public class StateItem
   {
       
      
      private var _id:String;
      
      private var var_1524:Boolean;
      
      private var var_2187:Boolean;
      
      private var var_200:int = 120;
      
      private var var_1653:String;
      
      private var var_1503:String = "-1";
      
      private var var_1654:String = "-1";
      
      private var var_1655:String = "-1";
      
      private var var_2186:String;
      
      private var var_481:String;
      
      private var _frames:XMLList;
      
      private var var_374:String;
      
      public function StateItem(param1:XML, param2:String)
      {
         super();
         this._id = param1.@id;
         if(param1.attribute("loop").length() > 0)
         {
            this.var_1524 = Boolean(param1.@loop);
         }
         if(param1.attribute("bounce").length() > 0)
         {
            this.var_2187 = Boolean(param1.@loop);
         }
         if(param1.attribute("timer").length() > 0)
         {
            this.var_200 = int(param1.@timer);
         }
         if(param1.attribute("namebase").length() > 0)
         {
            this.var_1653 = param1.@namebase;
         }
         else
         {
            this.var_1653 = param2;
         }
         if(param1.attribute("state_over").length() > 0)
         {
            this.var_1503 = param1.@state_over;
         }
         if(param1.attribute("nextState").length() > 0)
         {
            this.var_1654 = param1.@nextState;
         }
         else
         {
            this.var_1654 = this._id;
         }
         if(param1.attribute("state_default").length() > 0)
         {
            this.var_1655 = param1.@state_default;
         }
         if(param1.attribute("tooltip").length() > 0)
         {
            this.var_2186 = param1.@tooltip;
         }
         if(param1.attribute("background").length() > 0)
         {
            this.var_481 = param1.@background;
         }
         var _loc3_:XMLList = param1.elements("frame");
         if(_loc3_.length() > 0)
         {
            this._frames = _loc3_;
         }
         if(param1.attribute("label").length() > 0)
         {
            this.var_374 = param1.@label;
         }
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function get loop() : Boolean
      {
         return this.var_1524;
      }
      
      public function get bounce() : Boolean
      {
         return this.var_2187;
      }
      
      public function get timer() : int
      {
         return this.var_200;
      }
      
      public function get nameBase() : String
      {
         return this.var_1653;
      }
      
      public function get hasStateOver() : Boolean
      {
         return this.var_1503 != "-1";
      }
      
      public function get stateOver() : String
      {
         return this.var_1503;
      }
      
      public function get nextState() : String
      {
         return this.var_1654;
      }
      
      public function get hasDefaultState() : Boolean
      {
         return this.var_1655 != "-1";
      }
      
      public function get defaultState() : String
      {
         return this.var_1655;
      }
      
      public function get tooltip() : String
      {
         return this.var_2186;
      }
      
      public function get frames() : XMLList
      {
         return this._frames;
      }
      
      public function get background() : String
      {
         return this.var_481;
      }
      
      public function get label() : String
      {
         return this.var_374;
      }
   }
}
