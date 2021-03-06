package com.sulake.habbo.friendbar.view.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class Icon implements IDisposable
   {
      
      protected static const const_2132:int = 0;
      
      protected static const const_650:int = 1;
      
      protected static const const_1858:int = 2;
      
      protected static const const_1860:int = 3;
      
      protected static const const_125:int = 4;
      
      protected static const const_651:int = 8;
      
      protected static const const_242:int = 18;
      
      protected static const const_1859:int = 18;
       
      
      private var _disposed:Boolean = false;
      
      private var var_1711:Boolean = false;
      
      protected var var_45:BitmapDataAsset;
      
      protected var var_87:IBitmapWrapperWindow;
      
      private var var_1310:uint;
      
      protected var var_200:Timer;
      
      protected var _frame:int = 0;
      
      private var var_683:Point;
      
      protected var var_878:Boolean = false;
      
      protected var _hover:Boolean = false;
      
      public function Icon()
      {
         this.var_1310 = const_650 | const_651;
         this.var_683 = new Point();
         super();
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get disabled() : Boolean
      {
         return this.var_1711;
      }
      
      protected function set image(param1:BitmapDataAsset) : void
      {
         this.var_45 = param1;
         this.redraw();
      }
      
      protected function get image() : BitmapDataAsset
      {
         return this.var_45;
      }
      
      protected function set canvas(param1:IBitmapWrapperWindow) : void
      {
         this.var_87 = param1;
         this.redraw();
      }
      
      protected function get canvas() : IBitmapWrapperWindow
      {
         return this.var_87;
      }
      
      protected function set alignment(param1:uint) : void
      {
         this.var_1310 = param1;
         this.redraw();
      }
      
      protected function get alignment() : uint
      {
         return this.var_1310;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.toggleTimer(false,0);
            this.image = null;
            this.canvas = null;
            this._disposed = true;
         }
      }
      
      public function notify(param1:Boolean) : void
      {
         this.var_878 = param1;
         if(this.var_878 && this.var_1711)
         {
            this.enable(true);
         }
      }
      
      public function hover(param1:Boolean) : void
      {
         this._hover = param1;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.var_1711 = !param1;
      }
      
      protected function redraw() : void
      {
         var _loc1_:* = null;
         if(this.var_87 && !this.var_87.disposed)
         {
            if(!this.var_87.bitmap)
            {
               this.var_87.bitmap = new BitmapData(this.var_87.width,this.var_87.height,true,0);
            }
            else
            {
               this.var_87.bitmap.fillRect(this.var_87.bitmap.rect,0);
            }
            if(this.var_45 && !this.var_45.disposed)
            {
               this.var_683.x = this.var_683.y = 0;
               _loc1_ = this.var_45.content as BitmapData;
               switch(this.var_1310 & const_1860)
               {
                  case const_650:
                     this.var_683.x = this.var_87.bitmap.width / 2 - _loc1_.width / 2;
                     break;
                  case const_1858:
                     this.var_683.x = this.var_87.bitmap.width - _loc1_.width;
               }
               switch(this.var_1310 & const_1859)
               {
                  case const_651:
                     this.var_683.y = this.var_87.bitmap.height / 2 - _loc1_.height / 2;
                     break;
                  case const_242:
                     this.var_683.y = this.var_87.bitmap.height - _loc1_.height;
               }
               this.var_87.bitmap.copyPixels(_loc1_,_loc1_.rect,this.var_683);
               this.var_87.invalidate();
            }
         }
      }
      
      protected function toggleTimer(param1:Boolean, param2:int) : void
      {
         if(param1)
         {
            if(!this.var_200)
            {
               this.var_200 = new Timer(param2,0);
               this.var_200.addEventListener(TimerEvent.TIMER,this.onTimerEvent);
               this.var_200.start();
               this.onTimerEvent(null);
            }
            this.var_200.delay = param2;
         }
         else
         {
            this._frame = 0;
            if(this.var_200)
            {
               this.var_200.reset();
               this.var_200.removeEventListener(TimerEvent.TIMER,this.onTimerEvent);
               this.var_200 = null;
            }
         }
      }
      
      protected function onTimerEvent(param1:TimerEvent) : void
      {
      }
   }
}
