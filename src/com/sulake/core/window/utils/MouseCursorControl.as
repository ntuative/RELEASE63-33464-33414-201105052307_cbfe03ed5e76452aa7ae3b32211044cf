package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.MouseCursorType;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flash.utils.Dictionary;
   
   public class MouseCursorControl
   {
      
      private static var _type:uint = MouseCursorType.const_30;
      
      private static var var_140:Stage;
      
      private static var var_326:Boolean = true;
      
      private static var _disposed:Boolean = false;
      
      private static var var_833:Boolean = true;
      
      private static var var_121:DisplayObject;
      
      private static var var_1582:Dictionary = new Dictionary();
       
      
      public function MouseCursorControl(param1:DisplayObject)
      {
         super();
         var_140 = param1.stage;
      }
      
      public static function dispose() : void
      {
         if(!_disposed)
         {
            if(var_121)
            {
               var_140.removeChild(var_121);
               var_140.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
               var_140.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
               var_140.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
               var_140.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
            }
            _disposed = true;
         }
      }
      
      public static function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public static function get type() : uint
      {
         return _type;
      }
      
      public static function set type(param1:uint) : void
      {
         if(_type != param1)
         {
            _type = param1;
            var_833 = true;
         }
      }
      
      public static function get visible() : Boolean
      {
         return var_326;
      }
      
      public static function set visible(param1:Boolean) : void
      {
         var_326 = param1;
         if(var_326)
         {
            if(var_121)
            {
               var_121.visible = true;
            }
            else
            {
               Mouse.show();
            }
         }
         else if(var_121)
         {
            var_121.visible = false;
         }
         else
         {
            Mouse.hide();
         }
      }
      
      public static function change() : void
      {
         var _loc1_:* = null;
         if(var_833)
         {
            _loc1_ = var_1582[_type];
            if(_loc1_)
            {
               if(var_121)
               {
                  var_140.removeChild(var_121);
               }
               else
               {
                  var_140.addEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_140.addEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_140.addEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_140.addEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  Mouse.hide();
               }
               var_121 = _loc1_;
               var_140.addChild(var_121);
            }
            else
            {
               if(var_121)
               {
                  var_140.removeChild(var_121);
                  var_140.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_140.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_140.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_140.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  var_121 = null;
                  Mouse.show();
               }
               switch(_type)
               {
                  case MouseCursorType.const_30:
                  case MouseCursorType.ARROW:
                     Mouse.cursor = MouseCursor.ARROW;
                     break;
                  case MouseCursorType.const_343:
                     Mouse.cursor = MouseCursor.BUTTON;
                     break;
                  case MouseCursorType.const_910:
                  case MouseCursorType.const_289:
                  case MouseCursorType.const_1555:
                  case MouseCursorType.const_1816:
                     Mouse.cursor = MouseCursor.HAND;
                     break;
                  case MouseCursorType.NONE:
                     Mouse.cursor = MouseCursor.ARROW;
                     Mouse.hide();
               }
            }
            var_833 = false;
         }
      }
      
      public static function defineCustomCursorType(param1:uint, param2:DisplayObject) : void
      {
         var_1582[param1] = param2;
      }
      
      private static function onStageMouseMove(param1:MouseEvent) : void
      {
         if(var_121)
         {
            var_121.x = param1.stageX - 2;
            var_121.y = param1.stageY;
            if(_type == MouseCursorType.const_30)
            {
               var_326 = false;
               Mouse.show();
            }
            else
            {
               var_326 = true;
               Mouse.hide();
            }
         }
      }
      
      private static function onStageMouseLeave(param1:Event) : void
      {
         if(var_121 && _type != MouseCursorType.const_30)
         {
            Mouse.hide();
            var_326 = false;
         }
      }
   }
}
