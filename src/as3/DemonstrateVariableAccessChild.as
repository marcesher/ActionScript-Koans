package as3
{

	public class DemonstrateVariableAccessChild extends DemonstrateVariableAccess
	{
		public function DemonstrateVariableAccessChild()
		{
		}

		public function getProtectedVariable() : String
		{
			return aProtectedVar
		}

		public function getParentPrivateVariable() : String
		{
			//uncomment to see the compiler error
			//return aPrivateVar
			return "Can't see a parent's private variables!"
		}
	}
}
