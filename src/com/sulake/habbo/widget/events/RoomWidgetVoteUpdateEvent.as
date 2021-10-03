package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_164:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_153:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1216:String;
      
      private var var_1443:Array;
      
      private var var_1244:Array;
      
      private var var_2036:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1216 = param2;
         this.var_1443 = param3;
         this.var_1244 = param4;
         if(this.var_1244 == null)
         {
            this.var_1244 = [];
         }
         this.var_2036 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1216;
      }
      
      public function get choices() : Array
      {
         return this.var_1443.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1244.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_2036;
      }
   }
}
