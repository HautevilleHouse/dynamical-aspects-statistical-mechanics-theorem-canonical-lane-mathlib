import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean

structure DynamicalSystem where
  stateSpace : Type u
  timeMonoid : Type v
  evolution : timeMonoid → stateSpace → stateSpace
  semigroupProperty : ∀ t s x, evolution (t + s) x = evolution t (evolution s x)
  identityProperty : ∀ x, evolution 0 x = x

def DynamicalWitnessClosed (D : DynamicalSystem) : Prop :=
  D.semigroupProperty ∧ D.identityProperty

theorem dynamical_witness_closed_from_system (D : DynamicalSystem) : DynamicalWitnessClosed D :=
  And.intro D.semigroupProperty D.identityProperty

end DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse