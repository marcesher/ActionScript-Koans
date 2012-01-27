package as3
{

	public class DemonstrateVariableAccessPackage
	{
		public function DemonstrateVariableAccessPackage()
		{
		}

		//in AS3, 'internal' variables are like 'protected' access in Java
		public function getInternalVariableFromNeighbor() : String
		{
			return new DemonstrateVariableAccess().anInternalVar
		}

		//in AS3, 'protected' variables are only visible in a Class's inheritance tree... Java has no equivalent
		public function getProtectedVariableFromNeighbor() : String
		{
			return "can't see a package-level object's protected variables!"
		}
	}
}
