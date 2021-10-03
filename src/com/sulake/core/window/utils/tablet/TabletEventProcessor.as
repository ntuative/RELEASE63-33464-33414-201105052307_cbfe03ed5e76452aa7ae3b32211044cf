package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2998:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         if(param2.length == 0)
         {
            return;
         }
         var_80 = param1.desktop;
         var_61 = param1.var_1336 as WindowController;
         var_172 = param1.var_1335 as WindowController;
         var_163 = param1.renderer;
         var_869 = param1.var_1334;
         param2.begin();
         param2.end();
         param1.desktop = var_80;
         param1.var_1336 = var_61;
         param1.var_1335 = var_172;
         param1.renderer = var_163;
         param1.var_1334 = var_869;
      }
   }
}
