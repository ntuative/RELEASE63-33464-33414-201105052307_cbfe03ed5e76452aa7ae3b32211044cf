package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_421:int = 1;
      
      public static const const_296:int = 2;
      
      public static const const_322:int = 3;
      
      public static const const_383:int = 4;
      
      public static const const_266:int = 5;
      
      public static const const_382:int = 1;
      
      public static const const_816:int = 2;
      
      public static const const_913:int = 3;
      
      public static const const_766:int = 4;
      
      public static const const_265:int = 5;
      
      public static const const_789:int = 6;
      
      public static const const_945:int = 7;
      
      public static const const_244:int = 8;
      
      public static const const_434:int = 9;
      
      public static const const_2006:int = 10;
      
      public static const const_943:int = 11;
      
      public static const const_526:int = 12;
       
      
      private var var_434:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_434 = new Array();
         this.var_434.push(new Tab(this._navigator,const_421,const_526,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_572));
         this.var_434.push(new Tab(this._navigator,const_296,const_382,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_572));
         this.var_434.push(new Tab(this._navigator,const_383,const_943,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1284));
         this.var_434.push(new Tab(this._navigator,const_322,const_265,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_572));
         this.var_434.push(new Tab(this._navigator,const_266,const_244,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_827));
         this.setSelectedTab(const_421);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.method_1().id == const_383;
      }
      
      public function get tabs() : Array
      {
         return this.var_434;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function method_1() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_434)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_434)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_434)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
