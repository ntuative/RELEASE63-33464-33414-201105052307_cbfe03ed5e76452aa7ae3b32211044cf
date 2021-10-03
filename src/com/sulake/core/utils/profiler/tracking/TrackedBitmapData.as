package com.sulake.core.utils.profiler.tracking
{
   import flash.display.BitmapData;
   
   public class TrackedBitmapData extends BitmapData
   {
      
      public static const const_2099:int = 16777215;
      
      public static const const_1217:int = 8191;
      
      public static const const_1239:int = 8191;
      
      public static const const_2061:int = 1;
      
      public static const const_1233:int = 1;
      
      public static const const_1198:int = 1;
      
      private static var var_531:uint = 0;
      
      private static var var_530:uint = 0;
       
      
      private var var_439:Object;
      
      private var _disposed:Boolean = false;
      
      public function TrackedBitmapData(param1:*, param2:int, param3:int, param4:Boolean = true, param5:uint = 4.294967295E9)
      {
         if(param2 > const_1217)
         {
            param2 = const_1217;
         }
         else if(param2 < const_1233)
         {
            param2 = const_1233;
         }
         if(param3 > const_1239)
         {
            param3 = const_1239;
         }
         else if(param3 < const_1198)
         {
            param3 = const_1198;
         }
         super(param2,param3,param4,param5);
         ++var_531;
         var_530 += param2 * param3 * 4;
         this.var_439 = param1;
      }
      
      public static function get numInstances() : uint
      {
         return var_531;
      }
      
      public static function get allocatedByteCount() : uint
      {
         return var_530;
      }
      
      override public function dispose() : void
      {
         if(!this._disposed)
         {
            var_530 -= width * height * 4;
            --var_531;
            this._disposed = true;
            this.var_439 = null;
            super.dispose();
         }
      }
   }
}
