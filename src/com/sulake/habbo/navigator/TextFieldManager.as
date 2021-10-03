package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var var_71:ITextFieldWindow;
      
      private var var_602:Boolean;
      
      private var var_1417:String = "";
      
      private var var_1739:int;
      
      private var var_1738:Function;
      
      private var var_2336:String = "";
      
      private var var_130:IWindowContainer;
      
      private var var_2335:Boolean;
      
      private var _orgTextBackgroundColor:uint;
      
      private var var_2337:uint;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         this._navigator = param1;
         this.var_71 = param2;
         this.var_1739 = param3;
         this.var_1738 = param4;
         if(param5 != null)
         {
            this.var_602 = true;
            this.var_1417 = param5;
            this.var_71.text = param5;
         }
         Util.setProcDirectly(this.var_71,this.onInputClick);
         this.var_71.addEventListener(WindowKeyboardEvent.const_174,this.checkEnterPress);
         this.var_71.addEventListener(WindowEvent.const_104,this.checkMaxLen);
         this.var_2335 = this.var_71.textBackground;
         this._orgTextBackgroundColor = this.var_71.textBackgroundColor;
         this.var_2337 = this.var_71.textColor;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!this.isInputValid())
         {
            this.displayError(param1);
            return false;
         }
         this.restoreBackground();
         return true;
      }
      
      public function restoreBackground() : void
      {
         this.var_71.textBackground = this.var_2335;
         this.var_71.textBackgroundColor = this._orgTextBackgroundColor;
         this.var_71.textColor = this.var_2337;
      }
      
      public function displayError(param1:String) : void
      {
         this.var_71.textBackground = true;
         this.var_71.textBackgroundColor = 4294021019;
         this.var_71.textColor = 4278190080;
         if(this.var_130 == null)
         {
            this.var_130 = IWindowContainer(this._navigator.getXmlWindow("nav_error_popup"));
            this._navigator.refreshButton(this.var_130,"popup_arrow_down",true,null,0);
            IWindowContainer(this.var_71.parent).addChild(this.var_130);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_130.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         this.var_130.findChildByName("border").width = _loc2_.width + 15;
         this.var_130.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         this.var_71.getLocalPosition(_loc3_);
         this.var_130.x = _loc3_.x;
         this.var_130.y = _loc3_.y - this.var_130.height + 3;
         var _loc4_:IWindow = this.var_130.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_130.width / 2 - _loc4_.width / 2;
         this.var_130.x += (this.var_71.width - this.var_130.width) / 2;
         this.var_130.visible = true;
      }
      
      public function goBackToInitialState() : void
      {
         this.clearErrors();
         if(this.var_1417 != null)
         {
            this.var_71.text = this.var_1417;
            this.var_602 = true;
         }
         else
         {
            this.var_71.text = "";
            this.var_602 = false;
         }
      }
      
      public function getText() : String
      {
         if(this.var_602)
         {
            return this.var_2336;
         }
         return this.var_71.text;
      }
      
      public function setText(param1:String) : void
      {
         this.var_602 = false;
         this.var_71.text = param1;
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_130 != null)
         {
            this.var_130.visible = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return this.var_71;
      }
      
      private function isInputValid() : Boolean
      {
         return !this.var_602 && Util.trim(this.getText()).length > 2;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_328)
         {
            return;
         }
         if(!this.var_602)
         {
            return;
         }
         this.var_71.text = this.var_2336;
         this.var_602 = false;
         this.restoreBackground();
      }
      
      private function checkEnterPress(param1:WindowKeyboardEvent) : void
      {
         if(param1.charCode == Keyboard.ENTER)
         {
            if(this.var_1738 != null)
            {
               this.var_1738();
            }
         }
      }
      
      private function checkMaxLen(param1:WindowEvent) : void
      {
         var _loc2_:String = this.var_71.text;
         if(_loc2_.length > this.var_1739)
         {
            this.var_71.text = _loc2_.substring(0,this.var_1739);
         }
      }
   }
}
