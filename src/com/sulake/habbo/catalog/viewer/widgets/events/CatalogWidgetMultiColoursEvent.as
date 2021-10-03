package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetMultiColoursEvent extends Event
   {
       
      
      private var var_1032:Array;
      
      private var var_2248:String;
      
      private var var_2250:String;
      
      private var var_2249:String;
      
      public function CatalogWidgetMultiColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_MULTI_COLOUR_ARRAY,param5,param6);
         this.var_1032 = param1;
         this.var_2248 = param2;
         this.var_2250 = param3;
         this.var_2249 = param4;
      }
      
      public function get colours() : Array
      {
         return this.var_1032;
      }
      
      public function get backgroundAssetName() : String
      {
         return this.var_2248;
      }
      
      public function get colourAssetName() : String
      {
         return this.var_2250;
      }
      
      public function get chosenColourAssetName() : String
      {
         return this.var_2249;
      }
   }
}
