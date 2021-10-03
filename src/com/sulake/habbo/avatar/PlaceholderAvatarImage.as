package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_806:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1088)
         {
            _structure = null;
            _assets = null;
            var_281 = null;
            var_287 = null;
            var_641 = null;
            var_575 = null;
            var_334 = null;
            if(!var_1349 && var_45)
            {
               var_45.dispose();
            }
            var_45 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_767 = null;
            var_1088 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_806[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_806[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_427:
               switch(_loc3_)
               {
                  case AvatarAction.const_922:
                  case AvatarAction.const_477:
                  case AvatarAction.const_393:
                  case AvatarAction.const_778:
                  case AvatarAction.const_448:
                  case AvatarAction.const_810:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_366:
            case AvatarAction.const_903:
            case AvatarAction.const_258:
            case AvatarAction.const_876:
            case AvatarAction.const_854:
            case AvatarAction.const_966:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
