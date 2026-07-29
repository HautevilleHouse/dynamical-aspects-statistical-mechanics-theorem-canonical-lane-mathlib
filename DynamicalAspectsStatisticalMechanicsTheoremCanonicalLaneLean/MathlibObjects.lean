import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean

structure DynamicalAdmittedObject where
  system : Type u
  phaseSpace : TopologicalSpace system
  invariantMeasure : Prop
  ergodicDecomposition : Prop
  dynamicalWitnessClosed : Prop
  conclusion : dynamicalWitnessClosed

def DynamicalWitnessClosed (O : DynamicalAdmittedObject) : Prop :=
  O.dynamicalWitnessClosed

end DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse