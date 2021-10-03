package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1912:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_216:MsgWithRequestId;
      
      private var var_698:RoomEventData;
      
      private var var_2916:Boolean;
      
      private var var_2914:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2208:int;
      
      private var var_284:GuestRoomData;
      
      private var var_1078:PublicRoomShortData;
      
      private var var_2912:int;
      
      private var var_2917:Boolean;
      
      private var var_2910:int;
      
      private var var_2909:Boolean;
      
      private var var_2101:int;
      
      private var var_2918:Boolean;
      
      private var var_1403:Array;
      
      private var var_1622:Array;
      
      private var var_2915:int;
      
      private var var_1623:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1331:Boolean;
      
      private var var_2911:int;
      
      private var var_2908:Boolean;
      
      private var var_2913:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1403 = new Array();
         this.var_1622 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return this.var_284 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_284 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_1078 = null;
         this.var_284 = null;
         this._currentRoomOwner = false;
         if(param1.privateRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_1078 = param1.publicSpace;
            this.var_698 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_698 != null)
         {
            this.var_698.dispose();
            this.var_698 = null;
         }
         if(this.var_1078 != null)
         {
            this.var_1078.dispose();
            this.var_1078 = null;
         }
         if(this.var_284 != null)
         {
            this.var_284.dispose();
            this.var_284 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_284 != null)
         {
            this.var_284.dispose();
         }
         this.var_284 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_698 != null)
         {
            this.var_698.dispose();
         }
         this.var_698 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_216 != null && this.var_216 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_216 != null && this.var_216 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_216 != null && this.var_216 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_216 = param1;
         this.var_1331 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_216 = param1;
         this.var_1331 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_216 = param1;
         this.var_1331 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_216 == null)
         {
            return;
         }
         this.var_216.dispose();
         this.var_216 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_216 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_216 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_216 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_698;
      }
      
      public function get avatarId() : int
      {
         return this.var_2208;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2916;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2914;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_284;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_1078;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2917;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2910;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_2101;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2909;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2911;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2912;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2918;
      }
      
      public function get adIndex() : int
      {
         return this.var_2913;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2908;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2208 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2910 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2917 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2916 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2914 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2909 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_2101 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2911 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2912 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2918 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2913 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2908 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1403 = param1;
         this.var_1622 = new Array();
         for each(_loc2_ in this.var_1403)
         {
            if(_loc2_.visible)
            {
               this.var_1622.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1403;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1622;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2915 = param1.limit;
         this.var_1623 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1623 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_284.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_284 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_284.flatId;
         return this.var_2101 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1623 >= this.var_2915;
      }
      
      public function startLoading() : void
      {
         this.var_1331 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1331;
      }
   }
}
