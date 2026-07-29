import DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean

def dynamicalProjection : Projection DynamicalEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem dynamical_projection_idempotent (x : DynamicalEndgameState) :
    dynamicalProjection.toFun (dynamicalProjection.toFun x) = dynamicalProjection.toFun x := by
  exact dynamicalProjection.idempotent x

end DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse