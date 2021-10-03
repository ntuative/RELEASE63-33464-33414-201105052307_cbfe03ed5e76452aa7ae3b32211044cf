package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1534:Number = 12;
       
      
      private var var_2870:int = -1;
      
      private var var_2869:int = -2;
      
      private var var_213:Vector3d = null;
      
      private var var_1324:Number = 0;
      
      private var var_1607:Number = 0;
      
      private var var_2079:Boolean = false;
      
      private var var_193:Vector3d = null;
      
      private var var_2081:Vector3d;
      
      private var var_2868:Boolean = false;
      
      private var var_2865:Boolean = false;
      
      private var var_2863:Boolean = false;
      
      private var var_2866:Boolean = false;
      
      private var var_2867:int = 0;
      
      private var var_2862:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2864:int = 0;
      
      private var var_2871:int = 0;
      
      private var var_1796:int = -1;
      
      private var var_2080:int = 0;
      
      private var var_2082:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_2081 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_193;
      }
      
      public function get targetId() : int
      {
         return this.var_2870;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2869;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_2081;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2868;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2865;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2863;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2866;
      }
      
      public function get screenWd() : int
      {
         return this.var_2867;
      }
      
      public function get screenHt() : int
      {
         return this.var_2862;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2864;
      }
      
      public function get roomHt() : int
      {
         return this.var_2871;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1796;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_213 != null && this.var_193 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2870 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_2081.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2869 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2868 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2865 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2863 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2866 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2867 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2862 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_2082 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2864 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2871 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1796 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_213 == null)
         {
            this.var_213 = new Vector3d();
         }
         if(this.var_213.x != param1.x || this.var_213.y != param1.y || this.var_213.z != param1.z)
         {
            this.var_213.assign(param1);
            this.var_2080 = 0;
            _loc2_ = Vector3d.dif(this.var_213,this.var_193);
            this.var_1324 = _loc2_.length;
            this.var_2079 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_213 = null;
         this.var_193 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_193 != null)
         {
            return;
         }
         this.var_193 = new Vector3d();
         this.var_193.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_193 == null)
         {
            this.var_193 = new Vector3d();
         }
         this.var_193.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_213 != null && this.var_193 != null)
         {
            ++this.var_2080;
            if(this.var_2082)
            {
               this.var_2082 = false;
               this.var_193 = this.var_213;
               this.var_213 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_213,this.var_193);
            if(_loc3_.length > this.var_1324)
            {
               this.var_1324 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_193 = this.var_213;
               this.var_213 = null;
               this.var_1607 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1324);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1324 / const_1534;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_2079)
               {
                  if(_loc7_ < this.var_1607)
                  {
                     _loc7_ = this.var_1607;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_2079 = false;
                  }
               }
               this.var_1607 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_193 = Vector3d.sum(this.var_193,_loc3_);
            }
         }
      }
   }
}
