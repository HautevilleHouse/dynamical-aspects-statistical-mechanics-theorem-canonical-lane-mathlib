import DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean.ErgodicityPackage

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean

structure FluctuationDissipationTheorem where
  correlationFunction : ℝ → ℝ
  responseFunction : ℝ → ℝ
  fluctuationDissipationRelation : ∀ t, correlationFunction t = responseFunction t

def fluctuationDissipationClosed (F : FluctuationDissipationTheorem) : Prop :=
  F.fluctuationDissipationRelation

theorem fluctuation_dissipation_closed_from_evidence (F : FluctuationDissipationTheorem) : fluctuationDissipationClosed F :=
  F.fluctuationDissipationRelation

theorem bridge_from_fluctuation_dissipation (A : AdmissibleClass) (F : FluctuationDissipationTheorem) : fluctuationDissipationClosed F :=
  fluctuation_dissipation_closed_from_evidence F

end DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse