package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1347:int = 80;
       
      
      private var var_488:Map;
      
      private var var_891:String = "";
      
      private var var_1376:Array;
      
      public function UserRegistry()
      {
         this.var_488 = new Map();
         this.var_1376 = new Array();
         super();
      }
      
      public function getRegistry() : Map
      {
         return this.var_488;
      }
      
      public function registerRoom(param1:String) : void
      {
         this.var_891 = param1;
         if(this.var_891 != "")
         {
            this.addRoomNameForMissing();
         }
      }
      
      public function unregisterRoom() : void
      {
         this.var_891 = "";
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(this.var_488.getValue(param1) != null)
         {
            this.var_488.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,this.var_891);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && this.var_891 == "")
         {
            this.var_1376.push(param1);
         }
         this.var_488.add(param1,_loc4_);
         this.purgeUserIndex();
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(this.var_488.length > const_1347)
         {
            _loc1_ = this.var_488.getKey(0);
            this.var_488.remove(_loc1_);
         }
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(this.var_1376.length > 0)
         {
            _loc1_ = this.var_488.getValue(this.var_1376.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = this.var_891;
            }
         }
      }
   }
}
