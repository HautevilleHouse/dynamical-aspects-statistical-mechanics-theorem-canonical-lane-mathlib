import HautevilleHouse.DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean

structure GibbsMeasurePackage where
  stateSpace : Type u
  hamiltonian : (stateSpace → ℝ) → ℝ
  inverseTemperature : ℝ
  measure : Type v
  isGibbs : Prop

structure GibbsMeasureEvidence (P : GibbsMeasurePackage) where
  isGibbsClosed : P.isGibbs

def GibbsMeasureClosed (P : GibbsMeasurePackage) : Prop :=
  P.isGibbs

theorem gibbs_measure_closed_from_evidence (P : GibbsMeasurePackage)
    (E : GibbsMeasureEvidence P) : GibbsMeasureClosed P := by
  exact E.isGibbsClosed

end DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse