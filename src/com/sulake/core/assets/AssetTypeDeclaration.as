package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2650:String;
      
      private var var_2649:Class;
      
      private var var_2648:Class;
      
      private var var_1903:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2650 = param1;
         this.var_2649 = param2;
         this.var_2648 = param3;
         if(rest == null)
         {
            this.var_1903 = new Array();
         }
         else
         {
            this.var_1903 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2650;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2649;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2648;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1903;
      }
   }
}
