package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.ToggleStaffPickMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.utils.HabboWebTools;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_180:IWindowContainer;
      
      private var var_2976:int;
      
      private var var_373:RoomEventViewCtrl;
      
      private var var_265:Timer;
      
      private var var_182:RoomSettingsCtrl;
      
      private var var_264:RoomThumbnailCtrl;
      
      private var var_1262:TagRenderer;
      
      private var var_312:IWindowContainer;
      
      private var var_442:IWindowContainer;
      
      private var var_790:IWindowContainer;
      
      private var var_2591:IWindowContainer;
      
      private var var_2596:IWindowContainer;
      
      private var var_1493:IWindowContainer;
      
      private var var_891:ITextWindow;
      
      private var var_1222:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_986:ITextWindow;
      
      private var var_1497:ITextWindow;
      
      private var var_1221:ITextWindow;
      
      private var var_985:ITextWindow;
      
      private var var_1870:ITextWindow;
      
      private var var_266:IWindowContainer;
      
      private var var_989:IWindowContainer;
      
      private var var_1868:IWindowContainer;
      
      private var var_2595:ITextWindow;
      
      private var var_791:ITextWindow;
      
      private var var_2593:IWindow;
      
      private var var_1496:IContainerButtonWindow;
      
      private var var_1495:IContainerButtonWindow;
      
      private var var_1492:IContainerButtonWindow;
      
      private var var_1494:IContainerButtonWindow;
      
      private var var_1490:IContainerButtonWindow;
      
      private var var_1869:IButtonWindow;
      
      private var var_1871:IButtonWindow;
      
      private var var_1867:IButtonWindow;
      
      private var var_988:IWindowContainer;
      
      private var var_1491:ITextWindow;
      
      private var var_1219:ITextFieldWindow;
      
      private var _buttons:IWindowContainer;
      
      private var var_1220:IButtonWindow;
      
      private var var_987:IButtonWindow;
      
      private var var_2594:String;
      
      private var var_2592:String;
      
      private var var_443:Boolean = true;
      
      private const const_634:int = 75;
      
      private const const_476:int = 3;
      
      private const const_474:int = 45;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_373 = new RoomEventViewCtrl(this._navigator);
         this.var_182 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_264 = new RoomThumbnailCtrl(this._navigator);
         this.var_1262 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_182);
         this.var_265 = new Timer(6000,1);
         this.var_265.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this._navigator.toolbar)
         {
            this._navigator.toolbar.events.removeEventListener(HabboToolbarSetIconEvent.const_105,this.onToolbarIconState);
         }
         if(this.var_265)
         {
            this.var_265.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_265.reset();
            this.var_265 = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_265.reset();
         this.var_373.active = true;
         this.var_182.active = false;
         this.var_264.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_265.reset();
         this.var_182.load(param1);
         this.var_182.active = true;
         this.var_373.active = false;
         this.var_264.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_182.active = true;
         this.var_373.active = false;
         this.var_264.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_265.reset();
         this.var_182.active = false;
         this.var_373.active = false;
         this.var_264.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         if(this.var_443)
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_1202,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         }
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function open(param1:Boolean) : void
      {
         this.var_265.reset();
         this.var_373.active = false;
         this.var_182.active = false;
         this.var_264.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(this._navigator.data.enteredGuestRoom.flatId);
         }
         this.refresh();
         this._window.visible = true;
         if(this.var_443)
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_57,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         }
         this._window.parent.activate();
         this._window.activate();
         if(!param1)
         {
            this.var_265.start();
         }
      }
      
      public function toggle() : void
      {
         this.var_265.reset();
         this.var_373.active = false;
         this.var_182.active = false;
         this.var_264.active = false;
         this.refresh();
         if(this.var_443)
         {
            if(!this._window.visible)
            {
               this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_57,HabboToolbarIconEnum.ROOMINFO,this._window,false));
               this._window.parent.activate();
            }
            else
            {
               this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_482,HabboToolbarIconEnum.ROOMINFO,this._window,false));
            }
         }
         else
         {
            this._window.visible = !this._window.visible;
            this._window.x = this._window.desktop.width - this._window.width - this.const_476;
            this._window.y = this.const_634;
            if(this._window.visible)
            {
               this._window.activate();
            }
         }
      }
      
      private function refresh() : void
      {
         var _loc1_:int = 0;
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         if(this.var_443)
         {
            Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info","buttons_container"],0,2);
            this._window.height = Util.getLowestPoint(this._window);
            this._window.y = this._window.desktop.height - this._window.height - 5;
            Logger.log("MAIN: " + this.var_312.rectangle + ", " + this.var_266.rectangle + ", " + this._window.rectangle);
         }
         else
         {
            Util.moveChildrenToColumn(this.var_180,["room_info","event_info","embed_info","buttons_container"],0,2);
            this.var_180.height = Util.getLowestPoint(this.var_180);
            _loc1_ = this._window.desktop.height - this._window.height - this.const_474;
            if(this._window.y > _loc1_)
            {
               this._window.y = _loc1_ < 0 ? 0 : int(_loc1_);
            }
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_312);
         if(this.var_443)
         {
            this.var_312.findChildByName("close").visible = true;
         }
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_182.refresh(this.var_312);
         this.var_264.refresh(this.var_312);
         Util.moveChildrenToColumn(this.var_312,["room_details","room_buttons"],0,2);
         this.var_312.height = Util.getLowestPoint(this.var_312);
         this.var_312.visible = true;
         Logger.log("XORP: " + this.var_442.visible + ", " + this.var_1493.visible + ", " + this.var_790.visible + ", " + this.var_790.rectangle + ", " + this.var_312.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_266);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_373.refresh(this.var_266);
         if(Util.hasVisibleChildren(this.var_266) && !(this.var_182.active || this.var_264.active))
         {
            Util.moveChildrenToColumn(this.var_266,["event_details","event_buttons"],0,2);
            this.var_266.height = Util.getLowestPoint(this.var_266);
            this.var_266.visible = true;
         }
         else
         {
            this.var_266.visible = false;
         }
         Logger.log("EVENT: " + this.var_266.visible + ", " + this.var_266.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_182.active && !this.var_264.active && !this.var_373.active)
         {
            this.var_988.visible = true;
            this.var_1219.text = this.getEmbedData();
         }
         else
         {
            this.var_988.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this._buttons)
         {
            return;
         }
         if(this.var_182.active)
         {
            this._buttons.visible = false;
            return;
         }
         this._buttons.visible = true;
         if(this.var_1220)
         {
            if(this.var_2594 == "exit_homeroom")
            {
               this.var_1220.caption = "${navigator.homeroom}";
            }
            else
            {
               this.var_1220.caption = "${navigator.hotelview}";
            }
         }
         if(this.var_987)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_987.visible = _loc1_;
            if(this.var_2592 == "0")
            {
               this.var_987.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_987.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_182.active || this.var_264.active)
         {
            return;
         }
         this.var_891.text = param1.roomName;
         this.var_891.height = this.var_891.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_986.text = param1.description;
         this.var_1262.refreshTags(this.var_442,param1.tags);
         this.var_986.visible = false;
         if(param1.description != "")
         {
            this.var_986.height = this.var_986.textHeight + 5;
            this.var_986.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1495,"facebook_logo_small",_loc3_,null,0);
         this.var_1495.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this.var_1496,"thumb_up",_loc4_,null,0);
         this.var_1496.visible = _loc4_;
         this.var_985.visible = !_loc4_;
         this.var_1870.visible = !_loc4_;
         this.var_1870.text = "" + this._navigator.data.currentRoomRating;
         this.refreshStuffPick();
         this._navigator.refreshButton(this.var_442,"home",param2,null,0);
         this._navigator.refreshButton(this.var_442,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_442,["room_name","owner_name_cont","tags","room_desc","rating_cont","staff_pick_button"],this.var_891.y,0);
         this.var_442.visible = true;
         this.var_442.height = Util.getLowestPoint(this.var_442);
      }
      
      private function refreshStuffPick() : void
      {
         var _loc1_:IWindow = this.var_442.findChildByName("staff_pick_button");
         if(!this._navigator.data.roomPicker)
         {
            _loc1_.visible = false;
            return;
         }
         _loc1_.visible = true;
         _loc1_.caption = this._navigator.getText(!!this._navigator.data.currentRoomIsStaffPick ? "navigator.staffpicks.unpick" : "navigator.staffpicks.pick");
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_182.active || this.var_264.active)
         {
            return;
         }
         this.var_1222.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_1222.height = this.var_1222.textHeight + 5;
         this.var_1497.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1497.height = this.var_1497.textHeight + 5;
         Util.moveChildrenToColumn(this.var_790,["public_space_name","public_space_desc"],this.var_1222.y,0);
         this.var_790.visible = true;
         this.var_790.height = Math.max(86,Util.getLowestPoint(this.var_790));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_373.active)
         {
            return;
         }
         this.var_2595.text = param1.eventName;
         this.var_791.text = param1.eventDescription;
         this.var_1262.refreshTags(this.var_989,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_791.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_791.height = this.var_791.textHeight + 5;
            this.var_791.y = Util.getLowestPoint(this.var_989) + 2;
            this.var_791.visible = true;
         }
         this.var_989.visible = true;
         this.var_989.height = Util.getLowestPoint(this.var_989);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_182.active || this.var_264.active)
         {
            return;
         }
         this.var_1869.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1492.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this.var_1494.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1490.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1493.visible = Util.hasVisibleChildren(this.var_1493);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_373.active)
         {
            return;
         }
         this.var_1871.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1867.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1868.visible = Util.hasVisibleChildren(this.var_1868);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         if(this.var_443)
         {
            this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details"));
            this._window.setParamFlag(HabboWindowParam.const_63,false);
            this._window.setParamFlag(HabboWindowParam.const_1735,true);
         }
         else
         {
            this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details_framed"));
            this.var_180 = this._window.findChildByName("content") as IWindowContainer;
         }
         this._window.visible = false;
         this.var_312 = IWindowContainer(this.find("room_info"));
         this.var_442 = IWindowContainer(this.find("room_details"));
         this.var_790 = IWindowContainer(this.find("public_space_details"));
         this.var_2591 = IWindowContainer(this.find("owner_name_cont"));
         this.var_2596 = IWindowContainer(this.find("rating_cont"));
         this.var_1493 = IWindowContainer(this.find("room_buttons"));
         this.var_891 = ITextWindow(this.find("room_name"));
         this.var_1222 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_986 = ITextWindow(this.find("room_desc"));
         this.var_1497 = ITextWindow(this.find("public_space_desc"));
         this.var_1221 = ITextWindow(this.find("owner_caption"));
         this.var_985 = ITextWindow(this.find("rating_caption"));
         this.var_1870 = ITextWindow(this.find("rating_txt"));
         this.var_266 = IWindowContainer(this.find("event_info"));
         this.var_989 = IWindowContainer(this.find("event_details"));
         this.var_1868 = IWindowContainer(this.find("event_buttons"));
         this.var_2595 = ITextWindow(this.find("event_name"));
         this.var_791 = ITextWindow(this.find("event_desc"));
         this.var_1495 = IContainerButtonWindow(this.find("facebook_like_button"));
         this.var_1496 = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_2593 = this.find("staff_pick_button");
         this.var_1492 = IContainerButtonWindow(this.find("add_favourite_button"));
         this.var_1494 = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1490 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1869 = IButtonWindow(this.find("room_settings_button"));
         this.var_1871 = IButtonWindow(this.find("create_event_button"));
         this.var_1867 = IButtonWindow(this.find("edit_event_button"));
         this.var_988 = IWindowContainer(this.find("embed_info"));
         this.var_1491 = ITextWindow(this.find("embed_info_txt"));
         this.var_1219 = ITextFieldWindow(this.find("embed_src_txt"));
         this._buttons = IWindowContainer(this.find("buttons_container"));
         this.var_1220 = IButtonWindow(this.find("exit_room_button"));
         this.var_987 = IButtonWindow(this.find("zoom_button"));
         Util.setProcDirectly(this.var_1492,this.onAddFavouriteClick);
         Util.setProcDirectly(this.var_1494,this.onRemoveFavouriteClick);
         Util.setProcDirectly(this.var_1869,this.onRoomSettingsClick);
         Util.setProcDirectly(this.var_1490,this.onMakeHomeClick);
         Util.setProcDirectly(this.var_1871,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_1867,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_1219,this.onEmbedSrcClick);
         Util.setProcDirectly(this.var_1496,this.onThumbUp);
         Util.setProcDirectly(this.var_2593,this.onStaffPick);
         Util.setProcDirectly(this.var_1495,this.onFacebookLike);
         Util.setProcDirectly(this.var_987,this.onZoomClick);
         Util.setProcDirectly(this.var_1220,this.onExitRoomClick);
         this._navigator.refreshButton(this.var_1492,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1494,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1490,"home",true,null,0);
         if(this.var_443)
         {
            this._window.findChildByName("close").procedure = this.onCloseButtonClick;
         }
         else
         {
            this._window.findChildByTag("close").procedure = this.onCloseButtonClick;
         }
         Util.setProcDirectly(this.var_312,this.onHover);
         Util.setProcDirectly(this.var_266,this.onHover);
         this.var_1221.width = this.var_1221.textWidth;
         Util.moveChildrenToRow(this.var_2591,["owner_caption","owner_name"],this.var_1221.x,this.var_1221.y,3);
         this.var_985.width = this.var_985.textWidth;
         Util.moveChildrenToRow(this.var_2596,["rating_caption","rating_txt"],this.var_985.x,this.var_985.y,3);
         this.var_1491.height = this.var_1491.textHeight + 5;
         Util.moveChildrenToColumn(this.var_988,["embed_info_txt","embed_src_txt"],this.var_1491.y,2);
         this.var_988.height = Util.getLowestPoint(this.var_988) + 5;
         this.var_2976 = this._window.y + this._window.height;
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!this._navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onStaffPick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new ToggleStaffPickMessageComposer(this._navigator.data.enteredGuestRoom.flatId,this._navigator.data.currentRoomIsStaffPick));
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function onFacebookLike(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.var_1219.setSelection(0,this.var_1219.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:HabboToolbarEvent = new HabboToolbarEvent(HabboToolbarEvent.const_37);
         _loc3_.iconId = HabboToolbarIconEnum.ZOOM;
         _loc3_.iconName = "ZOOM";
         this._navigator.toolbar.events.dispatchEvent(_loc3_);
      }
      
      private function onExitRoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:HabboToolbarEvent = new HabboToolbarEvent(HabboToolbarEvent.const_37);
         _loc3_.iconId = HabboToolbarIconEnum.EXITROOM;
         _loc3_.iconName = "EXITROOM";
         this._navigator.toolbar.events.dispatchEvent(_loc3_);
      }
      
      private function onToolbarIconState(param1:HabboToolbarSetIconEvent) : void
      {
         if(param1.type != HabboToolbarSetIconEvent.const_105)
         {
            return;
         }
         switch(param1.iconId)
         {
            case HabboToolbarIconEnum.ZOOM:
               this.var_2592 = param1.iconState;
               this.refreshButtons();
               break;
            case HabboToolbarIconEnum.EXITROOM:
               this.var_2594 = param1.iconState;
               this.refreshButtons();
         }
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         this.var_265.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         if(this.var_443)
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_482,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         }
         else
         {
            this._window.visible = false;
         }
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
      
      public function registerToolbarEvents() : void
      {
         if(this._navigator.toolbar)
         {
            this._navigator.toolbar.events.addEventListener(HabboToolbarSetIconEvent.const_105,this.onToolbarIconState);
         }
      }
      
      public function handleToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type != HabboToolbarEvent.const_37)
         {
            return;
         }
         switch(param1.iconId)
         {
            case HabboToolbarIconEnum.MEMENU:
               if(this.useToolbar)
               {
                  this.close();
               }
               break;
            case HabboToolbarIconEnum.ROOMINFO:
               this.toggle();
         }
      }
      
      public function configure() : void
      {
         if(this._navigator.configuration)
         {
            this.var_443 = this._navigator.configuration.getKey("roominfo.widget.enabled") != "1";
         }
      }
      
      public function get useToolbar() : Boolean
      {
         return this.var_443;
      }
   }
}
