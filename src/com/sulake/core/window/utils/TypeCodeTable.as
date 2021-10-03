package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_796;
         param1["bitmap"] = const_880;
         param1["border"] = const_709;
         param1["border_notify"] = const_1622;
         param1["button"] = const_480;
         param1["button_thick"] = const_951;
         param1["button_icon"] = const_1553;
         param1["button_group_left"] = const_750;
         param1["button_group_center"] = const_924;
         param1["button_group_right"] = const_957;
         param1["canvas"] = const_939;
         param1["checkbox"] = const_698;
         param1["closebutton"] = const_1199;
         param1["container"] = const_438;
         param1["container_button"] = const_852;
         param1["display_object_wrapper"] = const_716;
         param1["dropmenu"] = const_565;
         param1["dropmenu_item"] = const_603;
         param1["frame"] = const_410;
         param1["frame_notify"] = const_1769;
         param1["header"] = const_787;
         param1["html"] = const_1211;
         param1["icon"] = const_1193;
         param1["itemgrid"] = const_1265;
         param1["itemgrid_horizontal"] = const_471;
         param1["itemgrid_vertical"] = const_696;
         param1["itemlist"] = const_1088;
         param1["itemlist_horizontal"] = const_449;
         param1["itemlist_vertical"] = const_385;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1657;
         param1["menu"] = const_1741;
         param1["menu_item"] = const_1595;
         param1["submenu"] = const_1213;
         param1["minimizebox"] = const_1819;
         param1["notify"] = const_1731;
         param1["null"] = const_963;
         param1["password"] = const_878;
         param1["radiobutton"] = const_898;
         param1["region"] = const_541;
         param1["restorebox"] = const_1546;
         param1["scaler"] = const_552;
         param1["scaler_horizontal"] = const_1692;
         param1["scaler_vertical"] = const_1812;
         param1["scrollbar_horizontal"] = const_578;
         param1["scrollbar_vertical"] = const_976;
         param1["scrollbar_slider_button_up"] = const_1203;
         param1["scrollbar_slider_button_down"] = const_1102;
         param1["scrollbar_slider_button_left"] = const_1150;
         param1["scrollbar_slider_button_right"] = const_1122;
         param1["scrollbar_slider_bar_horizontal"] = const_1278;
         param1["scrollbar_slider_bar_vertical"] = const_1307;
         param1["scrollbar_slider_track_horizontal"] = const_1283;
         param1["scrollbar_slider_track_vertical"] = const_1302;
         param1["scrollable_itemlist"] = const_1798;
         param1["scrollable_itemlist_vertical"] = const_553;
         param1["scrollable_itemlist_horizontal"] = const_1125;
         param1["selector"] = const_743;
         param1["selector_list"] = const_798;
         param1["submenu"] = const_1213;
         param1["tab_button"] = const_956;
         param1["tab_container_button"] = const_1267;
         param1["tab_context"] = const_402;
         param1["tab_content"] = const_1294;
         param1["tab_selector"] = const_828;
         param1["text"] = const_567;
         param1["input"] = const_751;
         param1["toolbar"] = const_1652;
         param1["tooltip"] = const_411;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
