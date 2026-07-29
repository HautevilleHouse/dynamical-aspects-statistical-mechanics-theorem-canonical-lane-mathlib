import HautevilleHouse.DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean

structure PhaseTransitionPackage where
  orderParameter : ℝ → ℝ
  criticalTemperature : ℝ
  symmetryBreaking : Prop
  universalityClass : String

structure PhaseTransitionEvidence (P : PhaseTransitionPackage) where
  symmetryBreakingClosed : P.symmetryBreaking

def PhaseTransitionClosed (P : PhaseTransitionPackage) : Prop :=
  P.symmetryBreaking

theorem phase_transition_closed_from_evidence (P : PhaseTransitionPackage)
    (E : PhaseTransitionEvidence P) : PhaseTransitionClosed P := by
  exact E.symmetryBreakingClosed

end DynamicalAspectsStatisticalMechanicsTheoremCanonicalLaneLean
end HautevilleHouse