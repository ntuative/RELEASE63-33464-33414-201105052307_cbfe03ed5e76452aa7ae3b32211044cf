package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2969:uint;
      
      private var var_146:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_270:IWindowContext;
      
      private var var_1174:IMouseDraggingService;
      
      private var var_1173:IMouseScalingService;
      
      private var var_1175:IMouseListenerService;
      
      private var var_1176:IFocusManagerService;
      
      private var var_1178:IToolTipAgentService;
      
      private var var_1177:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2969 = 0;
         this.var_146 = param2;
         this.var_270 = param1;
         this.var_1174 = new WindowMouseDragger(param2);
         this.var_1173 = new WindowMouseScaler(param2);
         this.var_1175 = new WindowMouseListener(param2);
         this.var_1176 = new FocusManager(param2);
         this.var_1178 = new WindowToolTipAgent(param2);
         this.var_1177 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1174 != null)
         {
            this.var_1174.dispose();
            this.var_1174 = null;
         }
         if(this.var_1173 != null)
         {
            this.var_1173.dispose();
            this.var_1173 = null;
         }
         if(this.var_1175 != null)
         {
            this.var_1175.dispose();
            this.var_1175 = null;
         }
         if(this.var_1176 != null)
         {
            this.var_1176.dispose();
            this.var_1176 = null;
         }
         if(this.var_1178 != null)
         {
            this.var_1178.dispose();
            this.var_1178 = null;
         }
         if(this.var_1177 != null)
         {
            this.var_1177.dispose();
            this.var_1177 = null;
         }
         this.var_146 = null;
         this.var_270 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1174;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1173;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1175;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1176;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1178;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1177;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
