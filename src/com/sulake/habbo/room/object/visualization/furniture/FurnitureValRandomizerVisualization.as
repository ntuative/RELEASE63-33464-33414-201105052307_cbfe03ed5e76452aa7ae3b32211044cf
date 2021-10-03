package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1051:int = 20;
      
      private static const const_671:int = 10;
      
      private static const const_1465:int = 31;
      
      private static const const_1460:int = 32;
      
      private static const const_670:int = 30;
       
      
      private var var_314:Array;
      
      private var var_719:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_314 = new Array();
         super();
         super.setAnimation(const_670);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_719)
            {
               this.var_719 = true;
               this.var_314 = new Array();
               this.var_314.push(const_1465);
               this.var_314.push(const_1460);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_671)
         {
            if(this.var_719)
            {
               this.var_719 = false;
               this.var_314 = new Array();
               if(direction == 2)
               {
                  this.var_314.push(const_1051 + 5 - param1);
                  this.var_314.push(const_671 + 5 - param1);
               }
               else
               {
                  this.var_314.push(const_1051 + param1);
                  this.var_314.push(const_671 + param1);
               }
               this.var_314.push(const_670);
               return;
            }
            super.setAnimation(const_670);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
         {
            if(this.var_314.length > 0)
            {
               super.setAnimation(this.var_314.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
