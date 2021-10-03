package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var var_614:QuestsList;
      
      private var var_510:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_355:QuestTracker;
      
      private var var_953:CampaignCompleted;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this._questEngine = param1;
         this.var_355 = new QuestTracker(this._questEngine);
         this.var_614 = new QuestsList(this._questEngine);
         this.var_510 = new QuestDetails(this._questEngine);
         this._questCompleted = new QuestCompleted(this._questEngine);
         this.var_953 = new CampaignCompleted(this._questEngine);
      }
      
      public function onToolbarClick() : void
      {
         this.var_614.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_614.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_355.onQuest(param1);
         this.var_510.onQuest(param1);
         this._questCompleted.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_355.onQuestCompleted(param1);
         this.var_510.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_355.onQuestCancelled();
         this.var_510.onQuestCancelled();
         this._questCompleted.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_355.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_614.onRoomExit();
         this.var_355.onRoomExit();
         this.var_510.onRoomExit();
         this.var_953.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_355.update(param1);
      }
      
      public function dispose() : void
      {
         this._questEngine = null;
         if(this.var_614)
         {
            this.var_614.dispose();
            this.var_614 = null;
         }
         if(this.var_355)
         {
            this.var_355.dispose();
            this.var_355 = null;
         }
         if(this.var_510)
         {
            this.var_510.dispose();
            this.var_510 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_953)
         {
            this.var_953.dispose();
            this.var_953 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._questEngine == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_614;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_510;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_355;
      }
      
      public function get campaignCompleted() : CampaignCompleted
      {
         return this.var_953;
      }
   }
}
