package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1733:String = "WE_DESTROY";
      
      public static const const_314:String = "WE_DESTROYED";
      
      public static const const_1771:String = "WE_OPEN";
      
      public static const const_1668:String = "WE_OPENED";
      
      public static const const_1600:String = "WE_CLOSE";
      
      public static const const_1696:String = "WE_CLOSED";
      
      public static const const_1589:String = "WE_FOCUS";
      
      public static const const_328:String = "WE_FOCUSED";
      
      public static const const_1699:String = "WE_UNFOCUS";
      
      public static const const_1620:String = "WE_UNFOCUSED";
      
      public static const const_1650:String = "WE_ACTIVATE";
      
      public static const const_612:String = "WE_ACTIVATED";
      
      public static const const_1755:String = "WE_DEACTIVATE";
      
      public static const const_548:String = "WE_DEACTIVATED";
      
      public static const const_315:String = "WE_SELECT";
      
      public static const const_59:String = "WE_SELECTED";
      
      public static const const_535:String = "WE_UNSELECT";
      
      public static const const_577:String = "WE_UNSELECTED";
      
      public static const const_1598:String = "WE_LOCK";
      
      public static const const_1759:String = "WE_LOCKED";
      
      public static const const_1713:String = "WE_UNLOCK";
      
      public static const const_1701:String = "WE_UNLOCKED";
      
      public static const const_792:String = "WE_ENABLE";
      
      public static const const_278:String = "WE_ENABLED";
      
      public static const const_914:String = "WE_DISABLE";
      
      public static const const_203:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_285:String = "WE_RELOCATED";
      
      public static const const_1232:String = "WE_RESIZE";
      
      public static const const_41:String = "WE_RESIZED";
      
      public static const const_1606:String = "WE_MINIMIZE";
      
      public static const const_1781:String = "WE_MINIMIZED";
      
      public static const const_1599:String = "WE_MAXIMIZE";
      
      public static const const_1815:String = "WE_MAXIMIZED";
      
      public static const const_1844:String = "WE_RESTORE";
      
      public static const const_1682:String = "WE_RESTORED";
      
      public static const const_542:String = "WE_CHILD_ADDED";
      
      public static const const_401:String = "WE_CHILD_REMOVED";
      
      public static const const_204:String = "WE_CHILD_RELOCATED";
      
      public static const const_142:String = "WE_CHILD_RESIZED";
      
      public static const const_338:String = "WE_CHILD_ACTIVATED";
      
      public static const const_624:String = "WE_PARENT_ADDED";
      
      public static const const_1661:String = "WE_PARENT_REMOVED";
      
      public static const const_1684:String = "WE_PARENT_RELOCATED";
      
      public static const const_733:String = "WE_PARENT_RESIZED";
      
      public static const const_1262:String = "WE_PARENT_ACTIVATED";
      
      public static const const_189:String = "WE_OK";
      
      public static const const_604:String = "WE_CANCEL";
      
      public static const const_104:String = "WE_CHANGE";
      
      public static const const_525:String = "WE_SCROLL";
      
      public static const const_176:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_699:IWindow;
      
      protected var var_1083:Boolean;
      
      protected var var_472:Boolean;
      
      protected var var_475:Boolean;
      
      protected var var_700:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_699 = param3;
         _loc5_.var_472 = param4;
         _loc5_.var_475 = false;
         _loc5_.var_700 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_699;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_472;
      }
      
      public function recycle() : void
      {
         if(this.var_475)
         {
            throw new Error("Event already recycled!");
         }
         this.var_699 = null;
         this._window = null;
         this.var_475 = true;
         this.var_1083 = false;
         this.var_700.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1083;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1083 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1083;
      }
      
      public function stopPropagation() : void
      {
         this.var_1083 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1083 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_472 + " window: " + this._window + " }";
      }
   }
}
