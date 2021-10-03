package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1044:BigInteger;
      
      private var var_2175:BigInteger;
      
      private var var_1646:BigInteger;
      
      private var var_2174:BigInteger;
      
      private var var_1365:BigInteger;
      
      private var var_1645:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1365 = param1;
         this.var_1645 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1365.toString() + ",generator: " + this.var_1645.toString() + ",secret: " + param1);
         this.var_1044 = new BigInteger();
         this.var_1044.fromRadix(param1,param2);
         this.var_2175 = this.var_1645.modPow(this.var_1044,this.var_1365);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1646 = new BigInteger();
         this.var_1646.fromRadix(param1,param2);
         this.var_2174 = this.var_1646.modPow(this.var_1044,this.var_1365);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2175.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2174.toRadix(param1);
      }
   }
}
