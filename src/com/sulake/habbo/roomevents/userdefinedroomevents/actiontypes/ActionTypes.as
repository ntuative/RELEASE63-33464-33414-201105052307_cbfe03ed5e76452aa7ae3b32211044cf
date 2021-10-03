package com.sulake.habbo.roomevents.userdefinedroomevents.actiontypes
{
   import com.sulake.habbo.communication.messages.incoming.userdefinedroomevents.ActionDefinition;
   import com.sulake.habbo.communication.messages.incoming.userdefinedroomevents.Triggerable;
   import com.sulake.habbo.roomevents.userdefinedroomevents.Element;
   import com.sulake.habbo.roomevents.userdefinedroomevents.ElementTypeHolder;
   
   public class ActionTypes implements ElementTypeHolder
   {
       
      
      private var var_132:Array;
      
      public function ActionTypes()
      {
         this.var_132 = new Array();
         super();
         this.var_132.push(new ToggleFurniState());
         this.var_132.push(new Reset());
         this.var_132.push(new SetFurniStateTo());
         this.var_132.push(new MoveFurni());
         this.var_132.push(new GiveScore());
         this.var_132.push(new Chat());
         this.var_132.push(new Teleport());
         this.var_132.push(new JoinTeam());
         this.var_132.push(new LeaveTeam());
         this.var_132.push(new Chase());
         this.var_132.push(new Flee());
         this.var_132.push(new MoveToDirection());
         this.var_132.push(new GiveScoreToPredefinedTeam());
         this.var_132.push(new ToggleToRandomState());
         this.var_132.push(new MoveFurniTo());
      }
      
      public function get types() : Array
      {
         return this.var_132;
      }
      
      public function getByCode(param1:int) : ActionType
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_132)
         {
            if(_loc2_.code == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function getElementByCode(param1:int) : Element
      {
         return this.getByCode(param1);
      }
      
      public function acceptTriggerable(param1:Triggerable) : Boolean
      {
         return param1 as ActionDefinition != null;
      }
      
      public function getKey() : String
      {
         return "action";
      }
   }
}
