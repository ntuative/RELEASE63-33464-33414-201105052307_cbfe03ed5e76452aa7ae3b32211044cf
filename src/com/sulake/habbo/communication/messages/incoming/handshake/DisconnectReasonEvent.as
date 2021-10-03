package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2093:int = 0;
      
      public static const const_1615:int = 1;
      
      public static const const_1674:int = 2;
      
      public static const const_1963:int = 3;
      
      public static const const_2019:int = 4;
      
      public static const const_1916:int = 5;
      
      public static const const_1736:int = 10;
      
      public static const const_2070:int = 11;
      
      public static const const_2017:int = 12;
      
      public static const const_1962:int = 13;
      
      public static const const_2088:int = 16;
      
      public static const const_2054:int = 17;
      
      public static const const_1980:int = 18;
      
      public static const const_2060:int = 19;
      
      public static const const_2042:int = 20;
      
      public static const const_2085:int = 22;
      
      public static const const_1973:int = 23;
      
      public static const const_2036:int = 24;
      
      public static const const_2035:int = 25;
      
      public static const const_2083:int = 26;
      
      public static const const_2122:int = 27;
      
      public static const const_2095:int = 28;
      
      public static const const_2003:int = 29;
      
      public static const const_2098:int = 100;
      
      public static const const_1923:int = 101;
      
      public static const const_2067:int = 102;
      
      public static const const_1985:int = 103;
      
      public static const const_2066:int = 104;
      
      public static const const_2039:int = 105;
      
      public static const const_1965:int = 106;
      
      public static const const_1932:int = 107;
      
      public static const const_1939:int = 108;
      
      public static const const_1926:int = 109;
      
      public static const const_2030:int = 110;
      
      public static const const_2112:int = 111;
      
      public static const const_2032:int = 112;
      
      public static const const_2037:int = 113;
      
      public static const const_1974:int = 114;
      
      public static const const_1925:int = 115;
      
      public static const const_1920:int = 116;
      
      public static const const_1995:int = 117;
      
      public static const const_1984:int = 118;
      
      public static const const_2069:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1615:
            case const_1736:
               return "banned";
            case const_1674:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
