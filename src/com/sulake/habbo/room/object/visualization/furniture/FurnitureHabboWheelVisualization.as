package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1051:int = 10;
      
      private static const const_671:int = 20;
      
      private static const const_1465:int = 31;
      
      private static const const_1460:int = 32;
       
      
      private var var_314:Array;
      
      private var var_719:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_314 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
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
         if(param1 > 0 && param1 <= const_1051)
         {
            if(this.var_719)
            {
               this.var_719 = false;
               this.var_314 = new Array();
               this.var_314.push(const_1051 + param1);
               this.var_314.push(const_671 + param1);
               this.var_314.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
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
