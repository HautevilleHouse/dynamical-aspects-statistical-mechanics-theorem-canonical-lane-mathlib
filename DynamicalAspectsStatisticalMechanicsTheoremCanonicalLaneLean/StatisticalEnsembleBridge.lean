import DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean.DynamicalSystemsModel

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean

structure StatisticalEnsemble where
  stateSpace : Type u
  probabilityMeasure : stateSpace → ℝ
  totalMassOne : ∑' x : stateSpace, probabilityMeasure x = 1
  nonnegative : ∀ x, probabilityMeasure x ≥ 0

def ensembleClosed (E : StatisticalEnsemble) : Prop :=
  E.totalMassOne ∧ E.nonnegative

theorem ensemble_closed_from_evidence (E : StatisticalEnsemble) : ensembleClosed E :=
  And.intro E.totalMassOne E.nonnegative

theorem bridge_from_ensemble (A : AdmissibleClass) (E : StatisticalEnsemble) : ensembleClosed E :=
  ensemble_closed_from_evidence E

end DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse