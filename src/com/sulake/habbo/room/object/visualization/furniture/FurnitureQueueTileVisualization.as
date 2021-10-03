package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1460:int = 3;
      
      private static const const_1533:int = 2;
      
      private static const const_1531:int = 1;
      
      private static const const_1532:int = 15;
       
      
      private var var_314:Array;
      
      private var var_1322:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_314 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1533)
         {
            this.var_314 = new Array();
            this.var_314.push(const_1531);
            this.var_1322 = const_1532;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1322 > 0)
         {
            --this.var_1322;
         }
         if(this.var_1322 == 0)
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
