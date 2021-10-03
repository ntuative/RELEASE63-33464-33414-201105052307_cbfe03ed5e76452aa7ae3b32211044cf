package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_565:WallRasterizer;
      
      private var var_564:FloorRasterizer;
      
      private var var_858:WallAdRasterizer;
      
      private var var_563:LandscapeRasterizer;
      
      private var var_857:PlaneMaskManager;
      
      private var var_718:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_565 = new WallRasterizer();
         this.var_564 = new FloorRasterizer();
         this.var_858 = new WallAdRasterizer();
         this.var_563 = new LandscapeRasterizer();
         this.var_857 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_718;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_564;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_565;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_858;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_563;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_857;
      }
      
      public function dispose() : void
      {
         if(this.var_565 != null)
         {
            this.var_565.dispose();
            this.var_565 = null;
         }
         if(this.var_564 != null)
         {
            this.var_564.dispose();
            this.var_564 = null;
         }
         if(this.var_858 != null)
         {
            this.var_858.dispose();
            this.var_858 = null;
         }
         if(this.var_563 != null)
         {
            this.var_563.dispose();
            this.var_563 = null;
         }
         if(this.var_857 != null)
         {
            this.var_857.dispose();
            this.var_857 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_565 != null)
         {
            this.var_565.clearCache();
         }
         if(this.var_564 != null)
         {
            this.var_564.clearCache();
         }
         if(this.var_563 != null)
         {
            this.var_563.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_565.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_564.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_858.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_563.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_857.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_718)
         {
            return;
         }
         this.var_565.initializeAssetCollection(param1);
         this.var_564.initializeAssetCollection(param1);
         this.var_858.initializeAssetCollection(param1);
         this.var_563.initializeAssetCollection(param1);
         this.var_857.initializeAssetCollection(param1);
         this.var_718 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}
