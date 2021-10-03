package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var var_1965:String;
      
      private var var_2670:String;
      
      private var var_466:BitmapDataAsset;
      
      private var var_1451:Boolean;
      
      private var var_1450:Boolean;
      
      private var var_2671:Boolean;
      
      private var _offsetX:int;
      
      private var var_1147:int;
      
      private var var_261:int;
      
      private var _height:int;
      
      private var var_718:Boolean;
      
      public function GraphicAsset(param1:String, param2:String, param3:IAsset, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         super();
         this.var_1965 = param1;
         this.var_2670 = param2;
         var _loc9_:BitmapDataAsset = param3 as BitmapDataAsset;
         if(_loc9_ != null)
         {
            this.var_466 = _loc9_;
            this.var_718 = false;
         }
         else
         {
            this.var_466 = null;
            this.var_718 = true;
         }
         this.var_1451 = param4;
         this.var_1450 = param5;
         this._offsetX = param6;
         this.var_1147 = param7;
         this.var_2671 = param8;
      }
      
      public function dispose() : void
      {
         this.var_466 = null;
      }
      
      private function initialize() : void
      {
         var _loc1_:* = null;
         if(!this.var_718 && this.var_466 != null)
         {
            _loc1_ = this.var_466.content as BitmapData;
            if(_loc1_ != null)
            {
               this.var_261 = _loc1_.width;
               this._height = _loc1_.height;
            }
            this.var_718 = true;
         }
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1450;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1451;
      }
      
      public function get width() : int
      {
         this.initialize();
         return this.var_261;
      }
      
      public function get height() : int
      {
         this.initialize();
         return this._height;
      }
      
      public function get assetName() : String
      {
         return this.var_1965;
      }
      
      public function get libraryAssetName() : String
      {
         return this.var_2670;
      }
      
      public function get asset() : IAsset
      {
         return this.var_466;
      }
      
      public function get usesPalette() : Boolean
      {
         return this.var_2671;
      }
      
      public function get offsetX() : int
      {
         if(!this.var_1451)
         {
            return this._offsetX;
         }
         return -(this.width + this._offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!this.var_1450)
         {
            return this.var_1147;
         }
         return -(this.height + this.var_1147);
      }
      
      public function get originalOffsetX() : int
      {
         return this._offsetX;
      }
      
      public function get originalOffsetY() : int
      {
         return this.var_1147;
      }
   }
}
