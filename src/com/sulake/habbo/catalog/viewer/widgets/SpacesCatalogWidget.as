package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.IProduct;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.CatalogWidgetUpdateRoomPreviewEvent;
   
   public class SpacesCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
      
      private static const const_230:String = "floor";
      
      private static const const_229:String = "wallpaper";
      
      private static const TYPE_LANDSCAPE:String = "landscape";
       
      
      private var var_183:XML;
      
      private var var_1372:Array;
      
      private var _activeWallpaperPatterns:Array;
      
      private var var_416:int = 0;
      
      private var var_415:int = 0;
      
      private var var_887:int = 0;
      
      private var var_1371:String = "default";
      
      private var var_1370:Array;
      
      private var var_886:Array;
      
      private var var_417:int = 0;
      
      private var var_486:int = 0;
      
      private var var_888:int = 0;
      
      private var _floorType:String = "default";
      
      private var var_1368:Array;
      
      private var var_885:Array;
      
      private var var_414:int = 0;
      
      private var var_485:int = 0;
      
      private var var_889:int = 0;
      
      private var var_1369:String = "1.1";
      
      public function SpacesCatalogWidget(param1:IWindowContainer)
      {
         this.var_1372 = [];
         this._activeWallpaperPatterns = [];
         this.var_1370 = [];
         this.var_886 = [];
         this.var_1368 = [];
         this.var_885 = [];
         super(param1);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override public function init() : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:Boolean = false;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         if(!super.init())
         {
            return false;
         }
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("configuration_catalog_spaces") as XmlAsset;
         if(_loc1_ != null)
         {
            this.var_183 = _loc1_.content as XML;
            for each(_loc2_ in page.offers)
            {
               _loc4_ = _loc2_.productContainer.firstProduct;
               _loc5_ = _loc2_.localizationId;
               _loc6_ = _loc5_.split(" ")[0];
               _loc7_ = _loc5_.split(" ")[1];
               _loc8_ = false;
               switch(_loc4_.furnitureData.name)
               {
                  case "floor":
                     for each(_loc9_ in this.var_183.floors.pattern)
                     {
                        this.var_886.push(String(_loc9_.@id));
                        this.var_1370.push(_loc2_);
                     }
                     break;
                  case "wallpaper":
                     for each(_loc10_ in this.var_183.walls.pattern)
                     {
                        if(_loc10_.@id == _loc7_)
                        {
                           this._activeWallpaperPatterns.push(_loc7_);
                           _loc8_ = true;
                        }
                     }
                     if(_loc8_)
                     {
                        this.var_1372.push(_loc2_);
                     }
                     else
                     {
                        Logger.log("[SpacesCatalogWidget] Could not find wallpaper pattern configuration! " + [_loc2_.localizationId,_loc4_.furnitureData.name]);
                     }
                     break;
                  case "landscape":
                     for each(_loc11_ in this.var_183.landscapes.pattern)
                     {
                        if(_loc11_.@id == _loc7_)
                        {
                           this.var_885.push(_loc7_);
                           _loc8_ = true;
                        }
                     }
                     if(_loc8_)
                     {
                        this.var_1368.push(_loc2_);
                     }
                     else
                     {
                        Logger.log("[SpacesCatalogWidget] Could not find landscape pattern configuration! " + [_loc2_.localizationId,_loc4_.furnitureData.name]);
                     }
                     break;
                  default:
                     Logger.log("[SpacesCatalogWidget] : " + _loc4_.furnitureData.name);
                     break;
               }
            }
            _loc3_ = 0;
            while(_loc3_ < _window.numChildren)
            {
               _loc12_ = _window.getChildAt(_loc3_);
               if(_loc12_ is IButtonWindow)
               {
                  _loc12_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onClick);
               }
               _loc3_++;
            }
            this.changePattern(const_229,0);
            this.changePattern(TYPE_LANDSCAPE,0);
            this.changePattern(const_230,0);
            this.updateConfiguration();
            events.dispatchEvent(new CatalogWidgetUpdateRoomPreviewEvent(this._floorType,this.var_1371,this.var_1369,64));
            return true;
         }
         return false;
      }
      
      private function onClick(param1:WindowMouseEvent) : void
      {
         var _loc3_:* = null;
         var _loc2_:IWindow = param1.target as IWindow;
         if(_loc2_ == null)
         {
            return;
         }
         switch(_loc2_.name)
         {
            case "ctlg_wall_pattern_prev":
               this.changePattern(const_229,-1);
               break;
            case "ctlg_wall_pattern_next":
               this.changePattern(const_229,1);
               break;
            case "ctlg_wall_color_prev":
               this.changeColor(const_229,-1);
               break;
            case "ctlg_wall_color_next":
               this.changeColor(const_229,1);
               break;
            case "ctlg_buy_wall":
               _loc3_ = this.var_1372[this.var_416];
               if(_loc3_ != null)
               {
                  (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(_loc3_,page.pageId,this.var_1371);
               }
               break;
            case "ctlg_floor_pattern_prev":
               this.changePattern(const_230,-1);
               break;
            case "ctlg_floor_pattern_next":
               this.changePattern(const_230,1);
               break;
            case "ctlg_floor_color_prev":
               this.changeColor(const_230,-1);
               break;
            case "ctlg_floor_color_next":
               this.changeColor(const_230,1);
               break;
            case "ctlg_buy_floor":
               _loc3_ = this.var_1370[this.var_417];
               if(_loc3_ != null)
               {
                  (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(_loc3_,page.pageId,this._floorType);
               }
               break;
            case "ctlg_landscape_pattern_next":
               this.changePattern(TYPE_LANDSCAPE,-1);
               break;
            case "ctlg_landscape_pattern_prev":
               this.changePattern(TYPE_LANDSCAPE,1);
               break;
            case "ctlg_landscape_color_prev":
               this.changeColor(TYPE_LANDSCAPE,-1);
               break;
            case "ctlg_landscape_color_next":
               this.changeColor(TYPE_LANDSCAPE,1);
               break;
            case "ctlg_buy_landscape":
               _loc3_ = this.var_1368[this.var_414];
               if(_loc3_ != null)
               {
                  (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(_loc3_,page.pageId,this.var_1369);
               }
               break;
            default:
               Logger.log("Spaces, unknown button: " + _loc2_.name);
         }
         this.updateConfiguration();
         events.dispatchEvent(new CatalogWidgetUpdateRoomPreviewEvent(this._floorType,this.var_1371,this.var_1369,64));
      }
      
      private function updateConfiguration() : void
      {
         var _loc1_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc6_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc2_:String = this._activeWallpaperPatterns[this.var_416];
         for each(_loc1_ in this.var_183.walls.pattern)
         {
            if(_loc1_.@id == _loc2_)
            {
               if(this.var_415 >= 0)
               {
                  _loc9_ = _loc1_.children()[this.var_415];
                  if(_loc9_ != null)
                  {
                     this.var_1371 = _loc9_.@id;
                  }
               }
            }
         }
         _loc3_ = this.var_1372[this.var_416];
         _loc4_ = (page.viewer.catalog as HabboCatalog).localization;
         if(_loc3_ != null)
         {
            _loc10_ = _window.findChildByName("ctlg_wall_price") as ITextWindow;
            if(_loc10_ != null)
            {
               _loc10_.caption = _loc4_.registerParameter("catalog.purchase.price.credits","credits",String(_loc3_.priceInCredits));
            }
         }
         var _loc5_:String = this.var_886[this.var_417];
         for each(_loc1_ in this.var_183.floors.pattern)
         {
            if(_loc1_.@id == _loc5_)
            {
               _loc11_ = _loc1_.children()[this.var_486];
               if(_loc11_ != null)
               {
                  this._floorType = _loc11_.@id;
               }
            }
         }
         _loc6_ = this.var_1370[this.var_417];
         if(_loc6_ != null)
         {
            _loc12_ = _window.findChildByName("ctlg_floor_price") as ITextWindow;
            if(_loc12_ != null)
            {
               _loc12_.caption = _loc4_.registerParameter("catalog.purchase.price.credits","credits",String(_loc6_.priceInCredits));
            }
         }
         var _loc7_:String = this.var_885[this.var_414];
         for each(_loc1_ in this.var_183.landscapes.pattern)
         {
            if(_loc1_.@id == _loc7_)
            {
               _loc13_ = _loc1_.children()[this.var_485];
               if(_loc13_ != null)
               {
                  this.var_1369 = _loc13_.@id;
               }
            }
         }
         _loc8_ = this.var_1368[this.var_414];
         if(_loc8_ != null)
         {
            _loc14_ = _window.findChildByName("ctlg_landscape_price") as ITextWindow;
            if(_loc14_ != null)
            {
               _loc14_.caption = _loc4_.registerParameter("catalog.purchase.price.credits","credits",String(_loc8_.priceInCredits));
            }
         }
      }
      
      private function changePattern(param1:String, param2:int) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         switch(param1)
         {
            case const_229:
               this.var_416 += param2;
               if(this.var_416 < 0)
               {
                  this.var_416 = this._activeWallpaperPatterns.length - 1;
               }
               if(this.var_416 == this._activeWallpaperPatterns.length)
               {
                  this.var_416 = 0;
               }
               this.var_415 = 0;
               this.var_887 = 0;
               _loc5_ = this._activeWallpaperPatterns[this.var_416];
               for each(_loc8_ in this.var_183.walls.pattern)
               {
                  if(_loc8_.@id == _loc5_)
                  {
                     this.var_887 = _loc8_.children().length();
                  }
               }
               _loc4_ = _window.findChildByName("ctlg_wall_color_prev") as IButtonWindow;
               _loc3_ = _window.findChildByName("ctlg_wall_color_next") as IButtonWindow;
               if(this.var_887 < 2)
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.disable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.disable();
                  }
               }
               else
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.enable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.enable();
                  }
               }
               break;
            case const_230:
               this.var_417 += param2;
               if(this.var_417 < 0)
               {
                  this.var_417 = this.var_886.length - 1;
               }
               if(this.var_417 >= this.var_886.length)
               {
                  this.var_417 = 0;
               }
               this.var_486 = 0;
               this.var_888 = 0;
               _loc6_ = this.var_886[this.var_417];
               for each(_loc9_ in this.var_183.floors.pattern)
               {
                  if(_loc9_.@id == _loc6_)
                  {
                     this.var_888 = _loc9_.children().length();
                  }
               }
               _loc4_ = _window.findChildByName("ctlg_floor_color_prev") as IButtonWindow;
               _loc3_ = _window.findChildByName("ctlg_floor_color_next") as IButtonWindow;
               if(this.var_888 < 2)
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.disable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.disable();
                  }
               }
               else
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.enable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.enable();
                  }
               }
               break;
            case TYPE_LANDSCAPE:
               this.var_414 += param2;
               if(this.var_414 < 0)
               {
                  this.var_414 = this.var_885.length - 1;
               }
               if(this.var_414 >= this.var_885.length)
               {
                  this.var_414 = 0;
               }
               this.var_485 = 0;
               this.var_889 = 0;
               _loc7_ = this.var_885[this.var_414];
               for each(_loc10_ in this.var_183.landscapes.pattern)
               {
                  if(_loc10_.@id == _loc7_)
                  {
                     this.var_889 = _loc10_.children().length();
                  }
               }
               _loc4_ = _window.findChildByName("ctlg_landscape_color_prev") as IButtonWindow;
               _loc3_ = _window.findChildByName("ctlg_landscape_color_next") as IButtonWindow;
               if(this.var_889 < 2)
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.disable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.disable();
                  }
               }
               else
               {
                  if(_loc4_ != null)
                  {
                     _loc4_.enable();
                  }
                  if(_loc3_ != null)
                  {
                     _loc3_.enable();
                  }
               }
         }
      }
      
      private function changeColor(param1:String, param2:int) : void
      {
         switch(param1)
         {
            case const_229:
               this.var_415 += param2;
               if(this.var_415 < 0)
               {
                  if(this.var_887 > 0)
                  {
                     this.var_415 = this.var_887 - 1;
                  }
                  else
                  {
                     this.var_415 = 0;
                  }
               }
               if(this.var_415 >= this.var_887)
               {
                  this.var_415 = 0;
               }
               break;
            case const_230:
               this.var_486 += param2;
               if(this.var_486 < 0)
               {
                  if(this.var_888 > 0)
                  {
                     this.var_486 = this.var_888 - 1;
                  }
                  else
                  {
                     this.var_486 = 0;
                  }
               }
               if(this.var_486 >= this.var_888)
               {
                  this.var_486 = 0;
               }
               break;
            case TYPE_LANDSCAPE:
               this.var_485 += param2;
               if(this.var_485 < 0)
               {
                  if(this.var_889 > 0)
                  {
                     this.var_485 = this.var_889 - 1;
                  }
                  else
                  {
                     this.var_485 = 0;
                  }
               }
               if(this.var_485 >= this.var_889)
               {
                  this.var_485 = 0;
               }
         }
      }
   }
}
