package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_968:IAssetLoader;
      
      private var var_1965:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1965 = param1;
         this.var_968 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1965;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_968;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_968 != null)
            {
               if(!this.var_968.disposed)
               {
                  this.var_968.dispose();
                  this.var_968 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
