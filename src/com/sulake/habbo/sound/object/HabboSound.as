package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1181:Sound = null;
      
      private var var_410:SoundChannel = null;
      
      private var var_533:Number;
      
      private var _complete:Boolean;
      
      public function HabboSound(param1:Sound)
      {
         super();
         this.var_1181 = param1;
         this.var_1181.addEventListener(Event.COMPLETE,this.onComplete);
         this.var_533 = 1;
         this._complete = false;
      }
      
      public function play(param1:Number = 0.0) : Boolean
      {
         this._complete = false;
         this.var_410 = this.var_1181.play(0);
         this.volume = this.var_533;
         return true;
      }
      
      public function stop() : Boolean
      {
         this.var_410.stop();
         return true;
      }
      
      public function get volume() : Number
      {
         return this.var_533;
      }
      
      public function set volume(param1:Number) : void
      {
         this.var_533 = param1;
         if(this.var_410 != null)
         {
            this.var_410.soundTransform = new SoundTransform(this.var_533);
         }
      }
      
      public function get position() : Number
      {
         return this.var_410.position;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get length() : Number
      {
         return this.var_1181.length;
      }
      
      public function get ready() : Boolean
      {
         return !this.var_1181.isBuffering;
      }
      
      public function get finished() : Boolean
      {
         return !this._complete;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return 0;
      }
      
      public function set fadeOutSeconds(param1:Number) : void
      {
      }
      
      public function get fadeInSeconds() : Number
      {
         return 0;
      }
      
      public function set fadeInSeconds(param1:Number) : void
      {
      }
      
      private function onComplete(param1:Event) : void
      {
         this._complete = true;
      }
   }
}
