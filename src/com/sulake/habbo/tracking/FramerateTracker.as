package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_2016:int;
      
      private var var_2807:int;
      
      private var var_742:int;
      
      private var var_555:Number;
      
      private var var_2805:Boolean;
      
      private var var_2806:int;
      
      private var var_2017:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_555);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2807 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2806 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2805 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_742;
         if(this.var_742 == 1)
         {
            this.var_555 = param1;
            this.var_2016 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_742);
            this.var_555 = this.var_555 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2805 && param3 - this.var_2016 >= this.var_2807)
         {
            this.var_742 = 0;
            if(this.var_2017 < this.var_2806)
            {
               param2.track("performance","averageFramerate",this.frameRate);
               ++this.var_2017;
               this.var_2016 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
