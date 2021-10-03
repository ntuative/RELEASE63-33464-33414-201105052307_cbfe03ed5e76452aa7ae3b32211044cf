package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2815:String;
      
      private var var_2450:int;
      
      private var var_2446:int;
      
      private var var_2550:String;
      
      private var var_2843:int;
      
      private var var_1906:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2815 = param1.readString();
         this.var_2450 = param1.readInteger();
         this.var_2446 = param1.readInteger();
         this.var_2550 = param1.readString();
         this.var_2843 = param1.readInteger();
         this.var_1906 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2815;
      }
      
      public function get unitPort() : int
      {
         return this.var_2450;
      }
      
      public function get worldId() : int
      {
         return this.var_2446;
      }
      
      public function get castLibs() : String
      {
         return this.var_2550;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2843;
      }
      
      public function get nodeId() : int
      {
         return this.var_1906;
      }
   }
}
