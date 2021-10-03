package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2363:int = 0;
      
      private var var_1595:String = "";
      
      private var var_2052:String = "";
      
      private var var_2385:String = "";
      
      private var var_2387:String = "";
      
      private var var_1770:int = 0;
      
      private var var_2384:int = 0;
      
      private var var_2386:int = 0;
      
      private var var_1593:int = 0;
      
      private var var_2388:int = 0;
      
      private var var_1596:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2363 = param1;
         this.var_1595 = param2;
         this.var_2052 = param3;
         this.var_2385 = param4;
         this.var_2387 = param5;
         if(param6)
         {
            this.var_1770 = 1;
         }
         else
         {
            this.var_1770 = 0;
         }
         this.var_2384 = param7;
         this.var_2386 = param8;
         this.var_1593 = param9;
         this.var_2388 = param10;
         this.var_1596 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2363,this.var_1595,this.var_2052,this.var_2385,this.var_2387,this.var_1770,this.var_2384,this.var_2386,this.var_1593,this.var_2388,this.var_1596];
      }
   }
}
