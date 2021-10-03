package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_218;
         param1["bound_to_parent_rect"] = const_106;
         param1["child_window"] = const_1293;
         param1["embedded_controller"] = const_1115;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_31;
         param1["internal_event_handling"] = const_905;
         param1["mouse_dragging_target"] = const_248;
         param1["mouse_dragging_trigger"] = const_404;
         param1["mouse_scaling_target"] = const_345;
         param1["mouse_scaling_trigger"] = const_503;
         param1["horizontal_mouse_scaling_trigger"] = const_253;
         param1["vertical_mouse_scaling_trigger"] = const_261;
         param1["observe_parent_input_events"] = const_1186;
         param1["optimize_region_to_layout_size"] = const_569;
         param1["parent_window"] = const_1218;
         param1["relative_horizontal_scale_center"] = const_216;
         param1["relative_horizontal_scale_fixed"] = const_148;
         param1["relative_horizontal_scale_move"] = const_442;
         param1["relative_horizontal_scale_strech"] = const_418;
         param1["relative_scale_center"] = const_1244;
         param1["relative_scale_fixed"] = const_896;
         param1["relative_scale_move"] = const_1250;
         param1["relative_scale_strech"] = const_1282;
         param1["relative_vertical_scale_center"] = const_202;
         param1["relative_vertical_scale_fixed"] = const_147;
         param1["relative_vertical_scale_move"] = const_290;
         param1["relative_vertical_scale_strech"] = const_317;
         param1["on_resize_align_left"] = const_705;
         param1["on_resize_align_right"] = const_531;
         param1["on_resize_align_center"] = const_533;
         param1["on_resize_align_top"] = const_908;
         param1["on_resize_align_bottom"] = const_618;
         param1["on_resize_align_middle"] = const_580;
         param1["on_accommodate_align_left"] = const_1230;
         param1["on_accommodate_align_right"] = const_494;
         param1["on_accommodate_align_center"] = const_911;
         param1["on_accommodate_align_top"] = const_1177;
         param1["on_accommodate_align_bottom"] = const_586;
         param1["on_accommodate_align_middle"] = const_923;
         param1["route_input_events_to_parent"] = const_626;
         param1["use_parent_graphic_context"] = const_34;
         param1["draggable_with_mouse"] = const_1158;
         param1["scalable_with_mouse"] = const_1144;
         param1["reflect_horizontal_resize_to_parent"] = const_538;
         param1["reflect_vertical_resize_to_parent"] = const_473;
         param1["reflect_resize_to_parent"] = const_304;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1270;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
