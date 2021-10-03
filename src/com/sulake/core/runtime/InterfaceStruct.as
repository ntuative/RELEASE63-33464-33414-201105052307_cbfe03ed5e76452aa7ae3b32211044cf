package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1382:IID;
      
      private var var_1665:String;
      
      private var var_103:IUnknown;
      
      private var var_722:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1382 = param1;
         this.var_1665 = getQualifiedClassName(this.var_1382);
         this.var_103 = param2;
         this.var_722 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1382;
      }
      
      public function get iis() : String
      {
         return this.var_1665;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_103;
      }
      
      public function get references() : uint
      {
         return this.var_722;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_103 == null;
      }
      
      public function dispose() : void
      {
         this.var_1382 = null;
         this.var_1665 = null;
         this.var_103 = null;
         this.var_722 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_722;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_722) : uint(0);
      }
   }
}
