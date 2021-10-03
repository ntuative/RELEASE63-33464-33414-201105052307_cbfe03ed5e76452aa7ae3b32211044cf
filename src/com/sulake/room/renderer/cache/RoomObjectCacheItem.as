package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_459:RoomObjectLocationCacheItem = null;
      
      private var var_203:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_459 = new RoomObjectLocationCacheItem(param1);
         this.var_203 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_459;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_203;
      }
      
      public function dispose() : void
      {
         if(this.var_459 != null)
         {
            this.var_459.dispose();
            this.var_459 = null;
         }
         if(this.var_203 != null)
         {
            this.var_203.dispose();
            this.var_203 = null;
         }
      }
   }
}
